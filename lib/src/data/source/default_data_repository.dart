import 'package:firebase_storage/firebase_storage.dart';
import 'data_repository.dart';
import 'data_source.dart';
import 'remote/firebase_storage.dart';
export './data_repository.dart';

class DefaultFirebaseDataRepository extends FirebaseDataRepository {
  final FirebaseDataSource local;
  final FirebaseDataSource remote;

  DefaultFirebaseDataRepository({required this.local, required this.remote});
  @override
  Future<Folder?> listFoldersWithHierarchy(
      {required Folder folder, required String fullPath, int depth = 0}) {
    return remote.listFoldersWithHierarchy(
        folder: folder, fullPath: fullPath, depth: depth);
  }

  @override
  Future<ListResult> listFiles(String path) {
    return remote.listFiles(path);
  }

  @override
  Future<List<String>> listFolders(String path) {
    return remote.listFolders(path);
  }

  @override
  Future<String> uploadJson(Map<String, dynamic> json, String fileName) {
    return remote.uploadJson(json, fileName);
  }

  @override
  Future<T?> loadJson<T>(String path, JsonToObj<T> jsonToObj) {
    return remote.loadJson(path, (json) => jsonToObj(json));
  }
}
