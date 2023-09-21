///since the app only have a static desing and static UI there is not that
///much for bloc to use because its not a complex UI where we have data need to be
///manage from an API or any state that change and need management

import 'package:bloc/bloc.dart';
part 'bloc_event.dart';
part 'bloc_state.dart';

class BlocBloc extends Bloc<BlocEvent, BlocState> {
  BlocBloc() : super(BlocInitial()) {
    on<BlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
