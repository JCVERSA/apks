package com.cloud.hisavana.sdk.common.activity;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$string;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.common.util.o0;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.hisavana.sdk.s2;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSToastUtil;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.lang.ref.WeakReference;

public class PersonalCloseAdActivity extends com.cloud.hisavana.sdk.common.activity.b {

    class a extends g7.j {
        a() {
        }

        @Override
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            WebPageBean webPageBean = PersonalCloseAdActivity.this.f21307r;
            if (webPageBean == null) {
                return;
            }
            webPageBean.setLoadStartTime(System.currentTimeMillis());
            if (TextUtils.isEmpty(str) || !o0.e(PersonalCloseAdActivity.this.f21307r.getUrl(), str)) {
                return;
            }
            PersonalCloseAdActivity personalCloseAdActivity = PersonalCloseAdActivity.this;
            if (personalCloseAdActivity.f21304o) {
                return;
            }
            personalCloseAdActivity.f21304o = true;
            AthenaTracker.o0(personalCloseAdActivity.f21307r.getWebId(), PersonalCloseAdActivity.this.f21307r.getUrl(), PersonalCloseAdActivity.this.f21307r.getTargetUrl(), 0, PersonalCloseAdActivity.this.f21307r.getRedirectType(), PersonalCloseAdActivity.this.f21307r.getLoadTime());
        }

        @Override
        public void onReceivedError(WebView webView, int i10, String str, String str2) {
            super.onReceivedError(webView, i10, str, str2);
        }

