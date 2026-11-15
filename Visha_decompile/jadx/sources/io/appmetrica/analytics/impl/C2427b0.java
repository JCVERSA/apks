package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.UUID;

public final class C2427b0 implements Pn {
    @Override
    public final Nn a(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return new Nn(this, false, "ApiKey is empty. Please, read official documentation how to obtain one: https://appmetrica.io/docs/mobile-sdk-dg/android/about/android-initialize.html");
        }
        try {
            UUID.fromString(str);
            return new Nn(this, true, "");
        } catch (Throwable unused) {
            return new Nn(this, false, "Invalid ApiKey=" + str + ". Please, read official documentation how to obtain one: https://appmetrica.io/docs/mobile-sdk-dg/android/about/android-initialize.html");
        }
    }
}
