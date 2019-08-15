import 'package:huehome/domain/light.dart';
import 'package:provider/provider.dart';

class LightRespository {
  static final List<Light> mockLights = [
    Light(
      id: "mockLight1",
      name: "Light 1",
      brightness: 90,
      hue: 40500,
      saturation: 156,
    ),
    Light(
      id: "mockLight2",
      name: "Light 2",
      brightness: 90,
      hue: 12340,
      saturation: 166,
    ),
    Light(
      id: "mockLight3",
      name: "Light 3",
      brightness: 143,
      hue: 33050,
      saturation: 236,
    ),
    Light(
      id: "mockLight4",
      name: "Light 4",
      brightness: 150,
      hue: 23070,
      saturation: 156,
    )
  ];

  static final List<Light> mockLights2 = [
    Light(
      id: "mockLight1",
      name: "Light 1",
      brightness: 90,
      hue: 50500,
      saturation: 156,
    ),
    Light(
      id: "mockLight2",
      name: "Light 2",
      brightness: 190,
      hue: 62340,
      saturation: 166,
    ),
  ];

  static final List<Light> mockLights3 = [
    Light(
      id: "mockLight1",
      name: "Light 1",
      brightness: 200,
      hue: 10500,
      saturation: 256,
    ),
    Light(
      id: "mockLight2",
      name: "Light 2",
      brightness: 200,
      hue: 28340,
      saturation: 196,
    ),
  ];

  static final List<Light> mockLights4 = [
    Light(
      id: "mockLight1",
      name: "Light 1",
      brightness: 140,
      hue: 10500,
      saturation: 246,
    ),
  ];

  List<Light> getLights() {
    return mockLights;
  }

  List<Light> getLights2() {
    return mockLights2;
  }

  List<Light> getLights3() {
    return mockLights3;
  }

  List<Light> getLights4() {
    return mockLights4;
  }
}

/// Function returning a provider for providing a RoomRepository
Provider<LightRespository> lightRepoProvider() {
  return Provider(
    builder: (context) => LightRespository(),
    dispose: (context, repo) => {},
  );
}
