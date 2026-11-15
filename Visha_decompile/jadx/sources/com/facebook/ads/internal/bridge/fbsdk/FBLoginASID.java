package com.facebook.ads.internal.bridge.fbsdk;

import android.annotation.SuppressLint;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import com.facebook.infer.annotation.Nullsafe;

@Keep
@Nullsafe(Nullsafe.Mode.LOCAL)
public class FBLoginASID {
    @Nullable
    @SuppressLint({"CatchGeneralException"})
    public static String getFBLoginASID() {
        try {
            Object objInvoke = Class.forName("com.facebook.AccessToken").getDeclaredMethod("getCurrentAccessToken", null).invoke(null, null);
            if (objInvoke != null) {
                return (String) Class.forName("com.facebook.AccessToken").getDeclaredMethod("getUserId", null).invoke(objInvoke, null);
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
