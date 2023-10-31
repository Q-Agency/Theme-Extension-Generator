# Motivation

Dart is awesome, but defining a "model" can be tedious. We may have to:

- define a constructor + the properties
- override `toString`, `operator ==`, `hashCode`
- implement a `copyWith` method to clone the object
- handling de/serialization

Implementing all of this can take hundreds of lines, which are error-prone
and affect the readability of your model significantly.

Freezed tries to fix that by implementing most of this for you, allowing you
to focus on the definition of your model.


# How to use

## Install

To use **[Theme_Extension_Generator]**, you will need your typical [build_runner]/code-generator setup.\
First, install [build_runner] and [Freezed] by adding them to your `pubspec.yaml` file:

For a Flutter project:

```console
flutter pub add freezed_annotation
flutter pub add dev:build_runner
flutter pub add dev:freezed
# if using freezed to generate fromJson/toJson, also add:
flutter pub add json_annotation
flutter pub add dev:json_serializable
```

For a Dart project:

```console
dart pub add freezed_annotation
dart pub add dev:build_runner
dart pub add dev:freezed
# if using freezed to generate fromJson/toJson, also add:
dart pub add json_annotation
dart pub add dev:json_serializable
```
