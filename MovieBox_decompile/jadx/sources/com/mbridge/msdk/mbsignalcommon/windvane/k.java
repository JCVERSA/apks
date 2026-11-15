package com.mbridge.msdk.mbsignalcommon.windvane;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.mbridge.msdk.foundation.tools.o0;

public class k extends com.mbridge.msdk.mbsignalcommon.base.b {

    protected String f35749c = null;

    private int f35750d = 0;

    private c f35751e;

    private WebResourceResponse a(String str) {
        try {
            if (TextUtils.isEmpty(str) || !i.e(str)) {
                return null;
            }
            o0.c("WindVaneWebViewClient", "is image " + str);
            Bitmap bitmapB = com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).b(str);
            o0.c("WindVaneWebViewClient", "find image from cache " + str);
            if (bitmapB == null || bitmapB.isRecycled()) {
                return null;
            }
            return new WebResourceResponse(i.b(str), "utf-8", com.mbridge.msdk.foundation.same.image.a.a(bitmapB));
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        this.f35749c = str;
        c cVar = this.f35751e;
        if (cVar != null) {
            cVar.a(webView, str, bitmap);
        }
    }

    @Override
    @TargetApi(11)
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        WebResourceResponse webResourceResponseA = a(str);
        if (webResourceResponseA == null) {
            return super.shouldInterceptRequest(webView, str);
        }
        o0.c("WindVaneWebViewClient", "find WebResourceResponse url is " + str);
        return webResourceResponseA;
    }
}
