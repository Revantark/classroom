// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'firestore_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FirestoreEventTearOff {
  const _$FirestoreEventTearOff();

// ignore: unused_element
  _Started getData() {
    return const _Started();
  }

// ignore: unused_element
  _SetLinks setLinks(Map<dynamic, dynamic> links) {
    return _SetLinks(
      links,
    );
  }

// ignore: unused_element
  _SetTimetable setTimetable(List<dynamic> timetable) {
    return _SetTimetable(
      timetable,
    );
  }

// ignore: unused_element
  _LaunchZoomApp launchZoom(String url) {
    return _LaunchZoomApp(
      url,
    );
  }
}

// ignore: unused_element
const $FirestoreEvent = _$FirestoreEventTearOff();

mixin _$FirestoreEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(),
    @required Result setLinks(Map<dynamic, dynamic> links),
    @required Result setTimetable(List<dynamic> timetable),
    @required Result launchZoom(String url),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(),
    Result setLinks(Map<dynamic, dynamic> links),
    Result setTimetable(List<dynamic> timetable),
    Result launchZoom(String url),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_Started value),
    @required Result setLinks(_SetLinks value),
    @required Result setTimetable(_SetTimetable value),
    @required Result launchZoom(_LaunchZoomApp value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_Started value),
    Result setLinks(_SetLinks value),
    Result setTimetable(_SetTimetable value),
    Result launchZoom(_LaunchZoomApp value),
    @required Result orElse(),
  });
}

abstract class $FirestoreEventCopyWith<$Res> {
  factory $FirestoreEventCopyWith(
          FirestoreEvent value, $Res Function(FirestoreEvent) then) =
      _$FirestoreEventCopyWithImpl<$Res>;
}

class _$FirestoreEventCopyWithImpl<$Res>
    implements $FirestoreEventCopyWith<$Res> {
  _$FirestoreEventCopyWithImpl(this._value, this._then);

  final FirestoreEvent _value;
  // ignore: unused_field
  final $Res Function(FirestoreEvent) _then;
}

abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

class __$StartedCopyWithImpl<$Res> extends _$FirestoreEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirestoreEvent.getData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'FirestoreEvent.getData'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(),
    @required Result setLinks(Map<dynamic, dynamic> links),
    @required Result setTimetable(List<dynamic> timetable),
    @required Result launchZoom(String url),
  }) {
    assert(getData != null);
    assert(setLinks != null);
    assert(setTimetable != null);
    assert(launchZoom != null);
    return getData();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(),
    Result setLinks(Map<dynamic, dynamic> links),
    Result setTimetable(List<dynamic> timetable),
    Result launchZoom(String url),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_Started value),
    @required Result setLinks(_SetLinks value),
    @required Result setTimetable(_SetTimetable value),
    @required Result launchZoom(_LaunchZoomApp value),
  }) {
    assert(getData != null);
    assert(setLinks != null);
    assert(setTimetable != null);
    assert(launchZoom != null);
    return getData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_Started value),
    Result setLinks(_SetLinks value),
    Result setTimetable(_SetTimetable value),
    Result launchZoom(_LaunchZoomApp value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _Started implements FirestoreEvent {
  const factory _Started() = _$_Started;
}

abstract class _$SetLinksCopyWith<$Res> {
  factory _$SetLinksCopyWith(_SetLinks value, $Res Function(_SetLinks) then) =
      __$SetLinksCopyWithImpl<$Res>;
  $Res call({Map<dynamic, dynamic> links});
}

class __$SetLinksCopyWithImpl<$Res> extends _$FirestoreEventCopyWithImpl<$Res>
    implements _$SetLinksCopyWith<$Res> {
  __$SetLinksCopyWithImpl(_SetLinks _value, $Res Function(_SetLinks) _then)
      : super(_value, (v) => _then(v as _SetLinks));

  @override
  _SetLinks get _value => super._value as _SetLinks;

  @override
  $Res call({
    Object links = freezed,
  }) {
    return _then(_SetLinks(
      links == freezed ? _value.links : links as Map<dynamic, dynamic>,
    ));
  }
}

class _$_SetLinks with DiagnosticableTreeMixin implements _SetLinks {
  const _$_SetLinks(this.links) : assert(links != null);

  @override
  final Map<dynamic, dynamic> links;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirestoreEvent.setLinks(links: $links)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FirestoreEvent.setLinks'))
      ..add(DiagnosticsProperty('links', links));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetLinks &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(links);

  @override
  _$SetLinksCopyWith<_SetLinks> get copyWith =>
      __$SetLinksCopyWithImpl<_SetLinks>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(),
    @required Result setLinks(Map<dynamic, dynamic> links),
    @required Result setTimetable(List<dynamic> timetable),
    @required Result launchZoom(String url),
  }) {
    assert(getData != null);
    assert(setLinks != null);
    assert(setTimetable != null);
    assert(launchZoom != null);
    return setLinks(links);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(),
    Result setLinks(Map<dynamic, dynamic> links),
    Result setTimetable(List<dynamic> timetable),
    Result launchZoom(String url),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setLinks != null) {
      return setLinks(links);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_Started value),
    @required Result setLinks(_SetLinks value),
    @required Result setTimetable(_SetTimetable value),
    @required Result launchZoom(_LaunchZoomApp value),
  }) {
    assert(getData != null);
    assert(setLinks != null);
    assert(setTimetable != null);
    assert(launchZoom != null);
    return setLinks(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_Started value),
    Result setLinks(_SetLinks value),
    Result setTimetable(_SetTimetable value),
    Result launchZoom(_LaunchZoomApp value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setLinks != null) {
      return setLinks(this);
    }
    return orElse();
  }
}

