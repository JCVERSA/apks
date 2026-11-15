package androidx.biometric;

import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

class AuthenticatorUtils {
    private static final int BIOMETRIC_CLASS_MASK = 32767;

    private AuthenticatorUtils() {
    }

    public static String convertToString(int i) {
        if (i == 15) {
            return "BIOMETRIC_STRONG";
        }
        if (i == 255) {
            return "BIOMETRIC_WEAK";
        }
        if (i == 32768) {
            return "DEVICE_CREDENTIAL";
        }
        if (i != 32783) {
            return i != 33023 ? String.valueOf(i) : "BIOMETRIC_WEAK | DEVICE_CREDENTIAL";
        }
        return "BIOMETRIC_STRONG | DEVICE_CREDENTIAL";
    }

    public static int getConsolidatedAuthenticators(@NonNull BiometricPrompt.PromptInfo promptInfo, @Nullable BiometricPrompt.CryptoObject cryptoObject) {
        if (promptInfo.getAllowedAuthenticators() != 0) {
            return promptInfo.getAllowedAuthenticators();
        }
        int i = cryptoObject != null ? 15 : 255;
        return promptInfo.isDeviceCredentialAllowed() ? 32768 | i : i;
    }

    public static boolean isDeviceCredentialAllowed(int i) {
        return (i & 32768) != 0;
    }

    public static boolean isSomeBiometricAllowed(int i) {
        return (i & BIOMETRIC_CLASS_MASK) != 0;
    }

    public static boolean isSupportedCombination(int i) {
        if (i == 15 || i == 255) {
            return true;
        }
        if (i == 32768) {
            return Build.VERSION.SDK_INT >= 30;
        }
        if (i != 32783) {
            return i == 33023 || i == 0;
        }
        return Build.VERSION.SDK_INT > 29;
    }

    public static boolean isWeakBiometricAllowed(int i) {
        return (i & 255) == 255;
    }
}
