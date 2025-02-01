import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:args/args.dart';

class Robot {
  final _random = Random();
  final Duration interval;
  bool _isRunning = false;

  Robot({required this.interval});

  Future<void> _pressKeyWithRobot() async {
    try {
      if (Platform.isWindows) {
        await Process.run('powershell', [
          '-ExecutionPolicy',
          'Bypass',
          '-Command',
          '''
            \$wsh = New-Object -ComObject wscript.shell;
            \$wsh.SendKeys('{SCROLLLOCK}');
            Start-Sleep -Milliseconds 50;
            \$wsh.SendKeys('{SCROLLLOCK}');
          '''
        ]);
        print('Key pressed at ${DateTime.now().toString()}');
      } else {
        print("Error: This function isn't supported");
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  void start(){
    _isRunning = true;
    print('Starting robot');
    print('Robot will press a key every ${interval.inSeconds} seconds');
    print('Press Ctrl+C to stop');

    Timer.periodic(interval, (timer){
      if(!_isRunning){
        timer.cancel();
        return;
      }
      _pressKeyWithRobot();
    });

    ProcessSignal.sigint.watch().listen((signal){
      stop();
      exit(0);
    });
  }

  void stop(){
    _isRunning = false;
    print('Stopping robot');
  }
}

ArgParser buildParser() {
  return ArgParser()..addOption('time', abbr: 't', help: 'Set sleep time');
}
