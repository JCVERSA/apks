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
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.common.util.o0;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.vungle.ads.internal.presenter.MRAIDPresenter;

public class EWOfficialActivity extends b {

    class a extends g7.j {
        a() {
        }

        @Override
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            WebPageBean webPageBean = EWOfficialActivity.this.f21307r;
            if (webPageBean == null) {
                return;
            }
            webPageBean.setLoadStartTime(System.currentTimeMillis());
            if (TextUtils.isEmpty(str) || !o0.e(EWOfficialActivity.this.f21307r.getUrl(), str)) {
                return;
            }
            EWOfficialActivity eWOfficialActivity = EWOfficialActivity.this;
            if (eWOfficialActivity.f21304o) {
                return;
            }
            eWOfficialActivity.f21304o = true;
            AthenaTracker.o0(eWOfficialActivity.f21307r.getWebId(), EWOfficialActivity.this.f21307r.getUrl(), EWOfficialActivity.this.f21307r.getTargetUrl(), 0, EWOfficialActivity.this.f21307r.getRedirectType(), EWOfficialActivity.this.f21307r.getLoadTime());
        }

        @Override
        public void onReceivedError(WebView webView, int i10, String str, String str2) {
            super.onReceivedError(webView, i10, str, str2);
        }

        @Override
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            if (EWOfficialActivity.this.f21307r == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString()) || !o0.e(EWOfficialActivity.this.f21307r.getUrl(), webResourceRequest.getUrl().toString())) {
                return;
            }
            EWOfficialActivity eWOfficialActivity = EWOfficialActivity.this;
            eWOfficialActivity.f21302m = true;
            eWOfficialActivity.f21307r.setErrorType("error");
            EWOfficialActivity.this.f21307r.setErrorCode(webResourceResponse.getStatusCode());
        }

        @Override
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            if (EWOfficialActivity.this.f21307r == null || TextUtils.isEmpty(sslError.getUrl()) || !o0.e(EWOfficialActivity.this.f21307r.getUrl(), sslError.getUrl())) {
                return;
            }
            EWOfficialActivity eWOfficialActivity = EWOfficialActivity.this;
            eWOfficialActivity.f21302m = true;
            eWOfficialActivity.f21307r.setErrorType("ssl");
            EWOfficialActivity.this.f21307r.setErrorCode(sslError.getPrimaryError());
        }

        @Override
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (EWOfficialActivity.this.f21307r == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString()) || !o0.e(EWOfficialActivity.this.f21307r.getUrl(), webResourceRequest.getUrl().toString())) {
                return;
            }
            EWOfficialActivity eWOfficialActivity = EWOfficialActivity.this;
            eWOfficialActivity.f21302m = true;
            eWOfficialActivity.f21307r.setErrorType("error");
            EWOfficialActivity.this.f21307r.setErrorCode(webResourceError.getErrorCode());
        }
    }

    private void x() {
        AdsDTO adsDTO = this.f21297h;
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getAdChoiceClickUrl()) || this.f21296g == null) {
            b4.b().e("EWOfficialActivity", "loadAdChoiceUrl ad or adChoiceUrl is null");
            finish();
            return;
        }
        WebPageBean webPageBean = this.f21307r;
        if (webPageBean != null) {
            webPageBean.setUrl(this.f21297h.getAdChoiceClickUrl());
            AthenaTracker.p0(this.f21307r.getWebId(), this.f21307r.getUrl(), this.f21307r.getTargetUrl(), MRAIDPresenter.OPEN);
        }
        q(this.f21297h.getAdChoiceClickUrl());
        this.f21296g.loadUrl(this.f21297h.getAdChoiceClickUrl());
    }

    @Override
    protected WebViewClient h() {
        return new a();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        x();
    }
}
