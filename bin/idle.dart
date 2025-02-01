import 'package:idle/idle.dart' as idle;

void main(List<String> arguments) {
  final args = idle.buildParser();

  try{
    final parsedArgs = args.parse(arguments);

    if(parsedArgs.option('time')!.isNotEmpty){
      final robot = idle.Robot(interval: Duration(seconds: int.parse(parsedArgs.option('time')!)));
      robot.start();
    }
  }catch(e){
    print(e);
  }
}
