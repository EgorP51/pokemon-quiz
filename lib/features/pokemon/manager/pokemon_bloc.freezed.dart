// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PokemonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getPokemon,
    required TResult Function(String name) checkAnswer,
    required TResult Function() resetAnswerState,
    required TResult Function(bool show) showResultDialog,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getPokemon,
    TResult? Function(String name)? checkAnswer,
    TResult? Function()? resetAnswerState,
    TResult? Function(bool show)? showResultDialog,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getPokemon,
    TResult Function(String name)? checkAnswer,
    TResult Function()? resetAnswerState,
    TResult Function(bool show)? showResultDialog,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetPokemon value) getPokemon,
    required TResult Function(_CheckAnswer value) checkAnswer,
    required TResult Function(_ResetAnswerState value) resetAnswerState,
    required TResult Function(_ShowResultDialog value) showResultDialog,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetPokemon value)? getPokemon,
    TResult? Function(_CheckAnswer value)? checkAnswer,
    TResult? Function(_ResetAnswerState value)? resetAnswerState,
    TResult? Function(_ShowResultDialog value)? showResultDialog,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetPokemon value)? getPokemon,
    TResult Function(_CheckAnswer value)? checkAnswer,
    TResult Function(_ResetAnswerState value)? resetAnswerState,
    TResult Function(_ShowResultDialog value)? showResultDialog,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEventCopyWith<$Res> {
  factory $PokemonEventCopyWith(
    PokemonEvent value,
    $Res Function(PokemonEvent) then,
  ) = _$PokemonEventCopyWithImpl<$Res, PokemonEvent>;
}

/// @nodoc
class _$PokemonEventCopyWithImpl<$Res, $Val extends PokemonEvent>
    implements $PokemonEventCopyWith<$Res> {
  _$PokemonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PokemonEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PokemonEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getPokemon,
    required TResult Function(String name) checkAnswer,
    required TResult Function() resetAnswerState,
    required TResult Function(bool show) showResultDialog,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getPokemon,
    TResult? Function(String name)? checkAnswer,
    TResult? Function()? resetAnswerState,
    TResult? Function(bool show)? showResultDialog,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getPokemon,
    TResult Function(String name)? checkAnswer,
    TResult Function()? resetAnswerState,
    TResult Function(bool show)? showResultDialog,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetPokemon value) getPokemon,
    required TResult Function(_CheckAnswer value) checkAnswer,
    required TResult Function(_ResetAnswerState value) resetAnswerState,
    required TResult Function(_ShowResultDialog value) showResultDialog,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetPokemon value)? getPokemon,
    TResult? Function(_CheckAnswer value)? checkAnswer,
    TResult? Function(_ResetAnswerState value)? resetAnswerState,
    TResult? Function(_ShowResultDialog value)? showResultDialog,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetPokemon value)? getPokemon,
    TResult Function(_CheckAnswer value)? checkAnswer,
    TResult Function(_ResetAnswerState value)? resetAnswerState,
    TResult Function(_ShowResultDialog value)? showResultDialog,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PokemonEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetPokemonImplCopyWith<$Res> {
  factory _$$GetPokemonImplCopyWith(
    _$GetPokemonImpl value,
    $Res Function(_$GetPokemonImpl) then,
  ) = __$$GetPokemonImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPokemonImplCopyWithImpl<$Res>
    extends _$PokemonEventCopyWithImpl<$Res, _$GetPokemonImpl>
    implements _$$GetPokemonImplCopyWith<$Res> {
  __$$GetPokemonImplCopyWithImpl(
    _$GetPokemonImpl _value,
    $Res Function(_$GetPokemonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetPokemonImpl implements _GetPokemon {
  const _$GetPokemonImpl();

  @override
  String toString() {
    return 'PokemonEvent.getPokemon()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPokemonImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getPokemon,
    required TResult Function(String name) checkAnswer,
    required TResult Function() resetAnswerState,
    required TResult Function(bool show) showResultDialog,
  }) {
    return getPokemon();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getPokemon,
    TResult? Function(String name)? checkAnswer,
    TResult? Function()? resetAnswerState,
    TResult? Function(bool show)? showResultDialog,
  }) {
    return getPokemon?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getPokemon,
    TResult Function(String name)? checkAnswer,
    TResult Function()? resetAnswerState,
    TResult Function(bool show)? showResultDialog,
    required TResult orElse(),
  }) {
    if (getPokemon != null) {
      return getPokemon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetPokemon value) getPokemon,
    required TResult Function(_CheckAnswer value) checkAnswer,
    required TResult Function(_ResetAnswerState value) resetAnswerState,
    required TResult Function(_ShowResultDialog value) showResultDialog,
  }) {
    return getPokemon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetPokemon value)? getPokemon,
    TResult? Function(_CheckAnswer value)? checkAnswer,
    TResult? Function(_ResetAnswerState value)? resetAnswerState,
    TResult? Function(_ShowResultDialog value)? showResultDialog,
  }) {
    return getPokemon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetPokemon value)? getPokemon,
    TResult Function(_CheckAnswer value)? checkAnswer,
    TResult Function(_ResetAnswerState value)? resetAnswerState,
    TResult Function(_ShowResultDialog value)? showResultDialog,
    required TResult orElse(),
  }) {
    if (getPokemon != null) {
      return getPokemon(this);
    }
    return orElse();
  }
}

