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
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.SSPParamSplicedResult;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.util.o0;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.lang.ref.WeakReference;
import java.util.HashMap;

public class OnlineLandingActivity extends b {

    private static final class a extends g7.j {

        private int f21204a;

        private final WeakReference f21205b;

        a(OnlineLandingActivity onlineLandingActivity) {
            this.f21205b = new WeakReference(onlineLandingActivity);
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
            OnlineLandingActivity onlineLandingActivity;
            super.onPageFinished(webView, str);
            b4.b().d("OnlineLandingActivity", "onPageFinished: progress=" + webView.getProgress());
            if (webView.getProgress() < 100 || this.f21204a <= 0 || (onlineLandingActivity = (OnlineLandingActivity) this.f21205b.get()) == null) {
                return;
            }
            AthenaTracker.d0(onlineLandingActivity.f21297h, this.f21204a);
        }

        @Override
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WebPageBean webPageBean;
            super.onPageStarted(webView, str, bitmap);
            b4.b().d("OnlineLandingActivity", "onPageStarted: " + str);
            OnlineLandingActivity onlineLandingActivity = (OnlineLandingActivity) this.f21205b.get();
            if (onlineLandingActivity == null || (webPageBean = onlineLandingActivity.f21307r) == null) {
                return;
            }
            webPageBean.setLoadStartTime(System.currentTimeMillis());
            if (TextUtils.isEmpty(str) || !o0.e(onlineLandingActivity.f21307r.getTargetUrl(), str) || onlineLandingActivity.f21304o) {
                return;
            }
            onlineLandingActivity.f21304o = true;
            AthenaTracker.o0(onlineLandingActivity.f21307r.getWebId(), onlineLandingActivity.f21307r.getUrl(), onlineLandingActivity.f21307r.getTargetUrl(), 0, onlineLandingActivity.f21307r.getRedirectType(), onlineLandingActivity.f21307r.getLoadTime());
        }

        @Override
        public void onReceivedError(WebView webView, int i10, String str, String str2) {
            super.onReceivedError(webView, i10, str, str2);
        }

