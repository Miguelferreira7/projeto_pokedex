// List<Widget> children;
// if (snapshot.hasData) {
// children = <Widget>[
// const Icon(
// Icons.check_circle_outline,
// color: Colors.green,
// size: 60,
// ),
// Padding(
// padding: const EdgeInsets.only(top: 16),
// child: Text('Result: ${snapshot.data}'),
// )
// ];
// } else if (snapshot.hasError) {
// children = <Widget>[
// const Icon(
// Icons.error_outline,
// color: Colors.red,
// size: 60,
// ),
// Padding(
// padding: const EdgeInsets.only(top: 16),
// child: Text('Error: ${snapshot.error}'),
// )
// ];
// }