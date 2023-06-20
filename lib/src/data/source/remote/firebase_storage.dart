import 'dart:convert';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class Folder {
  late String name;
  late String fullPath = '';
  late int depth;
  late Folder? parent;
  List<Folder> subFolders = [];
  Folder({
    this.name = '',
    this.fullPath = '',
    this.depth = 0,
    this.parent,
  });
  factory Folder.parent({required String parentPullPath}) {
    return Folder(name: 'parentName', fullPath: parentPullPath, depth: 0);
  }

  factory Folder.root() {
    return Folder(name: 'root', fullPath: 'root', depth: 0);
  }

  bool get isFolder => !fullPath.contains('.');
  bool get isFile => fullPath.contains('.');

  Folder get findRoot {
    if (parent == null) {
      return this;
    }
    while (parent != null) {
      return parent!.findRoot;
    }
    return this;
  }

  List<String> get folderNames => findWithDepth<String>(
      targetDepth: 1, checker: (folder) => folder.isFolder);

  List<String> get fileNames =>
      findWithDepth(targetDepth: 1, checker: (folder) => folder.isFile);

  List<Folder> get folders => findWithDepth(
      targetDepth: 1, checker: (folder) => folder.isFolder, returnFolder: true);

  List<Folder> get files => findWithDepth(
      targetDepth: 1, checker: (folder) => folder.isFile, returnFolder: true);

  List<T> findWithDepth<T>(
      {required int targetDepth,
      required Function(Folder) checker,
      bool returnFolder = false}) {
    late List<T> foldersWithDepth = [];
    void traverseFolders(Folder currentFolder) {
      if (currentFolder.depth == targetDepth && checker(currentFolder)) {
        if (returnFolder) {
          foldersWithDepth.add(currentFolder as T);
        } else {
          foldersWithDepth.add(currentFolder.name as T);
        }
      }

      for (final subFolder in currentFolder.subFolders) {
        traverseFolders(subFolder);
      }
    }

    traverseFolders(this);
    return foldersWithDepth;
  }

  @override
  String toString() {
    return 'Folder{name: $name, fullPath: $fullPath, depth: $depth, subFolders: $subFolders}';
  }
}

typedef JsonToObj<T> = T Function(Map<String, dynamic> json);

class FireStorage {
  final FirebaseStorage storage;
  FireStorage(this.storage);

  Future<Folder?> listFoldersWithHierarchy({
    required Folder folder,
    required String fullPath,
    int depth = 0,
  }) async {
    final result = await storage.ref().child(fullPath).listAll();
    final List<Reference> references = [...result.items, ...result.prefixes];
    if (references.isEmpty) {
      return null;
    }
    debugPrint('-----------listFolders--------------');
    debugPrint('references : ${references.map((e) => e.name).toList()}');
    final subFolders = await _buildFolderHierarchy(folder, references, depth);
    folder.subFolders = subFolders?.subFolders ?? [];
    return folder;
  }

  Future<Folder?> _buildFolderHierarchy(
      Folder folder, List<Reference> references, int depth) async {
    //market / dev
    final rootFolder = folder;
    Folder? currentFolder;
    for (final reference in references) {
      final currentName = reference.name;
      //dev
      final fullPath = reference.fullPath;
      if (fullPath.contains('.')) {
        currentFolder = Folder(
          name: currentName,
          parent: folder,
          fullPath: fullPath,
          depth: depth + 1,
        );
      } else {
        currentFolder = Folder(
          name: currentName,
          parent: folder,
          fullPath: fullPath,
          depth: depth + 1,
        );
        currentFolder = await listFoldersWithHierarchy(
          folder: currentFolder,
          fullPath: fullPath,
          depth: depth + 1,
        );
      }
      if (currentFolder != null) {
        try {
          rootFolder.subFolders.add(currentFolder);
        } catch (e) {
          print(e);
        }
        debugPrint('add subFolders : ${currentFolder.fullPath}');
      } else {
        print("empty");
      }
    }
    return rootFolder;
  }

  Future<List<String>> listFolders(String path) async {
    final result = await storage.ref().child(path).listAll();
    final folders = result.prefixes.map((folder) => folder.fullPath).toList();
    folders.forEach((folder) {
      print(folder);
    });
    return folders;
  }

  Future<ListResult> listFiles(String path) async {
    final result = await storage.ref().child(path).listAll();
    result.items.forEach((element) {
      print(element.fullPath);
    });
    return result;
  }

  // Future<void> removeFile(String path, {bool backup = true}) async {
  //   await storage.ref().child(path).delete();
  // }

  // 上傳JSON文件
  Future<String> uploadJson(Map<String, dynamic> json, String fileName) async {
    String jsonString = const JsonEncoder.withIndent('  ').convert(json as Map);
    try {
      final List<int> utf8Bytes = utf8.encode(jsonString);
      final Uint8List uint8List = Uint8List.fromList(utf8Bytes);
      final Reference firebaseStorageRef = storage.ref().child(fileName);
      final newCustomMetadata = SettableMetadata(
        contentType: 'application/json; charset=utf-8',
      );
      UploadTask uploadTask =
          firebaseStorageRef.putString(jsonString, metadata: newCustomMetadata);
      TaskSnapshot taskSnapshot = await uploadTask;
      final uri = await taskSnapshot.ref.getDownloadURL();
      return uri;
    } catch (e) {
      print(e.toString());
      return '';
    }
  }

// 下載JSON文件
  Future<T?> loadJson<T>(String path, JsonToObj<T> jsonToObj) async {
    try {
      Uint8List? bytes;
      try {
        bytes = await storage.ref(path).getData();
        String jsonString = utf8.decode(bytes!);
        debugPrint('Load firebase path : $path ');
        debugPrint('Load firebase data : $bytes ');
      } catch (e) {
        debugPrint('Load firebase path : $path ');
        debugPrint('Load firebase json error : $e ');
        return null;
      }
      String jsonString = utf8.decode(bytes!);
      final Map<String, dynamic> json = jsonDecode(jsonString);
      return jsonToObj(json);
    } catch (e) {
      debugPrint('Load firebase path : $path ');
      debugPrint('Load firebase json error : $e ');
      return null;
    }
  }
}
