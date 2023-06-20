import 'package:firebase_storage/firebase_storage.dart';
import '../data_source.dart';
import '../remote/firebase_storage.dart';

class LocalFirebaseDataSource extends FirebaseDataSource {
  LocalFirebaseDataSource();

  @override
  Future<ListResult> listFiles(String path) {
    throw UnimplementedError();
  }

  @override
  Future<List<String>> listFolders(String path) {
    throw UnimplementedError();
  }

  @override
  Future<String> uploadJson(Map<String, dynamic> json, String fileName) {
    throw UnimplementedError();
  }

  @override
  Future<Folder?> listFoldersWithHierarchy(
      {required Folder folder, required String fullPath, int depth = 0}) {
    throw UnimplementedError();
  }

  @override
  Future<T?> loadJson<T>(String path, JsonToObj<T> jsonToObj) {
    throw UnimplementedError();
  }
}