        @Override
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            OnlineLandingActivity onlineLandingActivity = (OnlineLandingActivity) this.f21205b.get();
            if (onlineLandingActivity == null || onlineLandingActivity.f21307r == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString()) || !o0.e(onlineLandingActivity.f21307r.getTargetUrl(), webResourceRequest.getUrl().toString())) {
                return;
            }
            onlineLandingActivity.f21302m = true;
            onlineLandingActivity.f21307r.setErrorType("error");
            onlineLandingActivity.f21307r.setErrorCode(webResourceResponse.getStatusCode());
            onlineLandingActivity.j(webResourceResponse.getStatusCode());
        }

        @Override
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            WebPageBean webPageBean;
            b4.b().d("OnlineLandingActivity", "sslerror " + sslError.getPrimaryError());
            OnlineLandingActivity onlineLandingActivity = (OnlineLandingActivity) this.f21205b.get();
            if (onlineLandingActivity != null && !TextUtils.isEmpty(sslError.getUrl()) && (webPageBean = onlineLandingActivity.f21307r) != null && o0.e(webPageBean.getTargetUrl(), sslError.getUrl())) {
                onlineLandingActivity.f21302m = true;
                onlineLandingActivity.f21307r.setErrorType("ssl");
                onlineLandingActivity.f21307r.setErrorCode(sslError.getPrimaryError());
            }
            this.f21204a++;
            sslErrorHandler.cancel();
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            OnlineLandingActivity onlineLandingActivity;
            b4.b().d("OnlineLandingActivity", "shouldOverrideUrlLoading url=" + str);
            WeakReference weakReference = this.f21205b;
            return (weakReference == null || (onlineLandingActivity = (OnlineLandingActivity) weakReference.get()) == null) ? super.shouldOverrideUrlLoading(webView, str) : onlineLandingActivity.g(str, false);
        }

        @Override
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            OnlineLandingActivity onlineLandingActivity = (OnlineLandingActivity) this.f21205b.get();
            if (onlineLandingActivity == null || onlineLandingActivity.f21307r == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString()) || !o0.e(onlineLandingActivity.f21307r.getTargetUrl(), webResourceRequest.getUrl().toString())) {
                return;
            }
            onlineLandingActivity.f21302m = true;
            onlineLandingActivity.f21307r.setErrorType("error");
            onlineLandingActivity.f21307r.setErrorCode(webResourceError.getErrorCode());
            onlineLandingActivity.j(webResourceError.getErrorCode());
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (webResourceRequest == null || webResourceRequest.getUrl() == null) {
                return false;
            }
            WeakReference weakReference = this.f21205b;
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
            b4.b().d("OnlineLandingActivity", "shouldOverrideUrlLoading url=" + webResourceRequest.getUrl().toString());
            return onlineLandingActivity.g(webResourceRequest.getUrl().toString(), webResourceRequest.hasGesture());
        }
    }

    private void x() {
        if (this.f21296g == null) {
            finish();
            b4.b().e("OnlineLandingActivity", "initPaw webview is null,finish");
            return;
        }
        try {
            b4.b().d("OnlineLandingActivity", "initPaw");
            CookieManager.getInstance().setAcceptThirdPartyCookies(this.f21296g, true);
            Class.forName("com.google.android.gms.ads.MobileAds").getMethod("registerWebView", WebView.class).invoke(null, this.f21296g);
        } catch (Exception e10) {
            b4.b().e("OnlineLandingActivity", "initPaw " + Log.getStackTraceString(e10));
        }
    }

    private void y() {
        if (this.f21297h == null || this.f21296g == null) {
            j(TaErrorCode.WEBVIEW_ADSDTO_NULL);
            finish();
            b4.b().e("OnlineLandingActivity", "loadLandingPage,ad is null,finish");
            return;
        }
        b4.b().d("OnlineLandingActivity", "loadLandingPage " + this.f21297h.getAdCreativeId());
        com.cloud.hisavana.sdk.manager.a.f21996a.A(20);
        SSPParamSplicedResult sSPParamSplicedResultA = b.a(this.f21298i, this.f21297h);
        String splicedURL = sSPParamSplicedResultA.getSplicedURL();
        String originalUrl = sSPParamSplicedResultA.getOriginalUrl();
        AthenaTracker.G(originalUrl, this.f21297h, Boolean.FALSE);
        if (TextUtils.isEmpty(splicedURL)) {
            j(TaErrorCode.WEBVIEW_URL_EMPTY);
            finish();
            b4.b().e("OnlineLandingActivity", "loadLandingPage,click url is empty,finish");
            return;
        }
        if (m(splicedURL)) {
            b4.b().d("OnlineLandingActivity", "loadLandingPage,click url is gp,go to gp,finish");
            u();
            j(0);
            finish();
            return;
        }
        if (f(splicedURL)) {
            u();
            j(0);
            b4.b().e("OnlineLandingActivity", "loadLandingPage,checkDeepLink true finish");
            finish();
            return;
        }
        WebPageBean webPageBean = this.f21307r;
        if (webPageBean != null) {
            webPageBean.setUrl(originalUrl);
            AthenaTracker.p0(this.f21307r.getWebId(), this.f21307r.getUrl(), this.f21307r.getTargetUrl(), MRAIDPresenter.OPEN);
        }
        HashMap map = new HashMap();
        map.put("Accept-Timezone", "UTC");
        q(splicedURL);
        this.f21296g.loadUrl(splicedURL, map);
        b4.b().d("OnlineLandingActivity", "loadLandingPage,url:" + splicedURL);
    }

    @Override
    protected WebViewClient h() {
        return new a(this);
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        x();
        y();
    }
}