abstract class _SetLinks implements FirestoreEvent {
  const factory _SetLinks(Map<dynamic, dynamic> links) = _$_SetLinks;

  Map<dynamic, dynamic> get links;
  _$SetLinksCopyWith<_SetLinks> get copyWith;
}

abstract class _$SetTimetableCopyWith<$Res> {
  factory _$SetTimetableCopyWith(
          _SetTimetable value, $Res Function(_SetTimetable) then) =
      __$SetTimetableCopyWithImpl<$Res>;
  $Res call({List<dynamic> timetable});
}

class __$SetTimetableCopyWithImpl<$Res>
    extends _$FirestoreEventCopyWithImpl<$Res>
    implements _$SetTimetableCopyWith<$Res> {
  __$SetTimetableCopyWithImpl(
      _SetTimetable _value, $Res Function(_SetTimetable) _then)
      : super(_value, (v) => _then(v as _SetTimetable));

  @override
  _SetTimetable get _value => super._value as _SetTimetable;

  @override
  $Res call({
    Object timetable = freezed,
  }) {
    return _then(_SetTimetable(
      timetable == freezed ? _value.timetable : timetable as List<dynamic>,
    ));
  }
}

class _$_SetTimetable with DiagnosticableTreeMixin implements _SetTimetable {
  const _$_SetTimetable(this.timetable) : assert(timetable != null);

