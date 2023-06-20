library owl_firebase;

import 'package:firebase_storage/firebase_storage.dart';
import 'src/data/source/data_repository.dart';
import 'src/data/source/default_data_repository.dart';
import 'src/data/source/local/local_data_source.dart';
import 'src/data/source/remote/firebase_storage.dart';
import 'src/data/source/remote/remote_data_source.dart';
export '/src/data/source/remote/firebase_storage.dart';
export '/src/data/source/default_data_repository.dart';

class OwlFirebase {
  static final OwlFirebase instance = OwlFirebase._internal();
  late final FirebaseDataRepository repo;
  OwlFirebase._internal();

  FirebaseDataRepository initRepo(FirebaseStorage firebaseStorage) {
    repo = DefaultFirebaseDataRepository(
      local: LocalFirebaseDataSource(),
      remote: RemoteDataSource(
        fireStorage: FireStorage(firebaseStorage),
      ),
    );
    return repo;
  }
}
