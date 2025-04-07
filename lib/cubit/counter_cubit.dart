import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class  CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;

  int teamBPoints = 0;



void TeamAIncrement({required String team, required int buttonNumber}) {
  if (team == 'A') {
    teamAPoints += buttonNumber;
    emit(CounterAIncrementState());
  } else {
    teamBPoints += buttonNumber;
    emit(CounterBIncreamentState());
  }
}
}
// OR
//   void TeamAIncrement(int buttonNumber){

//     teamAPoints +=buttonNumber;

//     emit(CounterAIncrementState());
//   }

//   void TeamBIncrement(int buttonNumber){
//     teamBPoints +=buttonNumber;

//     emit(CounterBIncreamentState());
//   }
// } 