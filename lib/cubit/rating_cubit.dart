import 'package:flutter_bloc/flutter_bloc.dart';

part 'rating_state.dart';

class RatingCubit extends Cubit<RatingState> {
  RatingCubit() : super(RatingState(blocScore: 0, cubitScore: 0));
  
  void upVoteBloc() => emit(state.copyWith(blocScore:  state.blocScore + 1));
  
  void upVoteCubit() => emit(state.copyWith(cubitScore:  state.cubitScore + 1));
}
