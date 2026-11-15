package com.cloud.hisavana.sdk.common.activity;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.SSPParamSplicedResult;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.google.android.gms.ads.MobileAds;
import defpackage.cjb;
import defpackage.ikd;
import defpackage.jm4;
import java.lang.ref.WeakReference;
import java.util.HashMap;

public class OnlineLandingActivity extends b {

    public static final class a extends jm4 {
        public int a;
        public final WeakReference b;

        public a(OnlineLandingActivity onlineLandingActivity) {
            this.b = new WeakReference(onlineLandingActivity);
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
            OnlineLandingActivity onlineLandingActivity;
            super.onPageFinished(webView, str);
            ikd.b().d("OnlineLandingActivity", "onPageFinished: progress=" + webView.getProgress());
            if (webView.getProgress() < 100 || this.a <= 0 || (onlineLandingActivity = (OnlineLandingActivity) this.b.get()) == null) {
                return;
            }
            AthenaTracker.j0(onlineLandingActivity.i, this.a);
        }

        @Override
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WebPageBean webPageBean;
            super.onPageStarted(webView, str, bitmap);
            ikd.b().d("OnlineLandingActivity", "onPageStarted: " + str);
            OnlineLandingActivity onlineLandingActivity = (OnlineLandingActivity) this.b.get();
            if (onlineLandingActivity == null || (webPageBean = onlineLandingActivity.s) == null) {
                return;
            }
            webPageBean.setLoadStartTime(System.currentTimeMillis());
            if (TextUtils.isEmpty(str) || !cjb.e(onlineLandingActivity.s.getTargetUrl(), str) || onlineLandingActivity.p) {
                return;
            }
            onlineLandingActivity.p = true;
            AthenaTracker.u0(onlineLandingActivity.s.getWebId(), onlineLandingActivity.s.getUrl(), onlineLandingActivity.s.getTargetUrl(), 0, onlineLandingActivity.s.getRedirectType(), onlineLandingActivity.s.getLoadTime());
        }

