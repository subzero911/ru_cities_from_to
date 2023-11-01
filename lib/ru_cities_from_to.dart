library ru_cities_from_to;

class RuCities {
  // согласные
  static const consonants = [
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

  static String from(String city) {
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
    if (consonants.contains(lastLetter)) {
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
    if (lastLetter == 'o') {
      return '$rootа';
    }    

    // Исключения:
    if (city == 'Комсомольск-на-Амуре') {
      return 'Комсомольска-на-Амуре';
    }
    if (city == 'Ростов-на-Дону') {
      return 'Ростова-на-Дону';
    }
    if (city == 'Гусь-Хрустальный') {
      return 'Гусь-Хрустального';
    }
    if (city == 'Орехово-Зуево') {
      return 'Орехово-Зуева';
    }
    if (city == 'Великий Новгород') {
      return 'Великого Новгорода';
    }
    if (city == 'Нижний Новгород') {
      return 'Нижнего Новгорода';
    }

    // Тольятти, Сочи - не изменяются
    return city;
  }

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
