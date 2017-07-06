
# react-native-locale-manager

## Getting started

`$ npm install react-native-locale-manager --save`

### Mostly automatic installation

`$ react-native link react-native-locale-manager`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-locale-manager` and add `RNLocaleManager.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNLocaleManager.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNLocaleManagerPackage;` to the imports at the top of the file
  - Add `new RNLocaleManagerPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-locale-manager'
  	project(':react-native-locale-manager').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-locale-manager/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-locale-manager')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNLocaleManager.sln` in `node_modules/react-native-locale-manager/windows/RNLocaleManager.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Com.Reactlibrary.RNLocaleManager;` to the usings at the top of the file
  - Add `new RNLocaleManagerPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import LocaleManager from 'react-native-locale-manager';

// get locale
LocaleManager.get().then((locale) => {
	console.log("[Profile getLocale]", locale)
});

// set locale
LocaleManager.set(locale);

// clear
LocaleManager.clear();


```
  