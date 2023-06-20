import 'package:firebase_storage/firebase_storage.dart';
import 'remote/firebase_storage.dart';

abstract class FirebaseDataRepository {
  Future<Folder?> listFoldersWithHierarchy({
    required Folder folder,
    required String fullPath,
    int depth = 0,
  });
  Future<List<String>> listFolders(String path);

  Future<ListResult> listFiles(String path);

  Future<String> uploadJson(Map<String, dynamic> json, String fileName);

  Future<T?> loadJson<T>(String path, JsonToObj<T> jsonToObj);
}
