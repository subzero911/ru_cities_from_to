library ru_cities_from_to;

class RuCities {
  RuCities._();

  // согласные
  static const _consonants = [
    'б',
    'в',
    'г',
    'д',
    'ж',
    'з',
    'й',
    'к',
    'л',
    'м',
    'н',
    'п',
    'р',
    'с',
    'т',
    'ф',
    'х',
    'ц',
    'ч',
    'ш',
    'щ'
  ];

  /// Откуда.
  /// 
  /// Например, "из Уфы"
  static String from(String city) {
    // Исключения:
    if (city == 'Комсомольск-на-Амуре') {
      return 'Комсомольска-на-Амуре';
    }
    if (city == 'Ростов-на-Дону') {
      return 'Ростова-на-Дону';
    }
    if (city == 'Великий Новгород') {
      return 'Великого Новгорода';
    }
    if (city == 'Нижний Новгород') {
      return 'Нижнего Новгорода';
    }
    if (city == 'Минеральные воды') {
      return 'Минеральных вод';
    }
    if (city == 'Люберцы') {
      return 'Люберец';
    }
    if (city == 'Апатиты') {
      return 'Апатитов';
    }
    if (city == 'Сланцы') {
      return 'Сланцев';
    }

    final lastLetter = city[city.length - 1];
    final lastTwoLetters = city.substring(city.length - 2, city.length);
    final root = city.substring(0, city.length - 1); // название без последней буквы

    // Сначала проверяем последние 2 буквы

    // Ставрополь - Ставрополя
    if (lastTwoLetters == 'ль') {
      return '${city.substring(0, city.length - 2)}ля';
    }

    // Торжок - Торжка
    if (lastTwoLetters == 'ок') {
      return '${city.substring(0, city.length - 2)}ка';
    }

    // Бологое - Бологого
    if (lastTwoLetters == 'ое') {
      return '$rootго';
    }

    // Янтарный - Янтарного
    if (lastTwoLetters == 'ый') {
      return '${city.substring(0, city.length - 2)}ого';
    }

    // Теперь последнюю 1 букву

    // Все города, оканчивающиеся на согласную: Ангарск, Мышкин, Углич, Мурманск, Псков
    // Мурманск - Мурманска
    if (_consonants.contains(lastLetter)) {
      return '$cityа';
    }

    // Кемь - Кеми, Тверь - Твери
    if (lastLetter == 'ь') {
      return '$rootи';
    }

    // Москва - Москвы, Самара - Самары
    if (lastLetter == 'а') {
      return '$rootы';
    }

    // Шуя - Шуи
    if (lastLetter == 'я') {
      return '$rootи';
    }

    // Кемерово - Кемерова
    if (lastLetter == 'о') {
      return '$rootа';
    }
    
    // Чебоксары - Чебоксар
    if (lastLetter == 'ы') {
      return root;
    }    

    // Тольятти, Сочи - не изменяются
    return city;
  }

  /// Куда.
  /// 
  /// Например, "в Уфу"
  static String to(String city) {
    final lastLetter = city[city.length - 1];
    final root = city.substring(0, city.length - 1);

    // Москва - Москву
    if (lastLetter == 'а') {
      return '$rootу';
    }

    // Шуя - Шую
    if (lastLetter == 'я') {
      return '$rootю';
    }

    return city;
  }
}
