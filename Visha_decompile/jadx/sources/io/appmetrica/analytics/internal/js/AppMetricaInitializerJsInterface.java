package io.appmetrica.analytics.internal.js;

import android.webkit.JavascriptInterface;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.impl.C2702m1;

public class AppMetricaInitializerJsInterface {
    private final C2702m1 a;

    public AppMetricaInitializerJsInterface(@NonNull C2702m1 c2702m1) {
        this.a = c2702m1;
    }

    @JavascriptInterface
    public void init(String str) {
        this.a.c(str);
    }
}
