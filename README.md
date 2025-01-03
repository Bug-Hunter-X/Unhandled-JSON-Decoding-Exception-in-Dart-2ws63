# Unhandled JSON Decoding Exception in Dart

This example demonstrates a common error in Dart applications involving network requests and JSON parsing.  The code attempts to fetch data from a remote API, decode the JSON response, and handle potential exceptions during the process.  The bug lies in the lack of robust error handling for malformed JSON responses.

## Bug Description
The `fetchData` function uses `jsonDecode` to parse the JSON response. If the server sends an invalid JSON string, a `FormatException` will be thrown, potentially causing the application to crash.  The provided solution shows how to improve error handling to prevent crashes and provide more informative error messages.

## Solution
The improved code incorporates a `try-catch` block to catch `FormatException` and provide specific error handling for invalid JSON.  It also improves general exception handling for network errors and other unexpected situations.