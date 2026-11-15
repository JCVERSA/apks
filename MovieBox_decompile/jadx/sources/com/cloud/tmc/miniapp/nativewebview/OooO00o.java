package com.cloud.tmc.miniapp.nativewebview;

import android.content.Context;
import android.graphics.Bitmap;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.cloud.tmc.kernel.render.WebviewPageEventCallback;
import kotlin.jvm.internal.Intrinsics;

public final class OooO00o extends WebChromeClient {
    public WebviewPageEventCallback OooO00o;

    public OooO00o(Context context, WebviewPageEventCallback webviewPageEventCallback) {
        Intrinsics.h(context, "context");
        this.OooO00o = webviewPageEventCallback;
    }

    @Override
    public void onProgressChanged(WebView webView, int i10) {
        super.onProgressChanged(webView, i10);
        WebviewPageEventCallback webviewPageEventCallback = this.OooO00o;
        if (webviewPageEventCallback != null) {
            webviewPageEventCallback.onProgressChanged(webView, i10);
        }
    }

    @Override
    public void onReceivedIcon(WebView webView, Bitmap bitmap) {
        super.onReceivedIcon(webView, bitmap);
        WebviewPageEventCallback webviewPageEventCallback = this.OooO00o;
        if (webviewPageEventCallback != null) {
            webviewPageEventCallback.onReceivedIcon(bitmap);
        }
    }

    @Override
    public void onReceivedTitle(WebView webView, String str) {
        super.onReceivedTitle(webView, str);
        WebviewPageEventCallback webviewPageEventCallback = this.OooO00o;
        if (webviewPageEventCallback != null) {
            webviewPageEventCallback.onReceivedTitle(str);
        }
    }
}
