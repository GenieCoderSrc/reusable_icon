# app_float_button

A simple and flexible package that provides reusable floating icon buttons with consistent styling and behavior, including selectable state support for toggle-like icons in your Flutter apps.

## Features
- Reusable styled icon via `AppIcon`
- Customizable circular floating icon button with `AppIconBtn`
- `SelectableIcon` widget for toggling UI states with visual feedback

## Getting Started
Add the package to your `pubspec.yaml`:

```yaml
resolution: workspace

dependencies:
  app_float_button: <latest_version>
```

## Usage
### AppIcon
A minimal reusable `Icon` with default size.
```dart
AppIcon(Icons.add)
```

### AppIconBtn
A floating circular icon button.
```dart
AppIconBtn(
  icon: Icons.edit,
  tooltipTxt: 'Edit Item',
  onPressed: () {
    // Your logic here
  },
)
```

### SelectableIcon
Use for toggle-like selections.
```dart
SelectableIcon(
  isSelected: true,
  selectedIcon: Icons.check,
  unSelectedIcon: Icons.close,
  selectedIconColor: Colors.green,
  unSelectedIconColor: Colors.red,
  selectedCircleColor: Colors.green.shade100,
  unSelectedCircleColor: Colors.red.shade100,
  iconSize: 20.0,
  circleWide: 2.5,
)
```

## License
MIT License

## Contributions
Feel free to contribute issues or improvements through pull requests.

