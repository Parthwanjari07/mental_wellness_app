import 'package:mental_wellness/features/music/domain/entities/song.dart';
import 'package:mental_wellness/features/music/domain/repository/song_repository.dart';

class GetAllSongs {
  final SongRepository repository;

  GetAllSongs(this.repository);

  Future<List<Song>> call() async {
    return await repository.getSongs();
  }
}