abstract class _GetPokemon implements PokemonEvent {
  const factory _GetPokemon() = _$GetPokemonImpl;
}

/// @nodoc
abstract class _$$CheckAnswerImplCopyWith<$Res> {
  factory _$$CheckAnswerImplCopyWith(
    _$CheckAnswerImpl value,
    $Res Function(_$CheckAnswerImpl) then,
  ) = __$$CheckAnswerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$CheckAnswerImplCopyWithImpl<$Res>
    extends _$PokemonEventCopyWithImpl<$Res, _$CheckAnswerImpl>
    implements _$$CheckAnswerImplCopyWith<$Res> {
  __$$CheckAnswerImplCopyWithImpl(
    _$CheckAnswerImpl _value,
    $Res Function(_$CheckAnswerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _$CheckAnswerImpl(
        null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$CheckAnswerImpl implements _CheckAnswer {
  const _$CheckAnswerImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'PokemonEvent.checkAnswer(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckAnswerImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckAnswerImplCopyWith<_$CheckAnswerImpl> get copyWith =>
      __$$CheckAnswerImplCopyWithImpl<_$CheckAnswerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getPokemon,
    required TResult Function(String name) checkAnswer,
    required TResult Function() resetAnswerState,
    required TResult Function(bool show) showResultDialog,
  }) {
    return checkAnswer(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getPokemon,
    TResult? Function(String name)? checkAnswer,
    TResult? Function()? resetAnswerState,
    TResult? Function(bool show)? showResultDialog,
  }) {
    return checkAnswer?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getPokemon,
    TResult Function(String name)? checkAnswer,
    TResult Function()? resetAnswerState,
    TResult Function(bool show)? showResultDialog,
    required TResult orElse(),
  }) {
    if (checkAnswer != null) {
      return checkAnswer(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetPokemon value) getPokemon,
    required TResult Function(_CheckAnswer value) checkAnswer,
    required TResult Function(_ResetAnswerState value) resetAnswerState,
    required TResult Function(_ShowResultDialog value) showResultDialog,
  }) {
    return checkAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetPokemon value)? getPokemon,
    TResult? Function(_CheckAnswer value)? checkAnswer,
    TResult? Function(_ResetAnswerState value)? resetAnswerState,
    TResult? Function(_ShowResultDialog value)? showResultDialog,
  }) {
    return checkAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetPokemon value)? getPokemon,
    TResult Function(_CheckAnswer value)? checkAnswer,
    TResult Function(_ResetAnswerState value)? resetAnswerState,
    TResult Function(_ShowResultDialog value)? showResultDialog,
    required TResult orElse(),
  }) {
    if (checkAnswer != null) {
      return checkAnswer(this);
    }
    return orElse();
  }
}

