package io.appmetrica.analytics.internal.js;

import android.webkit.JavascriptInterface;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.impl.C2702m1;

public class AppMetricaJsInterface {
    private final C2702m1 a;

    public AppMetricaJsInterface(@NonNull C2702m1 c2702m1) {
        this.a = c2702m1;
    }

    @JavascriptInterface
    public void reportEvent(String str, String str2) {
        this.a.d(str, str2);
    }
}
