import 'package:test/test.dart';

import 'package:ru_cities_from_to/ru_cities_from_to.dart';

void main() {
  test('Cities from', () {
    expect(RuCities.from('Ковров'), 'Коврова');
    expect(RuCities.from('Янтарный'), 'Янтарного');
    expect(RuCities.from('Торжок'), 'Торжка');
    expect(RuCities.from('Тверь'), 'Твери');
    expect(RuCities.from('Москва'), 'Москвы');
    expect(RuCities.from('Лобня'), 'Лобни');
    expect(RuCities.from('Бологое'), 'Бологого');
    expect(RuCities.from('Сочи'), 'Сочи');
    expect(RuCities.from('Гусь-Хрустальный'), 'Гусь-Хрустального');
    expect(RuCities.from('Кемерово'), 'Кемерова');
    expect(RuCities.from('Орехово-Зуево'), 'Орехово-Зуева');
  });

    test('Cities to', () {
    expect(RuCities.to('Ковров'), 'Ковров');
    expect(RuCities.to('Торжок'), 'Торжок');
    expect(RuCities.to('Тверь'), 'Тверь');
    expect(RuCities.to('Москва'), 'Москву');
    expect(RuCities.to('Лобня'), 'Лобню');
    expect(RuCities.to('Бологое'), 'Бологое');
    expect(RuCities.to('Сочи'), 'Сочи');
  });
}