abstract class _CheckAnswer implements PokemonEvent {
  const factory _CheckAnswer(final String name) = _$CheckAnswerImpl;

  String get name;

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckAnswerImplCopyWith<_$CheckAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetAnswerStateImplCopyWith<$Res> {
  factory _$$ResetAnswerStateImplCopyWith(
    _$ResetAnswerStateImpl value,
    $Res Function(_$ResetAnswerStateImpl) then,
  ) = __$$ResetAnswerStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetAnswerStateImplCopyWithImpl<$Res>
    extends _$PokemonEventCopyWithImpl<$Res, _$ResetAnswerStateImpl>
    implements _$$ResetAnswerStateImplCopyWith<$Res> {
  __$$ResetAnswerStateImplCopyWithImpl(
    _$ResetAnswerStateImpl _value,
    $Res Function(_$ResetAnswerStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetAnswerStateImpl implements _ResetAnswerState {
  const _$ResetAnswerStateImpl();

  @override
  String toString() {
    return 'PokemonEvent.resetAnswerState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetAnswerStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getPokemon,
    required TResult Function(String name) checkAnswer,
    required TResult Function() resetAnswerState,
    required TResult Function(bool show) showResultDialog,
  }) {
    return resetAnswerState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getPokemon,
    TResult? Function(String name)? checkAnswer,
    TResult? Function()? resetAnswerState,
    TResult? Function(bool show)? showResultDialog,
  }) {
    return resetAnswerState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getPokemon,
    TResult Function(String name)? checkAnswer,
    TResult Function()? resetAnswerState,
    TResult Function(bool show)? showResultDialog,
    required TResult orElse(),
  }) {
    if (resetAnswerState != null) {
      return resetAnswerState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetPokemon value) getPokemon,
    required TResult Function(_CheckAnswer value) checkAnswer,
    required TResult Function(_ResetAnswerState value) resetAnswerState,
    required TResult Function(_ShowResultDialog value) showResultDialog,
  }) {
    return resetAnswerState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetPokemon value)? getPokemon,
    TResult? Function(_CheckAnswer value)? checkAnswer,
    TResult? Function(_ResetAnswerState value)? resetAnswerState,
    TResult? Function(_ShowResultDialog value)? showResultDialog,
  }) {
    return resetAnswerState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetPokemon value)? getPokemon,
    TResult Function(_CheckAnswer value)? checkAnswer,
    TResult Function(_ResetAnswerState value)? resetAnswerState,
    TResult Function(_ShowResultDialog value)? showResultDialog,
    required TResult orElse(),
  }) {
    if (resetAnswerState != null) {
      return resetAnswerState(this);
    }
    return orElse();
  }
}

abstract class _ResetAnswerState implements PokemonEvent {
  const factory _ResetAnswerState() = _$ResetAnswerStateImpl;
}

/// @nodoc
abstract class _$$ShowResultDialogImplCopyWith<$Res> {
  factory _$$ShowResultDialogImplCopyWith(
    _$ShowResultDialogImpl value,
    $Res Function(_$ShowResultDialogImpl) then,
  ) = __$$ShowResultDialogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool show});
}

/// @nodoc
class __$$ShowResultDialogImplCopyWithImpl<$Res>
    extends _$PokemonEventCopyWithImpl<$Res, _$ShowResultDialogImpl>
    implements _$$ShowResultDialogImplCopyWith<$Res> {
  __$$ShowResultDialogImplCopyWithImpl(
    _$ShowResultDialogImpl _value,
    $Res Function(_$ShowResultDialogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? show = null}) {
    return _then(
      _$ShowResultDialogImpl(
        null == show
            ? _value.show
            : show // ignore: cast_nullable_to_non_nullable
                as bool,
      ),
    );
  }
}

