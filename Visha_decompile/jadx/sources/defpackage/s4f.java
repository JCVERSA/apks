package defpackage;

import android.content.Context;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.h5.H5AdsRequestHandler;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;
import com.google.android.gms.ads.internal.util.client.zzo;

public final class s4f extends p4f {
    public static final int d = 0;
    public WebViewClient a;
    public final H5AdsRequestHandler b;
    public final WebView c;

    public s4f(Context context, final WebView webView) {
        context.getClass();
        webView.getClass();
        v2i.f(webView.getSettings().getJavaScriptEnabled(), "JavaScript must be enabled on the WebView.");
        this.c = webView;
        this.b = new H5AdsRequestHandler(context, new OnH5AdsEventListener() {
            @Override
            public final void onH5AdsEvent(String str) {
                int i = s4f.d;
                webView.evaluateJavascript(str, null);
            }
        });
    }

    @Override
    public final WebViewClient a() {
        return this.a;
    }

    public final void b() {
        this.b.clearAdObjects();
    }

    public final void c(WebViewClient webViewClient) {
        v2i.f(webViewClient != this, "Delegate cannot be itself.");
        this.a = webViewClient;
    }

    public final boolean d(WebView webView) {
        if (this.c.equals(webView)) {
            return true;
        }
        zzo.zzg("H5AdsWebViewClient must be attached to the same WebVew which was passed in the constructor.");
        return false;
    }

    @Override
    public final void onLoadResource(WebView webView, String str) {
        if (d(webView) && !this.b.handleH5AdsRequest(str)) {
            super.onLoadResource(webView, str);
        }
    }

    @Override
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        if (!d(this.c)) {
            return false;
        }
        if (this.b.handleH5AdsRequest(webResourceRequest.getUrl().toString())) {
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, webResourceRequest);
    }

    @Override
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!d(webView)) {
            return false;
        }
        if (this.b.handleH5AdsRequest(str)) {
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, str);
    }
}
