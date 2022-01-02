class ImageConstants {
  static ImageConstants? _instace;

  static ImageConstants get instance => _instace ??= ImageConstants._init();

  ImageConstants._init();

  String get logo => toPng('tlsymbol');

  String toPng(String name) => 'asset/image/$name.png';
}
