enum FroWho { me, hers }

class Message {
  final String text;
  final String? imageUrl;
  final FroWho froWho;

  Message({
    required this.text,
    this.imageUrl,
    required this.froWho
  });
}
