import 'package:flutter_riverpod/flutter_riverpod.dart';


//gerer l'etat du changement
final dashboardControllerProvider =
    StateNotifierProvider<DashboardController, int>((ref) {
  return DashboardController(0);
});

class DashboardController extends StateNotifier<int> {
  DashboardController(super.state);

  void setPosition(int value) {
    state = value;
  }
}
