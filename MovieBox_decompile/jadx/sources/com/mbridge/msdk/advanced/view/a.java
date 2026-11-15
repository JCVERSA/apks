package com.mbridge.msdk.advanced.view;

import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.ValueCallback;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.alibaba.sdk.android.oss.common.OSSHeaders;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.advanced.middle.c;
import com.mbridge.msdk.foundation.same.directory.e;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.base.b;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.model.AdPayload;
import java.io.FileInputStream;
import java.net.URLDecoder;
import java.util.HashMap;

public class a extends b {

    private final String f33427c = "NativeAdvancedWebViewClient";

    private final String f33428d;

    private final String f33429e;

    String f33430f;

    com.mbridge.msdk.advanced.middle.a f33431g;

    private c f33432h;

    class C0447a implements ValueCallback<String> {
        C0447a() {
        }

        @Override
        public void onReceiveValue(String str) {
        }
    }

    public a(String str, com.mbridge.msdk.advanced.middle.a aVar, c cVar) {
        com.mbridge.msdk.foundation.same.directory.c cVar2 = com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_VC;
        this.f33428d = e.b(cVar2) != null ? e.b(cVar2) : i0.a("YkRXhr5AWBPfNgzuH7JQ+2Ha");
        this.f33429e = i0.a("Y+xgWkl2");
        this.f33430f = str;
        this.f33431g = aVar;
        this.f33432h = cVar;
    }

    private WebResourceResponse a(WebView webView, String str) {
        if (!TextUtils.isEmpty(str) && this.f33432h != null) {
            try {
                String strA = "";
                if (str.startsWith(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE) && str.startsWith(this.f33428d)) {
                    strA = str.replace(AdPayload.FILE_SCHEME, "");
                }
                if (a(str)) {
                    strA = this.f33432h.a(URLDecoder.decode(Uri.parse(str).getQueryParameter("uri")));
                }
                if (!TextUtils.isEmpty(strA) && a(strA, this.f33428d)) {
                    o0.a("NativeAdvancedWebViewClient", "replace url : " + strA);
                    if (!strA.contains("127.0.0.1") && !strA.startsWith("http")) {
                        HashMap map = new HashMap();
                        map.put(OSSHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, "*");
                        WebResourceResponse webResourceResponse = new WebResourceResponse(MimeTypes.VIDEO_MP4, "utf-8", new FileInputStream(strA));
                        webResourceResponse.setResponseHeaders(map);
                        return webResourceResponse;
                    }
                    return null;
                }
            } catch (Throwable th2) {
                o0.b("NativeAdvancedWebViewClient", th2.getMessage());
            }
        }
        return null;
    }

    public void b() {
        if (this.f33432h != null) {
            this.f33432h = null;
        }
    }

    @Override
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        try {
            webView.evaluateJavascript("javascript:" + com.mbridge.msdk.setting.util.a.a().b(), new C0447a());
        } catch (Throwable th2) {
            o0.b("NativeAdvancedWebViewClient", "onPageStarted", th2);
        }
    }

    @Override
    @Nullable
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return a(webView, str);
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        try {
            try {
                WindVaneWebView windVaneWebView = (WindVaneWebView) webView;
                if (System.currentTimeMillis() - windVaneWebView.lastTouchTime > com.mbridge.msdk.click.utils.a.f33614c && com.mbridge.msdk.click.utils.a.a(((com.mbridge.msdk.advanced.signal.b) windVaneWebView.getObject()).a().get(0), windVaneWebView.getUrl(), com.mbridge.msdk.click.utils.a.f33613b)) {
                    return false;
                }
            } catch (Exception e10) {
                o0.b("NativeAdvancedWebViewClient", e10.getMessage());
            }
            o0.b("NativeAdvancedWebViewClient", "Use html to open url.");
            com.mbridge.msdk.advanced.middle.a aVar = this.f33431g;
            if (aVar == null) {
                return true;
            }
            aVar.a(false, str);
            return true;
        } catch (Throwable th2) {
            o0.b("NativeAdvancedWebViewClient", "shouldOverrideUrlLoading", th2);
            return false;
        }
    }

    @Override
    @Nullable
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        return a(webView, webResourceRequest.getUrl().toString());
    }

    private boolean a(String str) {
        Uri uri;
        String scheme;
        if (TextUtils.isEmpty(str) || (uri = Uri.parse(str)) == null || (scheme = uri.getScheme()) == null || TextUtils.isEmpty(scheme)) {
            return false;
        }
        return scheme.equals(this.f33429e) || scheme.equals("mb-h5");
    }
}