        @Override
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
        }

        @Override
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            OnlineLandingActivity onlineLandingActivity = (OnlineLandingActivity) this.b.get();
            if (onlineLandingActivity == null || onlineLandingActivity.s == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString()) || !cjb.e(onlineLandingActivity.s.getTargetUrl(), webResourceRequest.getUrl().toString())) {
                return;
            }
            onlineLandingActivity.n = true;
            onlineLandingActivity.s.setErrorType("error");
            onlineLandingActivity.s.setErrorCode(webResourceResponse.getStatusCode());
            onlineLandingActivity.j(webResourceResponse.getStatusCode());
        }

        @Override
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            WebPageBean webPageBean;
            ikd.b().d("OnlineLandingActivity", "sslerror " + sslError.getPrimaryError());
            OnlineLandingActivity onlineLandingActivity = (OnlineLandingActivity) this.b.get();
            if (onlineLandingActivity != null && !TextUtils.isEmpty(sslError.getUrl()) && (webPageBean = onlineLandingActivity.s) != null && cjb.e(webPageBean.getTargetUrl(), sslError.getUrl())) {
                onlineLandingActivity.n = true;
                onlineLandingActivity.s.setErrorType("ssl");
                onlineLandingActivity.s.setErrorCode(sslError.getPrimaryError());
            }
            this.a++;
            sslErrorHandler.cancel();
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            OnlineLandingActivity onlineLandingActivity;
            ikd.b().d("OnlineLandingActivity", "shouldOverrideUrlLoading url=" + str);
            WeakReference weakReference = this.b;
            return (weakReference == null || (onlineLandingActivity = (OnlineLandingActivity) weakReference.get()) == null) ? super.shouldOverrideUrlLoading(webView, str) : onlineLandingActivity.g(str, false);
        }

        @Override
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            OnlineLandingActivity onlineLandingActivity = (OnlineLandingActivity) this.b.get();
            if (onlineLandingActivity == null || onlineLandingActivity.s == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString()) || !cjb.e(onlineLandingActivity.s.getTargetUrl(), webResourceRequest.getUrl().toString())) {
                return;
            }
            onlineLandingActivity.n = true;
            onlineLandingActivity.s.setErrorType("error");
            onlineLandingActivity.s.setErrorCode(webResourceError.getErrorCode());
            onlineLandingActivity.j(webResourceError.getErrorCode());
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (webResourceRequest == null || webResourceRequest.getUrl() == null) {
                return false;
            }
            WeakReference weakReference = this.b;
            if (weakReference == null) {
                return super.shouldOverrideUrlLoading(webView, webResourceRequest);
            }
            OnlineLandingActivity onlineLandingActivity = (OnlineLandingActivity) weakReference.get();
            if (onlineLandingActivity == null) {
                return super.shouldOverrideUrlLoading(webView, webResourceRequest);
            }
            if (TextUtils.isEmpty(webResourceRequest.getUrl().toString())) {
                return false;
            }
            ikd.b().d("OnlineLandingActivity", "shouldOverrideUrlLoading url=" + webResourceRequest.getUrl().toString());
            return onlineLandingActivity.g(webResourceRequest.getUrl().toString(), webResourceRequest.hasGesture());
        }
    }

    private void x() {
        if (this.h == null) {
            finish();
            ikd.b().e("OnlineLandingActivity", "initPaw webview is null,finish");
            return;
        }
        try {
            ikd.b().d("OnlineLandingActivity", "initPaw");
            CookieManager.getInstance().setAcceptThirdPartyCookies(this.h, true);
            MobileAds.class.getMethod("registerWebView", WebView.class).invoke(null, this.h);
        } catch (Exception e) {
            ikd.b().e("OnlineLandingActivity", "initPaw " + Log.getStackTraceString(e));
        }
    }

    @Override
    public WebViewClient h() {
        return new a(this);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        x();
        y();
    }

    public final void y() {
        if (this.i == null || this.h == null) {
            j(TaErrorCode.WEBVIEW_ADSDTO_NULL);
            finish();
            ikd.b().e("OnlineLandingActivity", "loadLandingPage,ad is null,finish");
            return;
        }
        ikd.b().d("OnlineLandingActivity", "loadLandingPage " + this.i.getAdCreativeId());
        com.cloud.hisavana.sdk.manager.a.a.A(20);
        SSPParamSplicedResult sSPParamSplicedResultA = b.a(this.j, this.i);
        String splicedURL = sSPParamSplicedResultA.getSplicedURL();
        String originalUrl = sSPParamSplicedResultA.getOriginalUrl();
        AthenaTracker.J(originalUrl, this.i, Boolean.FALSE);
        if (TextUtils.isEmpty(splicedURL)) {
            j(TaErrorCode.WEBVIEW_URL_EMPTY);
            finish();
            ikd.b().e("OnlineLandingActivity", "loadLandingPage,click url is empty,finish");
            return;
        }
        if (m(splicedURL)) {
            ikd.b().d("OnlineLandingActivity", "loadLandingPage,click url is gp,go to gp,finish");
            u();
            j(0);
            finish();
            return;
        }
        if (f(splicedURL)) {
            u();
            j(0);
            ikd.b().e("OnlineLandingActivity", "loadLandingPage,checkDeepLink true finish");
            finish();
            return;
        }
        WebPageBean webPageBean = this.s;
        if (webPageBean != null) {
            webPageBean.setUrl(originalUrl);
            AthenaTracker.v0(this.s.getWebId(), this.s.getUrl(), this.s.getTargetUrl(), "open");
        }
        HashMap map = new HashMap();
        map.put("Accept-Timezone", "UTC");
        q(splicedURL);
        this.h.loadUrl(splicedURL, map);
        ikd.b().d("OnlineLandingActivity", "loadLandingPage,url:" + splicedURL);
    }
}
