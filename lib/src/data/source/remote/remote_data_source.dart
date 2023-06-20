import 'package:firebase_storage/firebase_storage.dart';
import '../../version_control_response.dart';
import '../data_source.dart';
import 'firebase_storage.dart';

class RemoteDataSource extends FirebaseDataSource {
  final FireStorage fireStorage;

  RemoteDataSource({required this.fireStorage});

  @override
  Future<ListResult> listFiles(String path) {
    return fireStorage.listFiles(path);
  }

  @override
  Future<List<String>> listFolders(String path) {
    return fireStorage.listFolders(path);
  }

  @override
  Future<String> uploadJson(Map<String, dynamic> json, String fileName) {
    return fireStorage.uploadJson(json, fileName);
  }

  @override
  Future<Folder?> listFoldersWithHierarchy(
      {required Folder folder, required String fullPath, int depth = 0}) {
    return fireStorage.listFoldersWithHierarchy(
        folder: folder, fullPath: fullPath, depth: depth);
  }

  @override
  Future<T?> loadJson<T>(String path, JsonToObj<T> jsonToObj) {
    return fireStorage.loadJson(path, (json) => jsonToObj(json));
  }
}
