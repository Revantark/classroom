// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'localstorage_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LocalstorageStateTearOff {
  const _$LocalstorageStateTearOff();

// ignore: unused_element
  ClassFound classFound(String classs) {
    return ClassFound(
      classs,
    );
  }

// ignore: unused_element
  Checking checking() {
    return const Checking();
  }

// ignore: unused_element
  ClassNotFound classNotFound() {
    return const ClassNotFound();
  }

// ignore: unused_element
  Failure failure() {
    return const Failure();
  }

// ignore: unused_element
  ClassChanged changedClass() {
    return const ClassChanged();
  }
}

// ignore: unused_element
const $LocalstorageState = _$LocalstorageStateTearOff();

mixin _$LocalstorageState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result classFound(String classs),
    @required Result checking(),
    @required Result classNotFound(),
    @required Result failure(),
    @required Result changedClass(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result classFound(String classs),
    Result checking(),
    Result classNotFound(),
    Result failure(),
    Result changedClass(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result classFound(ClassFound value),
    @required Result checking(Checking value),
    @required Result classNotFound(ClassNotFound value),
    @required Result failure(Failure value),
    @required Result changedClass(ClassChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result classFound(ClassFound value),
    Result checking(Checking value),
    Result classNotFound(ClassNotFound value),
    Result failure(Failure value),
    Result changedClass(ClassChanged value),
    @required Result orElse(),
  });
}

abstract class $LocalstorageStateCopyWith<$Res> {
  factory $LocalstorageStateCopyWith(
          LocalstorageState value, $Res Function(LocalstorageState) then) =
      _$LocalstorageStateCopyWithImpl<$Res>;
}

class _$LocalstorageStateCopyWithImpl<$Res>
    implements $LocalstorageStateCopyWith<$Res> {
  _$LocalstorageStateCopyWithImpl(this._value, this._then);

  final LocalstorageState _value;
  // ignore: unused_field
  final $Res Function(LocalstorageState) _then;
}

abstract class $ClassFoundCopyWith<$Res> {
  factory $ClassFoundCopyWith(
          ClassFound value, $Res Function(ClassFound) then) =
      _$ClassFoundCopyWithImpl<$Res>;
  $Res call({String classs});
}

class _$ClassFoundCopyWithImpl<$Res>
    extends _$LocalstorageStateCopyWithImpl<$Res>
    implements $ClassFoundCopyWith<$Res> {
  _$ClassFoundCopyWithImpl(ClassFound _value, $Res Function(ClassFound) _then)
      : super(_value, (v) => _then(v as ClassFound));

  @override
  ClassFound get _value => super._value as ClassFound;

  @override
  $Res call({
    Object classs = freezed,
  }) {
    return _then(ClassFound(
      classs == freezed ? _value.classs : classs as String,
    ));
  }
}

class _$ClassFound implements ClassFound {
  const _$ClassFound(this.classs) : assert(classs != null);

  @override
  final String classs;