/// @nodoc

class _$ShowResultDialogImpl implements _ShowResultDialog {
  const _$ShowResultDialogImpl(this.show);

  @override
  final bool show;

  @override
  String toString() {
    return 'PokemonEvent.showResultDialog(show: $show)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowResultDialogImpl &&
            (identical(other.show, show) || other.show == show));
  }

  @override
  int get hashCode => Object.hash(runtimeType, show);

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowResultDialogImplCopyWith<_$ShowResultDialogImpl> get copyWith =>
      __$$ShowResultDialogImplCopyWithImpl<_$ShowResultDialogImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getPokemon,
    required TResult Function(String name) checkAnswer,
    required TResult Function() resetAnswerState,
    required TResult Function(bool show) showResultDialog,
  }) {
    return showResultDialog(show);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getPokemon,
    TResult? Function(String name)? checkAnswer,
    TResult? Function()? resetAnswerState,
    TResult? Function(bool show)? showResultDialog,
  }) {
    return showResultDialog?.call(show);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getPokemon,
    TResult Function(String name)? checkAnswer,
    TResult Function()? resetAnswerState,
    TResult Function(bool show)? showResultDialog,
    required TResult orElse(),
  }) {
    if (showResultDialog != null) {
      return showResultDialog(show);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetPokemon value) getPokemon,
    required TResult Function(_CheckAnswer value) checkAnswer,
    required TResult Function(_ResetAnswerState value) resetAnswerState,
    required TResult Function(_ShowResultDialog value) showResultDialog,
  }) {
    return showResultDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetPokemon value)? getPokemon,
    TResult? Function(_CheckAnswer value)? checkAnswer,
    TResult? Function(_ResetAnswerState value)? resetAnswerState,
    TResult? Function(_ShowResultDialog value)? showResultDialog,
  }) {
    return showResultDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetPokemon value)? getPokemon,
    TResult Function(_CheckAnswer value)? checkAnswer,
    TResult Function(_ResetAnswerState value)? resetAnswerState,
    TResult Function(_ShowResultDialog value)? showResultDialog,
    required TResult orElse(),
  }) {
    if (showResultDialog != null) {
      return showResultDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowResultDialog implements PokemonEvent {
  const factory _ShowResultDialog(final bool show) = _$ShowResultDialogImpl;

  bool get show;

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowResultDialogImplCopyWith<_$ShowResultDialogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PokemonState {
  Pokemon? get mainPokemon => throw _privateConstructorUsedError;
  List<String> get pokemonsNames => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showResultDialog => throw _privateConstructorUsedError;
  MError? get error => throw _privateConstructorUsedError;
  AnswerStatus? get answerStatus => throw _privateConstructorUsedError;

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonStateCopyWith<PokemonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStateCopyWith<$Res> {
  factory $PokemonStateCopyWith(
    PokemonState value,
    $Res Function(PokemonState) then,
  ) = _$PokemonStateCopyWithImpl<$Res, PokemonState>;
  @useResult
  $Res call({
    Pokemon? mainPokemon,
    List<String> pokemonsNames,
    bool isLoading,
    bool showResultDialog,
    MError? error,
    AnswerStatus? answerStatus,
  });
}

/// @nodoc
class _$PokemonStateCopyWithImpl<$Res, $Val extends PokemonState>
    implements $PokemonStateCopyWith<$Res> {
  _$PokemonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainPokemon = freezed,
    Object? pokemonsNames = null,
    Object? isLoading = null,
    Object? showResultDialog = null,
    Object? error = freezed,
    Object? answerStatus = freezed,
  }) {
    return _then(
      _value.copyWith(
            mainPokemon:
                freezed == mainPokemon
                    ? _value.mainPokemon
                    : mainPokemon // ignore: cast_nullable_to_non_nullable
                        as Pokemon?,
            pokemonsNames:
                null == pokemonsNames
                    ? _value.pokemonsNames
                    : pokemonsNames // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            showResultDialog:
                null == showResultDialog
                    ? _value.showResultDialog
                    : showResultDialog // ignore: cast_nullable_to_non_nullable
                        as bool,
            error:
                freezed == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as MError?,
            answerStatus:
                freezed == answerStatus
                    ? _value.answerStatus
                    : answerStatus // ignore: cast_nullable_to_non_nullable
                        as AnswerStatus?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PokemonStateImplCopyWith<$Res>
    implements $PokemonStateCopyWith<$Res> {
  factory _$$PokemonStateImplCopyWith(
    _$PokemonStateImpl value,
    $Res Function(_$PokemonStateImpl) then,
  ) = __$$PokemonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Pokemon? mainPokemon,
    List<String> pokemonsNames,
    bool isLoading,
    bool showResultDialog,
    MError? error,
    AnswerStatus? answerStatus,
  });
}

/// @nodoc
class __$$PokemonStateImplCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res, _$PokemonStateImpl>
    implements _$$PokemonStateImplCopyWith<$Res> {
  __$$PokemonStateImplCopyWithImpl(
    _$PokemonStateImpl _value,
    $Res Function(_$PokemonStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainPokemon = freezed,
    Object? pokemonsNames = null,
    Object? isLoading = null,
    Object? showResultDialog = null,
    Object? error = freezed,
    Object? answerStatus = freezed,
  }) {
    return _then(
      _$PokemonStateImpl(
        mainPokemon:
            freezed == mainPokemon
                ? _value.mainPokemon
                : mainPokemon // ignore: cast_nullable_to_non_nullable
                    as Pokemon?,
        pokemonsNames:
            null == pokemonsNames
                ? _value._pokemonsNames
                : pokemonsNames // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        showResultDialog:
            null == showResultDialog
                ? _value.showResultDialog
                : showResultDialog // ignore: cast_nullable_to_non_nullable
                    as bool,
        error:
            freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as MError?,
        answerStatus:
            freezed == answerStatus
                ? _value.answerStatus
                : answerStatus // ignore: cast_nullable_to_non_nullable
                    as AnswerStatus?,
      ),
    );
  }
}

/// @nodoc

class _$PokemonStateImpl extends _PokemonState {
  const _$PokemonStateImpl({
    this.mainPokemon = null,
    final List<String> pokemonsNames = const [],
    this.isLoading = false,
    this.showResultDialog = false,
    this.error,
    this.answerStatus,
  }) : _pokemonsNames = pokemonsNames,
       super._();

  @override
  @JsonKey()
  final Pokemon? mainPokemon;
  final List<String> _pokemonsNames;
  @override
  @JsonKey()
  List<String> get pokemonsNames {
    if (_pokemonsNames is EqualUnmodifiableListView) return _pokemonsNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemonsNames);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool showResultDialog;
  @override
  final MError? error;
  @override
  final AnswerStatus? answerStatus;

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonStateImplCopyWith<_$PokemonStateImpl> get copyWith =>
      __$$PokemonStateImplCopyWithImpl<_$PokemonStateImpl>(this, _$identity);
}

abstract class _PokemonState extends PokemonState {
  const factory _PokemonState({
    final Pokemon? mainPokemon,
    final List<String> pokemonsNames,
    final bool isLoading,
    final bool showResultDialog,
    final MError? error,
    final AnswerStatus? answerStatus,
  }) = _$PokemonStateImpl;
  const _PokemonState._() : super._();

  @override
  Pokemon? get mainPokemon;
  @override
  List<String> get pokemonsNames;
  @override
  bool get isLoading;
  @override
  bool get showResultDialog;
  @override
  MError? get error;
  @override
  AnswerStatus? get answerStatus;

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonStateImplCopyWith<_$PokemonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
