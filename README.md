# Unhandled JSON Key Access in Dart

This repository demonstrates a common error in Dart applications involving handling JSON responses from APIs. The code attempts to access a key that might not exist in the JSON, leading to a runtime exception.  The solution shows how to safely access JSON data and handle potential errors gracefully. 

## Bug

The `bug.dart` file contains the erroneous code. It fetches JSON data and attempts to access a key that may be missing. This will cause a runtime error if the key is not present.

## Solution

The `bugSolution.dart` file provides a corrected version.  It uses a null-aware operator (?.) to safely access the key and handles the case where the key is missing.