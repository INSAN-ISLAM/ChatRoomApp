// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_webrtc/flutter_webrtc.dart';
// // import 'agora_service.dart';
// //
// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await AgoraService.initialize();
// //   runApp(MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return ChangeNotifierProvider(
// //       create: (_) => AudioChatProvider(),
// //       child: MaterialApp(
// //         home: AudioChatScreen(),
// //       ),
// //     );
// //   }
// // }
//
//
//
//
// class WebRTCService {
//   RTCPeerConnection? _peerConnection;
//   MediaStream? _localStream;
//
//   Future<void> initialize() async {
//     final Map<String, dynamic> configuration = {
//       'iceServers': [
//         {'urls': 'stun:stun.l.google.com:19302'}
//       ]
//     };
//
//     _peerConnection = await createPeerConnection(configuration);
//     _localStream = await _createLocalStream();
//     _peerConnection?.addStream(_localStream!);
//   }
//
//   Future<MediaStream> _createLocalStream() async {
//     final Map<String, dynamic> mediaConstraints = {
//       'audio': true,
//       'video': false,
//     };
//
//     return await navigator.mediaDevices.getUserMedia(mediaConstraints);
//   }
//
//   void toggleMute(bool muted) {
//     _localStream?.getAudioTracks()[0].enabled = !muted;
//   }
//
//   void dispose() {
//     _localStream?.dispose();
//     _peerConnection?.close();
//   }
// }