  @override
  final List<dynamic> timetable;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirestoreEvent.setTimetable(timetable: $timetable)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FirestoreEvent.setTimetable'))
      ..add(DiagnosticsProperty('timetable', timetable));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetTimetable &&
            (identical(other.timetable, timetable) ||
                const DeepCollectionEquality()
                    .equals(other.timetable, timetable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(timetable);

  @override
  _$SetTimetableCopyWith<_SetTimetable> get copyWith =>
      __$SetTimetableCopyWithImpl<_SetTimetable>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(),
    @required Result setLinks(Map<dynamic, dynamic> links),
    @required Result setTimetable(List<dynamic> timetable),
    @required Result launchZoom(String url),
  }) {
    assert(getData != null);
    assert(setLinks != null);
    assert(setTimetable != null);
    assert(launchZoom != null);
    return setTimetable(timetable);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(),
    Result setLinks(Map<dynamic, dynamic> links),
    Result setTimetable(List<dynamic> timetable),
    Result launchZoom(String url),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setTimetable != null) {
      return setTimetable(timetable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_Started value),
    @required Result setLinks(_SetLinks value),
    @required Result setTimetable(_SetTimetable value),
    @required Result launchZoom(_LaunchZoomApp value),
  }) {
    assert(getData != null);
    assert(setLinks != null);
    assert(setTimetable != null);
    assert(launchZoom != null);
    return setTimetable(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_Started value),
    Result setLinks(_SetLinks value),
    Result setTimetable(_SetTimetable value),
    Result launchZoom(_LaunchZoomApp value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setTimetable != null) {
      return setTimetable(this);
    }
    return orElse();
  }
}

abstract class _SetTimetable implements FirestoreEvent {
  const factory _SetTimetable(List<dynamic> timetable) = _$_SetTimetable;

  List<dynamic> get timetable;
  _$SetTimetableCopyWith<_SetTimetable> get copyWith;
}

abstract class _$LaunchZoomAppCopyWith<$Res> {
  factory _$LaunchZoomAppCopyWith(
          _LaunchZoomApp value, $Res Function(_LaunchZoomApp) then) =
      __$LaunchZoomAppCopyWithImpl<$Res>;
  $Res call({String url});
}

class __$LaunchZoomAppCopyWithImpl<$Res>
    extends _$FirestoreEventCopyWithImpl<$Res>
    implements _$LaunchZoomAppCopyWith<$Res> {
  __$LaunchZoomAppCopyWithImpl(
      _LaunchZoomApp _value, $Res Function(_LaunchZoomApp) _then)
      : super(_value, (v) => _then(v as _LaunchZoomApp));

  @override
  _LaunchZoomApp get _value => super._value as _LaunchZoomApp;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(_LaunchZoomApp(
      url == freezed ? _value.url : url as String,
    ));
  }
}

