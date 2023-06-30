# aiactiv-universal-sdk-android
# Installing Maven with Gradle in Android Project

This guide will walk you through the steps to install Maven with Gradle in your Android project from a GitHub repository.

## Prerequisites

- Android Studio (latest version)
- Gradle (latest version)

## Step 1: Add Maven Repository to build.gradle

Open your project's `build.gradle` file and add the Maven repository URL under the `allprojects` section:

```groovy
allprojects {
    repositories {
        maven { url 'https://github.com/AiACTIV/aiactiv-universal-sdk-android/raw/maven2}
        // other repositories...
    }
}

