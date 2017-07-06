/**
 * Locale manager to get and set user locale settings
 * iOS:         "AppleLanguages" in NSUserDefaults
 * Android:     "locale_override" in SharedPreferences
 * 
 * http://githubt.com/twairball/react-native-locale-manager/
 * 
 * LICENSE: MIT
 */
import { NativeModules } from 'react-native';
const { RNLocaleManager } = NativeModules;

class LocaleManager {

    static get() {
        return RNLocaleManager.get("ignore-this-argument")
    }

    static set(locale) {
        RNLocaleManager.set(locale);
    };

    static clear() {
        RNLocaleManager.clear();
    }
}

export default LocaleManager;