class _$_LaunchZoomApp with DiagnosticableTreeMixin implements _LaunchZoomApp {
  const _$_LaunchZoomApp(this.url) : assert(url != null);

  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirestoreEvent.launchZoom(url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FirestoreEvent.launchZoom'))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LaunchZoomApp &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @override
  _$LaunchZoomAppCopyWith<_LaunchZoomApp> get copyWith =>
      __$LaunchZoomAppCopyWithImpl<_LaunchZoomApp>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(),
    @required Result setLinks(Map<dynamic, dynamic> links),
    @required Result setTimetable(List<dynamic> timetable),
    @required Result launchZoom(String url),
  }) {
    assert(getData != null);
    assert(setLinks != null);
    assert(setTimetable != null);
    assert(launchZoom != null);
    return launchZoom(url);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(),
    Result setLinks(Map<dynamic, dynamic> links),
    Result setTimetable(List<dynamic> timetable),
    Result launchZoom(String url),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (launchZoom != null) {
      return launchZoom(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(_Started value),
    @required Result setLinks(_SetLinks value),
    @required Result setTimetable(_SetTimetable value),
    @required Result launchZoom(_LaunchZoomApp value),
  }) {
    assert(getData != null);
    assert(setLinks != null);
    assert(setTimetable != null);
    assert(launchZoom != null);
    return launchZoom(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(_Started value),
    Result setLinks(_SetLinks value),
    Result setTimetable(_SetTimetable value),
    Result launchZoom(_LaunchZoomApp value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (launchZoom != null) {
      return launchZoom(this);
    }
    return orElse();
  }
}

abstract class _LaunchZoomApp implements FirestoreEvent {
  const factory _LaunchZoomApp(String url) = _$_LaunchZoomApp;

  String get url;
  _$LaunchZoomAppCopyWith<_LaunchZoomApp> get copyWith;
}

class _$FirestoreStateTearOff {
  const _$FirestoreStateTearOff();

// ignore: unused_element
  _FirestoreState call({List<dynamic> timetable, Map<dynamic, dynamic> links}) {
    return _FirestoreState(
      timetable: timetable,
      links: links,
    );
  }
}

// ignore: unused_element
const $FirestoreState = _$FirestoreStateTearOff();

mixin _$FirestoreState {
  List<dynamic> get timetable;
  Map<dynamic, dynamic> get links;

  $FirestoreStateCopyWith<FirestoreState> get copyWith;
}

abstract class $FirestoreStateCopyWith<$Res> {
  factory $FirestoreStateCopyWith(
          FirestoreState value, $Res Function(FirestoreState) then) =
      _$FirestoreStateCopyWithImpl<$Res>;
  $Res call({List<dynamic> timetable, Map<dynamic, dynamic> links});
}

class _$FirestoreStateCopyWithImpl<$Res>
    implements $FirestoreStateCopyWith<$Res> {
  _$FirestoreStateCopyWithImpl(this._value, this._then);

  final FirestoreState _value;
  // ignore: unused_field
  final $Res Function(FirestoreState) _then;

  @override
  $Res call({
    Object timetable = freezed,
    Object links = freezed,
  }) {
    return _then(_value.copyWith(
      timetable:
          timetable == freezed ? _value.timetable : timetable as List<dynamic>,
      links: links == freezed ? _value.links : links as Map<dynamic, dynamic>,
    ));
  }
}

abstract class _$FirestoreStateCopyWith<$Res>
    implements $FirestoreStateCopyWith<$Res> {
  factory _$FirestoreStateCopyWith(
          _FirestoreState value, $Res Function(_FirestoreState) then) =
      __$FirestoreStateCopyWithImpl<$Res>;
  @override
  $Res call({List<dynamic> timetable, Map<dynamic, dynamic> links});
}

class __$FirestoreStateCopyWithImpl<$Res>
    extends _$FirestoreStateCopyWithImpl<$Res>
    implements _$FirestoreStateCopyWith<$Res> {
  __$FirestoreStateCopyWithImpl(
      _FirestoreState _value, $Res Function(_FirestoreState) _then)
      : super(_value, (v) => _then(v as _FirestoreState));

  @override
  _FirestoreState get _value => super._value as _FirestoreState;

  @override
  $Res call({
    Object timetable = freezed,
    Object links = freezed,
  }) {
    return _then(_FirestoreState(
      timetable:
          timetable == freezed ? _value.timetable : timetable as List<dynamic>,
      links: links == freezed ? _value.links : links as Map<dynamic, dynamic>,
    ));
  }
}

class _$_FirestoreState
    with DiagnosticableTreeMixin
    implements _FirestoreState {
  const _$_FirestoreState({this.timetable, this.links});

  @override
  final List<dynamic> timetable;
  @override
  final Map<dynamic, dynamic> links;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FirestoreState(timetable: $timetable, links: $links)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FirestoreState'))
      ..add(DiagnosticsProperty('timetable', timetable))
      ..add(DiagnosticsProperty('links', links));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FirestoreState &&
            (identical(other.timetable, timetable) ||
                const DeepCollectionEquality()
                    .equals(other.timetable, timetable)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(timetable) ^
      const DeepCollectionEquality().hash(links);

  @override
  _$FirestoreStateCopyWith<_FirestoreState> get copyWith =>
      __$FirestoreStateCopyWithImpl<_FirestoreState>(this, _$identity);
}

abstract class _FirestoreState implements FirestoreState {
  const factory _FirestoreState(
      {List<dynamic> timetable,
      Map<dynamic, dynamic> links}) = _$_FirestoreState;

  @override
  List<dynamic> get timetable;
  @override
  Map<dynamic, dynamic> get links;
  @override
  _$FirestoreStateCopyWith<_FirestoreState> get copyWith;
}
