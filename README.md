# AiACTIV Android SDK - Local maven repository

## Setup instruction
1. Add local maven repositories into project
   ```
   repositories {
       maven { url "https://github.com/AiACTIV/aiactiv-universal-sdk-android/raw/maven2/" }
       // Other repositories
   }
   ```
2. Add implementation for this sdk: (**Develop only**)
   ```
   dependencies {
     implementation 'io.aiactiv:universal-sdk-github:<latest_version>'
     // Other dependencies implementation
   }
   ```
   You might need to add these implementation in your application
   ```
   dependencies {
     // These dependencies can't fetch from local maven repository (or I don't know how to do it)
     implementation 'com.google.code.gson:gson:2.10.1'
     implementation 'com.github.bumptech.glide:glide:4.11.0'
     annotationProcessor 'com.github.bumptech.glide:compiler:4.11.0'
   }
   ```
   If you're using product flavors to separate environment, such as `dev` for development stage and `prod` for production stage, it's recommendation to use these implementation like this
   ```
   dependencies {
     devImplementation 'io.aiactiv:universal-sdk-github:<latest_version>'
     devImplementation 'com.google.code.gson:gson:2.10.1'
     devImplementation 'com.github.bumptech.glide:glide:4.11.0'
     devAnnotationProcessor 'com.github.bumptech.glide:compiler:4.11.0'
     // Other dependencies implementation
   }
   ```
