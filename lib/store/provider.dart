import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// counter provider
final counterProvider = StateNotifierProvider<Counter, int>((ref) => Counter(ref));

class Counter extends StateNotifier<int> {
  Counter(this.ref) : super(0);

  final Ref ref;

  void increment() => state++;
}

// app provider
final appProvider = StateNotifierProvider<AppStore, AppState>((ref) => AppStore(ref));

class AppState {
  AppState({
    this.themeMode = ThemeMode.system,
  });

  final ThemeMode themeMode;

  AppState copyWith({
    ThemeMode? themeMode,
  }) {
    return AppState(
      themeMode: themeMode ?? this.themeMode,
    );
  }
}

class AppStore extends StateNotifier<AppState> {
  AppStore(this.ref) : super(AppState());

  final Ref ref;

  void setTheme(ThemeMode themeMode) {
    state = state.copyWith(themeMode: themeMode);
  }

  // mutate other providers' states
  void play() {
    final counter = ref.read(counterProvider.notifier);
    counter.increment();
  }
}

