import 'package:huehome/data/light_repository.dart';
import 'package:huehome/domain/room.dart';
import 'package:provider/provider.dart';

class RoomRepository {
  static final LightRespository _lightRespository = LightRespository();

  static final List<Room> _mockRooms = [
    Room(name: "Living Room", lights: _lightRespository.getLights()),
    Room(name: "Bedroom", lights: _lightRespository.getLights2()),
    Room(name: "Office", lights: _lightRespository.getLights3()),
    Room(name: "Balcony", lights: _lightRespository.getLights4()),
  ];

  List<Room> getRooms() {
    return _mockRooms;
  }
}

/// Function returning a provider for providing a RoomRepository
Provider<RoomRepository> roomRepoProvider() {
  return Provider(
    create: (context) => RoomRepository(),
    dispose: (context, repo) => {},
  );
}
