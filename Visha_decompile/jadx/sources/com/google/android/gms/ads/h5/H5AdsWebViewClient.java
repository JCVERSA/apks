package com.google.android.gms.ads.h5;

import android.content.Context;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import defpackage.p4f;
import defpackage.s4f;

@RequiresApi(api = 21)
public final class H5AdsWebViewClient extends p4f {
    public final s4f a;

    public H5AdsWebViewClient(@NonNull Context context, @NonNull WebView webView) {
        this.a = new s4f(context, webView);
    }

    @Override
    public WebViewClient a() {
        return this.a;
    }

    public void clearAdObjects() {
        this.a.b();
    }

    @Nullable
    public WebViewClient getDelegateWebViewClient() {
        return this.a.a();
    }

    public void setDelegateWebViewClient(@Nullable WebViewClient webViewClient) {
        this.a.c(webViewClient);
    }
}
