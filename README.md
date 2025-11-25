# Object Detector and chatbot

AI Object Detector & Chatbot is implemented using [Flutter](https://flutter.dev). The app uses [Google's ML Kit Image Labeling](https://pub.dev/packages/google_mlkit_image_labeling) to detect and extract information about entities in an image and Generative AI model used for the project:[Gemini 2.5 Flash](https://ai.google.dev/gemini-api/docs) for AI-powered chatbot responses.

<p float="left">
    <img src="images\image1.jpg" alt="Splash view" width="250">
    <img src="images\image2.jpg" alt="signin view" width="250">
    <img src="images\image3.jpg" alt="signup view" width="250">
    <img src="images\image4.jpg" alt="chatbot view" width="250">
    <img src="images\image5.jpg" alt="objectdetection view" width="250">
</p>

## Getting Started

You can follow these instructions to build the app and install it onto your device.

### Prerequisites

If you are new to Flutter, please first follow the [Flutter Setup](https://flutter.dev/setup/) guide.


To use the Gemini API for AI chatbot, you'll need an API key. If you don't already have one, create a key in Google AI Studio: https://aistudio.google.com/api-keys.

App uses the google mlkit image labbeling package for which following version should have in .\android\build.gradle.kts.

minSdkVersion: 21
targetSdkVersion: 35
compileSdkVersion: 35

App also uses the image picker for picking image from gallery or camera so the following permssion should be added in Android/app/src/main/AndroidManifest.xml.

<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
<uses-permission android:name="android.permission.CAMERA"/>

When running the app, include your API key using the `--dart-define` flag:

```bash
flutter run --dart-define API_KEY=$GOOGLE_API_KEY
```

### _Optional: Configuration in regions where Gemini API is unavailable_

Here you can see all the available regions for the Gemini API: https://ai.google.dev/available_regions

In such regions, you need to access Gemini via Vertex AI service from Google Cloud Platform:

1. Create your GCP project and enable Vertex AI by following the quickstart guide: https://cloud.google.com/vertex-ai/docs/generative-ai/start/quickstarts/api-quickstart
2. Generate your API key using gcloud CLI:

```bash
gcloud auth print-access-token
```

3. Check your project ID and region. Using these values, generate the URL for your project. It should look like this:

```
https://{region}-aiplatform.googleapis.com/v1/projects/{project-id}/locations/{region}/publishers/google/models
```

4. Pass the API key and project URL to the app using the `--dart-define` flag:

```bash
flutter run --dart-define API_KEY=$GOOGLE_API_KEY --dart-define VERTEX_AI_PROJECT_URL=$VERTEX_AI_PROJECT_URL
```