        @Override
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            if (PersonalCloseAdActivity.this.f21307r == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString()) || !o0.e(PersonalCloseAdActivity.this.f21307r.getUrl(), webResourceRequest.getUrl().toString())) {
                return;
            }
            PersonalCloseAdActivity personalCloseAdActivity = PersonalCloseAdActivity.this;
            personalCloseAdActivity.f21302m = true;
            personalCloseAdActivity.f21307r.setErrorType("error");
            PersonalCloseAdActivity.this.f21307r.setErrorCode(webResourceResponse.getStatusCode());
        }

        @Override
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            if (PersonalCloseAdActivity.this.f21307r == null || TextUtils.isEmpty(sslError.getUrl()) || !o0.e(PersonalCloseAdActivity.this.f21307r.getUrl(), sslError.getUrl())) {
                return;
            }
            PersonalCloseAdActivity personalCloseAdActivity = PersonalCloseAdActivity.this;
            personalCloseAdActivity.f21302m = true;
            personalCloseAdActivity.f21307r.setErrorType("ssl");
            PersonalCloseAdActivity.this.f21307r.setErrorCode(sslError.getPrimaryError());
        }

        @Override
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (PersonalCloseAdActivity.this.f21307r == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString()) || !o0.e(PersonalCloseAdActivity.this.f21307r.getUrl(), webResourceRequest.getUrl().toString())) {
                return;
            }
            PersonalCloseAdActivity personalCloseAdActivity = PersonalCloseAdActivity.this;
            personalCloseAdActivity.f21302m = true;
            personalCloseAdActivity.f21307r.setErrorType("error");
            PersonalCloseAdActivity.this.f21307r.setErrorCode(webResourceError.getErrorCode());
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override
        public void onClick(View view) {
            PersonalCloseAdActivity.this.onBackPressed();
        }
    }

    private static class c {

        private final WeakReference f21211a;

        private final AdsDTO f21212b;

        private int f21213c;

        class a implements Preconditions.a {
            a() {
            }

            @Override
            public void onRun() {
                s2.p().e(c.this.f21213c);
                Activity activity = (Activity) c.this.f21211a.get();
                if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
                    return;
                }
                activity.onBackPressed();
            }
        }

        class b implements Preconditions.a {
            b() {
            }

            @Override
            public void onRun() {
                Activity activity = (Activity) c.this.f21211a.get();
                if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
                    return;
                }
                activity.onBackPressed();
            }
        }

        public c(Activity activity, AdsDTO adsDTO) {
            this.f21211a = new WeakReference(activity);
            this.f21212b = adsDTO;
        }

        @JavascriptInterface
        public void athenaTrack(String str, String str2) {
            b4.b().d("PersonalCloseAdActivity", "athenaTrack -----> eventName = " + str + "  params = " + str2);
            AthenaTracker.P(this.f21212b, str, str2, 8765);
        }

        public void b(int i10) {
            this.f21213c = i10;
        }

        @JavascriptInterface
        public void closePage(String str, String str2) {
            Preconditions.d(new b());
        }

        @JavascriptInterface
        public void personaliseCallback() {
            b4.b().d("PersonalCloseAdActivity", "personaliseCallback");
            Preconditions.d(new a());
        }
    }

    private void A() {
        if (this.f21297h == null || this.f21296g == null) {
            return;
        }
        WebPageBean webPageBean = this.f21307r;
        if (webPageBean != null) {
            webPageBean.setUrl(i7.a.b());
            AthenaTracker.p0(this.f21307r.getWebId(), this.f21307r.getUrl(), this.f21307r.getTargetUrl(), MRAIDPresenter.OPEN);
        }
        StringBuilder sb2 = new StringBuilder(i7.a.b());
        sb2.append("?gaid=");
        sb2.append(DeviceUtil.e());
        sb2.append("&oneid=");
        sb2.append(DeviceUtil.j());
        sb2.append("&ad_creative_id=");
        sb2.append(this.f21297h.getAdCreativeId());
        sb2.append("&industry_id=");
        sb2.append(this.f21297h.getIndustryId());
        sb2.append("&app_id=");
        String str = c7.b.f16688b;
        if (str == null) {
            str = "";
        }
        sb2.append(str);
        sb2.append("&code_seat_id=");
        sb2.append(this.f21297h.getCodeSeatId());
        sb2.append("&trigger_id=");
        sb2.append(this.f21297h.getTriggerId());
        sb2.append("&request_id=");
        sb2.append(this.f21297h.getRid());
        sb2.append("&advertiser_id=");
        sb2.append(this.f21297h.getAdvertiserId());
        String string = sb2.toString();
        b4.b().d("PersonalCloseAdActivity", "ad close url == " + string);
        q(string);
        this.f21296g.loadUrl(string);
    }

    private void x() {
        WebPageBean webPageBean = this.f21307r;
        if (webPageBean != null) {
            webPageBean.setUrl(i7.a.b());
            AthenaTracker.p0(this.f21307r.getWebId(), this.f21307r.getUrl(), this.f21307r.getTargetUrl(), MRAIDPresenter.OPEN);
            this.f21302m = true;
            this.f21307r.setErrorType("error");
            this.f21307r.setErrorCode(-2);
            String webId = this.f21307r.getWebId();
            String url = this.f21307r.getUrl();
            String targetUrl = this.f21307r.getTargetUrl();
            int redirectType = this.f21307r.getRedirectType();
            boolean z10 = this.f21302m;
            AthenaTracker.n0(webId, url, targetUrl, redirectType, z10 ? "fail" : NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, z10 ? this.f21307r.getErrorType() : "succeed", this.f21302m ? this.f21307r.getErrorCode() : 8000, -1L);
        }
    }

    private void y() {
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.layout_title);
        this.f21292c = frameLayout;
        frameLayout.setVisibility(0);
        HSToastUtil.f(getString(R$string.toast_no_network));
        ImageView imageView = this.f21294e;
        if (imageView != null) {
            imageView.setOnClickListener(new b());
        }
    }

    private void z() {
        if (this.f21296g == null) {
            return;
        }
        c cVar = new c(this, this.f21297h);
        this.f21296g.addJavascriptInterface(cVar, "sspWebView");
        cVar.b(getIntent().getIntExtra("close_hash_code", 0));
        A();
    }

    @Override
    protected WebViewClient h() {
        return new a();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (NetStateManager.checkNetworkState(false)) {
            z();
            return;
        }
        x();
        this.f21293d.setVisibility(8);
        findViewById(R$id.layout_no_net).setVisibility(0);
        y();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        FrameLayout frameLayout = this.f21293d;
        if (frameLayout == null || frameLayout.getVisibility() != 8) {
            return;
        }
        s2.p().d();
    }
}