  @override
  String toString() {
    return 'LocalstorageState.classFound(classs: $classs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClassFound &&
            (identical(other.classs, classs) ||
                const DeepCollectionEquality().equals(other.classs, classs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(classs);

  @override
  $ClassFoundCopyWith<ClassFound> get copyWith =>
      _$ClassFoundCopyWithImpl<ClassFound>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result classFound(String classs),
    @required Result checking(),
    @required Result classNotFound(),
    @required Result failure(),
    @required Result changedClass(),
  }) {
    assert(classFound != null);
    assert(checking != null);
    assert(classNotFound != null);
    assert(failure != null);
    assert(changedClass != null);
    return classFound(classs);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result classFound(String classs),
    Result checking(),
    Result classNotFound(),
    Result failure(),
    Result changedClass(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (classFound != null) {
      return classFound(classs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result classFound(ClassFound value),
    @required Result checking(Checking value),
    @required Result classNotFound(ClassNotFound value),
    @required Result failure(Failure value),
    @required Result changedClass(ClassChanged value),
  }) {
    assert(classFound != null);
    assert(checking != null);
    assert(classNotFound != null);
    assert(failure != null);
    assert(changedClass != null);
    return classFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result classFound(ClassFound value),
    Result checking(Checking value),
    Result classNotFound(ClassNotFound value),
    Result failure(Failure value),
    Result changedClass(ClassChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (classFound != null) {
      return classFound(this);
    }
    return orElse();
  }
}

abstract class ClassFound implements LocalstorageState {
  const factory ClassFound(String classs) = _$ClassFound;

  String get classs;
  $ClassFoundCopyWith<ClassFound> get copyWith;
}

abstract class $CheckingCopyWith<$Res> {
  factory $CheckingCopyWith(Checking value, $Res Function(Checking) then) =
      _$CheckingCopyWithImpl<$Res>;
}

class _$CheckingCopyWithImpl<$Res> extends _$LocalstorageStateCopyWithImpl<$Res>
    implements $CheckingCopyWith<$Res> {
  _$CheckingCopyWithImpl(Checking _value, $Res Function(Checking) _then)
      : super(_value, (v) => _then(v as Checking));

  @override
  Checking get _value => super._value as Checking;
}

class _$Checking implements Checking {
  const _$Checking();

  @override
  String toString() {
    return 'LocalstorageState.checking()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Checking);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result classFound(String classs),
    @required Result checking(),
    @required Result classNotFound(),
    @required Result failure(),
    @required Result changedClass(),
  }) {
    assert(classFound != null);
    assert(checking != null);
    assert(classNotFound != null);
    assert(failure != null);
    assert(changedClass != null);
    return checking();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result classFound(String classs),
    Result checking(),
    Result classNotFound(),
    Result failure(),
    Result changedClass(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checking != null) {
      return checking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result classFound(ClassFound value),
    @required Result checking(Checking value),
    @required Result classNotFound(ClassNotFound value),
    @required Result failure(Failure value),
    @required Result changedClass(ClassChanged value),
  }) {
    assert(classFound != null);
    assert(checking != null);
    assert(classNotFound != null);
    assert(failure != null);
    assert(changedClass != null);
    return checking(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result classFound(ClassFound value),
    Result checking(Checking value),
    Result classNotFound(ClassNotFound value),
    Result failure(Failure value),
    Result changedClass(ClassChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checking != null) {
      return checking(this);
    }
    return orElse();
  }
}

abstract class Checking implements LocalstorageState {
  const factory Checking() = _$Checking;
}

abstract class $ClassNotFoundCopyWith<$Res> {
  factory $ClassNotFoundCopyWith(
          ClassNotFound value, $Res Function(ClassNotFound) then) =
      _$ClassNotFoundCopyWithImpl<$Res>;
}

class _$ClassNotFoundCopyWithImpl<$Res>
    extends _$LocalstorageStateCopyWithImpl<$Res>
    implements $ClassNotFoundCopyWith<$Res> {
  _$ClassNotFoundCopyWithImpl(
      ClassNotFound _value, $Res Function(ClassNotFound) _then)
      : super(_value, (v) => _then(v as ClassNotFound));

  @override
  ClassNotFound get _value => super._value as ClassNotFound;
}

class _$ClassNotFound implements ClassNotFound {
  const _$ClassNotFound();

  @override
  String toString() {
    return 'LocalstorageState.classNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ClassNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result classFound(String classs),
    @required Result checking(),
    @required Result classNotFound(),
    @required Result failure(),
    @required Result changedClass(),
  }) {
    assert(classFound != null);
    assert(checking != null);
    assert(classNotFound != null);
    assert(failure != null);
    assert(changedClass != null);
    return classNotFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result classFound(String classs),
    Result checking(),
    Result classNotFound(),
    Result failure(),
    Result changedClass(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (classNotFound != null) {
      return classNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result classFound(ClassFound value),
    @required Result checking(Checking value),
    @required Result classNotFound(ClassNotFound value),
    @required Result failure(Failure value),
    @required Result changedClass(ClassChanged value),
  }) {
    assert(classFound != null);
    assert(checking != null);
    assert(classNotFound != null);
    assert(failure != null);
    assert(changedClass != null);
    return classNotFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result classFound(ClassFound value),
    Result checking(Checking value),
    Result classNotFound(ClassNotFound value),
    Result failure(Failure value),
    Result changedClass(ClassChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (classNotFound != null) {
      return classNotFound(this);
    }
    return orElse();
  }
}

abstract class ClassNotFound implements LocalstorageState {
  const factory ClassNotFound() = _$ClassNotFound;
}

abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

class _$FailureCopyWithImpl<$Res> extends _$LocalstorageStateCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(Failure _value, $Res Function(Failure) _then)
      : super(_value, (v) => _then(v as Failure));

  @override
  Failure get _value => super._value as Failure;
}

class _$Failure implements Failure {
  const _$Failure();

  @override
  String toString() {
    return 'LocalstorageState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result classFound(String classs),
    @required Result checking(),
    @required Result classNotFound(),
    @required Result failure(),
    @required Result changedClass(),
  }) {
    assert(classFound != null);
    assert(checking != null);
    assert(classNotFound != null);
    assert(failure != null);
    assert(changedClass != null);
    return failure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result classFound(String classs),
    Result checking(),
    Result classNotFound(),
    Result failure(),
    Result changedClass(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result classFound(ClassFound value),
    @required Result checking(Checking value),
    @required Result classNotFound(ClassNotFound value),
    @required Result failure(Failure value),
    @required Result changedClass(ClassChanged value),
  }) {
    assert(classFound != null);
    assert(checking != null);
    assert(classNotFound != null);
    assert(failure != null);
    assert(changedClass != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result classFound(ClassFound value),
    Result checking(Checking value),
    Result classNotFound(ClassNotFound value),
    Result failure(Failure value),
    Result changedClass(ClassChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements LocalstorageState {
  const factory Failure() = _$Failure;
}

abstract class $ClassChangedCopyWith<$Res> {
  factory $ClassChangedCopyWith(
          ClassChanged value, $Res Function(ClassChanged) then) =
      _$ClassChangedCopyWithImpl<$Res>;
}

class _$ClassChangedCopyWithImpl<$Res>
    extends _$LocalstorageStateCopyWithImpl<$Res>
    implements $ClassChangedCopyWith<$Res> {
  _$ClassChangedCopyWithImpl(
      ClassChanged _value, $Res Function(ClassChanged) _then)
      : super(_value, (v) => _then(v as ClassChanged));

  @override
  ClassChanged get _value => super._value as ClassChanged;
}

class _$ClassChanged implements ClassChanged {
  const _$ClassChanged();

  @override
  String toString() {
    return 'LocalstorageState.changedClass()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ClassChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result classFound(String classs),
    @required Result checking(),
    @required Result classNotFound(),
    @required Result failure(),
    @required Result changedClass(),
  }) {
    assert(classFound != null);
    assert(checking != null);
    assert(classNotFound != null);
    assert(failure != null);
    assert(changedClass != null);
    return changedClass();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result classFound(String classs),
    Result checking(),
    Result classNotFound(),
    Result failure(),
    Result changedClass(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changedClass != null) {
      return changedClass();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result classFound(ClassFound value),
    @required Result checking(Checking value),
    @required Result classNotFound(ClassNotFound value),
    @required Result failure(Failure value),
    @required Result changedClass(ClassChanged value),
  }) {
    assert(classFound != null);
    assert(checking != null);
    assert(classNotFound != null);
    assert(failure != null);
    assert(changedClass != null);
    return changedClass(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result classFound(ClassFound value),
    Result checking(Checking value),
    Result classNotFound(ClassNotFound value),
    Result failure(Failure value),
    Result changedClass(ClassChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changedClass != null) {
      return changedClass(this);
    }
    return orElse();
  }
}

abstract class ClassChanged implements LocalstorageState {
  const factory ClassChanged() = _$ClassChanged;
}
