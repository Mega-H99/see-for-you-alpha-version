import 'package:audioplayers/audioplayers.dart';

AudioPlayer audioPlayer = AudioPlayer();
PlayerState playerState = PlayerState.PAUSED;
AudioCache? audioCache;
String path = 'assets/ringtones/camera_sound.mp3';

initAudioPlayerCameraSound(){
  audioCache = AudioCache(fixedPlayer: audioPlayer);
  audioPlayer.onPlayerStateChanged.listen((PlayerState s) {
    playerState = s;
  });
}

destroyAudioPlayerCameraSound() {
audioPlayer.release();
audioPlayer.dispose();
audioCache?.clearAll();
}
playMusic() async {
  await audioCache?.loop(path);
}

pauseMusic() async {
  await audioPlayer.pause();
}
