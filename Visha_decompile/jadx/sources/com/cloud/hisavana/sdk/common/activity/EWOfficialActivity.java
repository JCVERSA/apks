package com.cloud.hisavana.sdk.common.activity;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import defpackage.cjb;
import defpackage.ikd;
import defpackage.jm4;

public class EWOfficialActivity extends b {

    public class a extends jm4 {
        public a() {
        }

        @Override
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            WebPageBean webPageBean = EWOfficialActivity.this.s;
            if (webPageBean == null) {
                return;
            }
            webPageBean.setLoadStartTime(System.currentTimeMillis());
            if (TextUtils.isEmpty(str) || !cjb.e(EWOfficialActivity.this.s.getUrl(), str)) {
                return;
            }
            EWOfficialActivity eWOfficialActivity = EWOfficialActivity.this;
            if (eWOfficialActivity.p) {
                return;
            }
            eWOfficialActivity.p = true;
            AthenaTracker.u0(eWOfficialActivity.s.getWebId(), EWOfficialActivity.this.s.getUrl(), EWOfficialActivity.this.s.getTargetUrl(), 0, EWOfficialActivity.this.s.getRedirectType(), EWOfficialActivity.this.s.getLoadTime());
        }

        @Override
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
        }

        @Override
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            if (EWOfficialActivity.this.s == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString()) || !cjb.e(EWOfficialActivity.this.s.getUrl(), webResourceRequest.getUrl().toString())) {
                return;
            }
            EWOfficialActivity eWOfficialActivity = EWOfficialActivity.this;
            eWOfficialActivity.n = true;
            eWOfficialActivity.s.setErrorType("error");
            EWOfficialActivity.this.s.setErrorCode(webResourceResponse.getStatusCode());
        }

        @Override
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            if (EWOfficialActivity.this.s == null || TextUtils.isEmpty(sslError.getUrl()) || !cjb.e(EWOfficialActivity.this.s.getUrl(), sslError.getUrl())) {
                return;
            }
            EWOfficialActivity eWOfficialActivity = EWOfficialActivity.this;
            eWOfficialActivity.n = true;
            eWOfficialActivity.s.setErrorType("ssl");
            EWOfficialActivity.this.s.setErrorCode(sslError.getPrimaryError());
        }

        @Override
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (EWOfficialActivity.this.s == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString()) || !cjb.e(EWOfficialActivity.this.s.getUrl(), webResourceRequest.getUrl().toString())) {
                return;
            }
            EWOfficialActivity eWOfficialActivity = EWOfficialActivity.this;
            eWOfficialActivity.n = true;
            eWOfficialActivity.s.setErrorType("error");
            EWOfficialActivity.this.s.setErrorCode(webResourceError.getErrorCode());
        }
    }

    private void x() {
        AdsDTO adsDTO = this.i;
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getAdChoiceClickUrl()) || this.h == null) {
            ikd.b().e("EWOfficialActivity", "loadAdChoiceUrl ad or adChoiceUrl is null");
            finish();
            return;
        }
        WebPageBean webPageBean = this.s;
        if (webPageBean != null) {
            webPageBean.setUrl(this.i.getAdChoiceClickUrl());
            AthenaTracker.v0(this.s.getWebId(), this.s.getUrl(), this.s.getTargetUrl(), "open");
        }
        q(this.i.getAdChoiceClickUrl());
        this.h.loadUrl(this.i.getAdChoiceClickUrl());
    }

    @Override
    public WebViewClient h() {
        return new a();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        x();
    }
}
