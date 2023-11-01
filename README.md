Small utility lib which helps you to create a train/bus schedule for Russian cities, with correct city name endings.

## Example

|Отправление  | Прибытие   |
|---|---|
| В Тверь 10:45 | Из Твери 12:30|
| В Ярославль 10:45 | Из Ярославля 12:30|
| В Ростов-на-Дону 10:45 | Из Ростова-на-Дону 12:30|


## Usage

```dart
RuCities.from('Тверь'); // --> 'Твери'
RuCities.to('Сочи'); // --> 'Сочи'
```

## Additional information

Please feel free to open issues if you found any incorrect endings.
