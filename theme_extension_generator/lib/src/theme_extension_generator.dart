import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:theme_extension_generator/annotations.dart';

class ThemeExtensionGenerator
    extends GeneratorForAnnotation<ThemeExtensionGen> {
  late String type;

  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    type = annotation.read('forType').literalValue as String;
    final className =
        (annotation.read('className').literalValue as String?) ?? element.name;

    final constructor = element.children
        .firstWhere((child) => child.kind == ElementKind.CONSTRUCTOR);
    final fields = constructor.children.map((field) => field.name);

    final instanceVariables = fields.map(_generateInstanceVariable).join(';\n');
    final constructorProperties =
        fields.map(_generateRequiredConstructorProperty).join(',\n');
    final nullableProperties =
        fields.map(_generateCopyWithProperty).join(',\n');
    final copyWithProperties = fields.map(_generateCopyWithRow).join(',\n');
    final lerpRows = fields.map(_generateLerpRow).join(',\n');

    return '''
    class _\$$className<T> extends ThemeExtension<_\$$className> {
      $instanceVariables;

      const _\$$className({
        $constructorProperties,
      });

      @override
      _\$$className copyWith({
        $nullableProperties,
      }) => $className(
        $copyWithProperties,
      );

      @override
      _\$$className lerp(_\$$className? other, double t) {
        if (other is! _\$$className) {
          return this;
        }
        return _\$$className(
          $lerpRows,
        );
      }
    }
    ''';
  }

  String _generateCopyWithRow(String? field) => '$field: $field ?? this.$field';
  String _generateLerpRow(String? field) =>
      '$field: $type.lerp($field, other.$field, t)';
  String _generateInstanceVariable(String? field) => 'final $type? $field';
  String _generateCopyWithProperty(String? field) => '$type? $field';
  String _generateRequiredConstructorProperty(String? field) =>
      'required this.$field';
}
