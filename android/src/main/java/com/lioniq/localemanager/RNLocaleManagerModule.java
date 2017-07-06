
package com.lioniq.localemanager;

import android.content.Context;
import android.content.SharedPreferences;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.Promise;

public class RNLocaleManagerModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNLocaleManagerModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNLocaleManager";
  }

  @ReactMethod
  public void get(String aString, Promise promise) {
    promise.resolve(getPreferences().getString("locale_override", null));
  }

  @ReactMethod
  public void set(String locale) {
    getEditor().putString("locale_override", locale).commit();
  }

  @ReactMethod
  public void clear() {
    getEditor().remove("locale_override").commit();
  }

  private SharedPreferences getPreferences() {
    return getReactApplicationContext().getSharedPreferences("react-native", Context.MODE_PRIVATE);
  }
  private SharedPreferences.Editor getEditor() {
    return getPreferences().edit();
  }

}