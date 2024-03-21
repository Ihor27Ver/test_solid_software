import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_solid_software/app/util/color_utils.dart';
import 'package:test_solid_software/presentation/screen/home/bloc/home_models.dart';

/// `HomeBloc` extends `Bloc` from the bloc library, using `HomeEvent` as its
/// event type and `HomeState` as its state type. This Bloc handles the business
/// logic of the Home screen, reacting
/// to events and emitting states accordingly.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  /// Constructor for `HomeBloc`.
  ///
  /// Initializes the bloc with an initial state. It also defines event handlers
  /// for various types of `HomeEvent`. The `HomeEvent.init()` event is added
  /// to the event stream to trigger the initialization logic immediately
  /// after the bloc is created.
  HomeBloc() : super(HomeState.data()) {
    on<HomeEventInit>(_onInit);
    on<ChangeColorEvent>(_changeColor);
    add(HomeEvent.init());
  }

  Future<void> _onInit(
    HomeEventInit _,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.data.copyWith(
        isLoading: true,
      ),
    );

    _updateColor(emit);

    emit(
      state.data.copyWith(
        isLoading: false,
      ),
    );
  }

  Future<void> _changeColor(
    ChangeColorEvent _,
    Emitter<HomeState> emit,
  ) async {
    _updateColor(emit);
  }

  void _updateColor(Emitter<HomeState> emit) {
    var backgroundColor = ColorUtils.getRandomColor();
    var textColor = ColorUtils.getRandomColor();

    while (!ColorUtils.hasSufficientContrast(backgroundColor, textColor)) {
      backgroundColor = ColorUtils.getRandomColor();
      textColor = ColorUtils.getRandomColor();
    }

    emit(
      state.data.copyWith(
        backgroundColor: backgroundColor,
        textColor: textColor,
      ),
    );
  }
}
