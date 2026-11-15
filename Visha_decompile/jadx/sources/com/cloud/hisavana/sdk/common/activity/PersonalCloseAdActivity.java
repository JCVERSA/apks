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
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.hisavana.sdk.u;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSToastUtil;
import com.cloud.sdk.commonutil.util.Preconditions;
import defpackage.cjb;
import defpackage.ikd;
import defpackage.jm4;
import defpackage.p9;
import defpackage.r6;
import defpackage.vl4;
import java.lang.ref.WeakReference;

public class PersonalCloseAdActivity extends com.cloud.hisavana.sdk.common.activity.b {
    public int y = -1;

    public class a extends jm4 {
        public a() {
        }

        @Override
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            WebPageBean webPageBean = PersonalCloseAdActivity.this.s;
            if (webPageBean == null) {
                return;
            }
            webPageBean.setLoadStartTime(System.currentTimeMillis());
            if (TextUtils.isEmpty(str) || !cjb.e(PersonalCloseAdActivity.this.s.getUrl(), str)) {
                return;
            }
            PersonalCloseAdActivity personalCloseAdActivity = PersonalCloseAdActivity.this;
            if (personalCloseAdActivity.p) {
                return;
            }
            personalCloseAdActivity.p = true;
            AthenaTracker.u0(personalCloseAdActivity.s.getWebId(), PersonalCloseAdActivity.this.s.getUrl(), PersonalCloseAdActivity.this.s.getTargetUrl(), 0, PersonalCloseAdActivity.this.s.getRedirectType(), PersonalCloseAdActivity.this.s.getLoadTime());
        }

