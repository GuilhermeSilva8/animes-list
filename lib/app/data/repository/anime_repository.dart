import 'package:meta/meta.dart';
import '../providers/api.dart';

class AnimeRepository {
  final AnimeApiClient? apiClient;

  AnimeRepository({@required this.apiClient}) : assert(apiClient != null);

  Future getAll() {
    return apiClient!.getAll();
  }
}

