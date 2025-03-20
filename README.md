# RickYMortyAPP

## Introducción
Hola, he creado esta sencilla aplicación con el lenguaje Dart. Ya manejo JavaScript y Python, por lo que empecé haciendo una lista de características de Python a Dart, como nombrar variables, loops, arreglos, operadores numéricos, etc. Antes ya había hecho consumo de APIs, pero usé React para hacer un blog de Star Wars.

## Requisitos Previos
Antes de ejecutar el proyecto, asegúrate de tener lo siguiente instalado en tu máquina:
- **Flutter SDK**: Versión 3.0 o superior. Sigue las instrucciones de instalación en [flutter.dev](https://flutter.dev/docs/get-started/install).
- **Dart**: Viene incluido al descargar el framework de Flutter.
- **Un editor de código**: Recomiendo Visual Studio Code con las extensiones de Flutter y Dart, o Android Studio.
- **Un emulador de Android o un dispositivo físico**: Para ejecutar la app en Android (puedes usar un emulador como `sdk gphone64 x86 64`).
- **Google Chrome**: Para ejecutar la app en la web.
- **Git**: Para clonar el repositorio.

## Instalación y Ejecución
Sigue estos pasos para descargar y ejecutar el proyecto:

1. **Clona el repositorio**:
   ```bash
   git clone https://github.com/boogiepop-135/RickYMortyAPP.git

   Navega al directorio del proyecto:

bash

Contraer

Ajuste

Copiar
cd RickYMortyAPP
Instala las dependencias:
Asegúrate de estar en el directorio del proyecto y ejecuta:

bash

Contraer

Ajuste

Copiar
flutter pub get
Verifica los dispositivos disponibles:
Asegúrate de que tienes un emulador Android o un navegador web (como Chrome) disponible:

bash

Contraer

Ajuste

Copiar
flutter devices
Deberías ver una lista de dispositivos, por ejemplo:

text

Contraer

Ajuste

Copiar
sdk gphone64 x86 64 (mobile) • emulator-5554 • android-x64    • Android 16 (API 36) (emulator)
Chrome (web)                 • chrome        • web-javascript • Google Chrome 134.0.6998.90
Si no ves un emulador Android, inicia uno:
bash

Contraer

Ajuste

Copiar
flutter emulators --launch <emulator_id>
Por ejemplo:
bash

Contraer

Ajuste

Copiar
flutter emulators --launch sdk_gphone64_x86_64
Ejecuta la aplicación:

Para ejecutar en un emulador Android:
bash

Contraer

Ajuste

Copiar
flutter run -d <device_id>
Por ejemplo:
bash

Contraer

Ajuste

Copiar
flutter run -d emulator-5554
Para ejecutar en Chrome (web):
bash

Contraer

Ajuste

Copiar
flutter run -d chrome
La app se compilará y se ejecutará en el dispositivo seleccionado. Si hay múltiples dispositivos conectados, Flutter te pedirá que elijas uno.