        @Override
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
        }

        @Override
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            if (PersonalCloseAdActivity.this.s == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString()) || !cjb.e(PersonalCloseAdActivity.this.s.getUrl(), webResourceRequest.getUrl().toString())) {
                return;
            }
            PersonalCloseAdActivity personalCloseAdActivity = PersonalCloseAdActivity.this;
            personalCloseAdActivity.n = true;
            personalCloseAdActivity.s.setErrorType("error");
            PersonalCloseAdActivity.this.s.setErrorCode(webResourceResponse.getStatusCode());
        }

        @Override
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            if (PersonalCloseAdActivity.this.s == null || TextUtils.isEmpty(sslError.getUrl()) || !cjb.e(PersonalCloseAdActivity.this.s.getUrl(), sslError.getUrl())) {
                return;
            }
            PersonalCloseAdActivity personalCloseAdActivity = PersonalCloseAdActivity.this;
            personalCloseAdActivity.n = true;
            personalCloseAdActivity.s.setErrorType("ssl");
            PersonalCloseAdActivity.this.s.setErrorCode(sslError.getPrimaryError());
        }

        @Override
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (PersonalCloseAdActivity.this.s == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString()) || !cjb.e(PersonalCloseAdActivity.this.s.getUrl(), webResourceRequest.getUrl().toString())) {
                return;
            }
            PersonalCloseAdActivity personalCloseAdActivity = PersonalCloseAdActivity.this;
            personalCloseAdActivity.n = true;
            personalCloseAdActivity.s.setErrorType("error");
            PersonalCloseAdActivity.this.s.setErrorCode(webResourceError.getErrorCode());
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            PersonalCloseAdActivity.this.onBackPressed();
        }
    }

    public static class c {
        public final WeakReference a;
        public final AdsDTO b;
        public int c;

        public class a implements Preconditions.a {
            public a() {
            }

            @Override
            public void onRun() {
                u.n().c(c.this.c);
                Activity activity = (Activity) c.this.a.get();
                if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
                    return;
                }
                activity.onBackPressed();
            }
        }

        public class b implements Preconditions.a {
            public b() {
            }

            @Override
            public void onRun() {
                Activity activity = (Activity) c.this.a.get();
                if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
                    return;
                }
                activity.onBackPressed();
            }
        }

        public c(Activity activity, AdsDTO adsDTO) {
            this.a = new WeakReference(activity);
            this.b = adsDTO;
        }

        @JavascriptInterface
        public void athenaTrack(String str, String str2) {
            ikd.b().d("PersonalCloseAdActivity", "athenaTrack -----> eventName = " + str + "  params = " + str2);
            AthenaTracker.U(this.b, str, str2, 8765);
        }

        public void b(int i) {
            this.c = i;
        }

        @JavascriptInterface
        public void closePage(String str, String str2) {
            Preconditions.d(new b());
        }

        @JavascriptInterface
        public void personaliseCallback() {
            ikd.b().d("PersonalCloseAdActivity", "personaliseCallback");
            Preconditions.d(new a());
        }
    }

    private void x() {
        WebPageBean webPageBean = this.s;
        if (webPageBean != null) {
            webPageBean.setUrl(p9.b());
            AthenaTracker.v0(this.s.getWebId(), this.s.getUrl(), this.s.getTargetUrl(), "open");
            this.n = true;
            this.s.setErrorType("error");
            this.s.setErrorCode(-2);
            String webId = this.s.getWebId();
            String url = this.s.getUrl();
            String targetUrl = this.s.getTargetUrl();
            int redirectType = this.s.getRedirectType();
            boolean z = this.n;
            AthenaTracker.t0(webId, url, targetUrl, redirectType, z ? "fail" : "success", z ? this.s.getErrorType() : "succeed", this.n ? this.s.getErrorCode() : 8000, -1L);
        }
    }

    private void y() {
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.layout_title);
        this.d = frameLayout;
        frameLayout.setVisibility(0);
        HSToastUtil.f(getString(R.string.toast_no_network));
        ImageView imageView = this.f;
        if (imageView != null) {
            imageView.setOnClickListener(new b());
        }
    }

    public final void A() {
        if (this.i == null || this.h == null) {
            return;
        }
        WebPageBean webPageBean = this.s;
        if (webPageBean != null) {
            webPageBean.setUrl(p9.b());
            AthenaTracker.v0(this.s.getWebId(), this.s.getUrl(), this.s.getTargetUrl(), "open");
        }
        StringBuilder sb = new StringBuilder(p9.b());
        sb.append("?gaid=");
        sb.append(DeviceUtil.f());
        sb.append("&oneid=");
        sb.append(DeviceUtil.k());
        sb.append("&ad_creative_id=");
        sb.append(this.i.getAdCreativeId());
        sb.append("&industry_id=");
        sb.append(this.i.getIndustryId());
        sb.append("&app_id=");
        String str = r6.b;
        if (str == null) {
            str = "";
        }
        sb.append(str);
        sb.append("&code_seat_id=");
        sb.append(this.i.getCodeSeatId());
        sb.append("&trigger_id=");
        sb.append(this.i.getTriggerId());
        sb.append("&request_id=");
        sb.append(this.i.getRid());
        sb.append("&advertiser_id=");
        sb.append(this.i.getAdvertiserId());
        String string = sb.toString();
        ikd.b().d("PersonalCloseAdActivity", "ad close url == " + string);
        q(string);
        this.h.loadUrl(string);
    }

    @Override
    public WebViewClient h() {
        return new a();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.y = getIntent().getIntExtra("close_hash_code", 0);
        if (NetStateManager.checkNetworkState(false)) {
            z();
            return;
        }
        x();
        this.e.setVisibility(8);
        findViewById(R.id.layout_no_net).setVisibility(0);
        y();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        FrameLayout frameLayout = this.e;
        if (frameLayout == null || frameLayout.getVisibility() != 8) {
            return;
        }
        if (vl4.g()) {
            u.n().c(this.y);
        } else {
            u.n().b();
        }
    }

    public final void z() {
        if (this.h == null) {
            return;
        }
        c cVar = new c(this, this.i);
        this.h.addJavascriptInterface(cVar, "sspWebView");
        cVar.b(this.y);
        A();
    }
}
