// ignore_for_file: constant_identifier_names

library config;

// Nombre de la aplicación
const String APP_NAME = String.fromEnvironment('APP_NAME', defaultValue: 'Test Nextline');
const String API_URL = String.fromEnvironment('API_URL', defaultValue: 'https://ecsdevapi.nextline.mx/vdev/tasks-challenge/');
const String TOKEN = String.fromEnvironment('TOKEN', defaultValue: 'e864a0c9eda63181d7d65bc73e61e3dc6b74ef9b82f7049f1fc7d9fc8f29706025bd271d1ee1822b15d654a84e1a0997b973a46f923cc9977b3fcbb064179ecd');
