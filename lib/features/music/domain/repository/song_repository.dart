import 'package:mental_wellness/features/music/domain/entities/song.dart';


abstract class SongRepository {
  Future<List<Song>> getSongs();
}
