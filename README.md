# Dio Interceptor Plus

A powerful and customizable Dio interceptor for logging HTTP requests and responses in Dart and Flutter applications.

## Installation

Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  dio_interceptor_plus: [latest_version]
```

## Import it

Now in your Dart code, you can use:

```yaml
import 'package:dio_interceptor_plus/dio_interceptor_plus.dart';
```

Then run:

```yaml
$ flutter pub get
```

## Usage

Logging HTTP requests and responses is essential for debugging and understanding how your app interacts with APIs. The Dio Logging Interceptor is designed to provide detailed and customizable logs, aiding developers in troubleshooting and optimizing network-related issues.

## Features

- `Comprehensive Logging:` Capture detailed information about each HTTP request and its corresponding response.
- `Customizable Output:` Tailor the log output to suit your preferences, enabling or disabling specific details.
- `Easy Integration:` Seamless integration with the popular Dio HTTP client library.
  Versatility: Suitable for both Dart and Flutter projects.

## Example

```dart
import 'package:dio/dio.dart';
import 'package:dio_interceptor_plus/dio_interceptor_plus.dart';
import 'package:flutter/cupertino.dart';

void main() async {
  // Create Dio instance
  final dio = Dio();

  // Add logging interceptor for request and response
  dio.interceptors.add(LoggingInterceptor());

  // Example HTTP Request
  try {
    await dio.get('https://jsonplaceholder.typicode.com/posts/1');
  } catch (e) {
    // Handle errors
    debugPrint('Error: $e');
  }
}
```

## Output
```
🚀 🌐 Request 🌐 🚀
🔗 URL: https://jsonplaceholder.typicode.com/posts/1
🤔 Method: GET
📋 Headers: {}
🔍 Query Parameters: {}
📤 Request Data: null
---------------------
✅ 🌐 Response 🌐 ✅
🔗 URL: https://jsonplaceholder.typicode.com/posts/1
🔒 Status Code: 200
📋 Headers: {"cache-control":["max-age=43200"],"content-type":["application/json; charset=utf-8"],"expires":["-1"],"pragma":["no-cache"]}
📥 Response Data: {userId: 1, id: 1, title: sunt aut facere repellat provident occaecati excepturi optio reprehenderit, body: quia et suscipit
suscipit recusandae consequuntur expedita et cum
reprehenderit molestiae ut ut quas totam
nostrum rerum est autem sunt rem eveniet architecto}
-----------------------
```

## Configuration

You can customize the logging behavior by adjusting the LoggingInterceptor class in your project. Explore the options available to tailor the logs according to your specific needs.

## License

This package is distributed under the <a href="https://opensource.org/license/mit/">MIT License</a>. See <a href="https://pub.dev/packages/dio_interceptor_plus/license">LICENSE</a> for details.
