package com.cloud.hisavana.sdk.common.activity;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.SSPParamSplicedResult;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.common.widget.webview.ActionWebView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.k1;
import com.just.agentweb.DefaultWebClient;
import defpackage.ikd;
import defpackage.jm4;
import defpackage.r6;
import defpackage.ul4;
import java.util.ArrayList;

public class b extends Activity {
    public ProgressBar b;
    public LinearLayout c;
    public FrameLayout d;
    public FrameLayout e;
    public ImageView f;
    public TextView g;
    public WebView h;
    public AdsDTO i;
    public DownUpPointBean j;
    public Bundle k;
    public long m;
    public WebPageBean s;
    public boolean l = true;
    public boolean n = false;
    public boolean o = false;
    public boolean p = false;
    public boolean q = false;
    public boolean r = false;
    public boolean t = false;
    public boolean u = false;
    public boolean v = false;
    public ArrayList w = new ArrayList();
    public ArrayList x = new ArrayList();

    public class a extends WebChromeClient {
        public a() {
        }

        @Override
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            return super.onConsoleMessage(consoleMessage);
        }

        @Override
        public void onProgressChanged(WebView webView, int i) {
            ProgressBar progressBar = b.this.b;
            if (progressBar == null) {
                return;
            }
            if (i == 100) {
                progressBar.setVisibility(8);
            } else if (8 == progressBar.getVisibility()) {
                b.this.b.setVisibility(0);
            }
            b bVar = b.this;
            if (bVar.s == null || bVar.r) {
                return;
            }
            if (b.this.o || i != 100) {
                if (b.this.q || b.this.o || i < 50 || i >= 100) {
                    return;
                }
                b.this.s.setSpendEndTime(System.currentTimeMillis());
                b.this.q = true;
                AthenaTracker.u0(b.this.s.getWebId(), b.this.s.getUrl(), b.this.s.getTargetUrl(), 50, b.this.s.getRedirectType(), b.this.s.getSpendTime());
                return;
            }
            b.this.s.setSpendEndTime(System.currentTimeMillis());
            b.this.o = true;
            AthenaTracker.u0(b.this.s.getWebId(), b.this.s.getUrl(), b.this.s.getTargetUrl(), 100, b.this.s.getRedirectType(), b.this.s.getSpendTime());
            String webId = b.this.s.getWebId();
            String url = b.this.s.getUrl();
            String targetUrl = b.this.s.getTargetUrl();
            int redirectType = b.this.s.getRedirectType();
            b bVar2 = b.this;
            boolean z = bVar2.n;
            String str = z ? "fail" : "success";
            String errorType = z ? bVar2.s.getErrorType() : "succeed";
            b bVar3 = b.this;
            AthenaTracker.t0(webId, url, targetUrl, redirectType, str, errorType, bVar3.n ? bVar3.s.getErrorCode() : 8000, -1L);
            b.this.j(0);
        }

        @Override
        public void onReceivedTitle(WebView webView, String str) {
            super.onReceivedTitle(webView, str);
            ikd.b().d("TBaseLandingActivity", "onReceivedTitle " + str);
            if (str == null || str.isEmpty() || webView.getUrl() == null || webView.getUrl().contains(str) || b.this.g == null || TextUtils.isEmpty(str)) {
                return;
            }
            b.this.g.setText(str);
        }
    }

    public class ViewOnClickListenerC0042b implements View.OnClickListener {
        public ViewOnClickListenerC0042b() {
        }

        @Override
        public void onClick(View view) {
            b.this.onBackPressed();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            if (b.this.isFinishing() || b.this.isDestroyed()) {
                return;
            }
            b.this.finish();
            ikd.b().e("TBaseLandingActivity", "goToNext ,post finish");
        }
    }

    public static SSPParamSplicedResult a(DownUpPointBean downUpPointBean, AdsDTO adsDTO) {
        SSPParamSplicedResult sSPParamSplicedResult = new SSPParamSplicedResult();
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getClickUrl())) {
            ikd.b().d("TBaseLandingActivity", "processServerClickUrl --> null == url || null == pointBean");
            sSPParamSplicedResult.setOriginalUrl("");
            sSPParamSplicedResult.setSplicedURL("");
            return sSPParamSplicedResult;
        }
        if (downUpPointBean == null || adsDTO.getDspType().intValue() == 2 || adsDTO.getSource() == 4) {
            sSPParamSplicedResult.setOriginalUrl(adsDTO.getClickUrl());
            sSPParamSplicedResult.setSplicedURL(adsDTO.getClickUrl());
            return sSPParamSplicedResult;
        }
        String strD = k1.d(downUpPointBean, adsDTO, true, Boolean.FALSE);
        if (TextUtils.isEmpty(strD)) {
            sSPParamSplicedResult.setOriginalUrl("");
            sSPParamSplicedResult.setSplicedURL("");
            return sSPParamSplicedResult;
        }
        if (strD.contains("?")) {
            String str = strD + k1.e(adsDTO);
            sSPParamSplicedResult.setOriginalUrl(str);
            sSPParamSplicedResult.setSplicedURL(HSCommonUtils.a.o(str));
        } else {
            sSPParamSplicedResult.setOriginalUrl(strD);
            sSPParamSplicedResult.setSplicedURL(strD);
        }
        return sSPParamSplicedResult;
    }

    public static String i(DownUpPointBean downUpPointBean, AdsDTO adsDTO) {
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getClickUrl())) {
            ikd.b().d("TBaseLandingActivity", "processServerClickUrl --> null == url || null == pointBean");
            return "";
        }
        if (downUpPointBean == null || adsDTO.getDspType().intValue() == 2 || adsDTO.getSource() == 4) {
            return adsDTO.getClickUrl();
        }
        String strD = k1.d(downUpPointBean, adsDTO, true, Boolean.FALSE);
        if (TextUtils.isEmpty(strD)) {
            return "";
        }
        if (!strD.contains("?")) {
            return strD;
        }
        return strD + k1.e(adsDTO);
    }

    public final void b() {
        new Handler(getMainLooper()).postDelayed(new c(), 1000L);
    }

    public final void c(int i) {
        WebPageBean webPageBean;
        if (this.p || (webPageBean = this.s) == null) {
            return;
        }
        webPageBean.setRedirectType(i);
        AthenaTracker.u0(this.s.getWebId(), this.s.getUrl(), this.s.getTargetUrl(), 0, i, this.s.getLoadTime());
    }

    public boolean f(String str) {
        if (!TextUtils.isEmpty(str) && !str.startsWith(DefaultWebClient.HTTP_SCHEME) && !str.startsWith("https://")) {
            try {
                Intent intent = new Intent();
                intent.setData(Uri.parse(str));
                intent.setAction("android.intent.action.VIEW");
                intent.setFlags(268435456);
                startActivity(intent);
                ikd.b().d("TBaseLandingActivity", "open deeplink");
                return true;
            } catch (Exception e) {
                ikd.b().e("TBaseLandingActivity", "checkDeepLink finish," + Log.getStackTraceString(e));
                finish();
            }
        }
        return false;
    }

    public boolean g(String str, boolean z) {
        WebPageBean webPageBean;
        this.u = z;
        ikd.b().d("TBaseLandingActivity", "webview get redirect url is:" + str);
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (!this.p && (webPageBean = this.s) != null) {
            webPageBean.setTargetUrl(str);
            this.s.setLoadStartTime(System.currentTimeMillis());
        }
        v(SSPTrackingHelper.a.s(str));
        if (str.startsWith(DefaultWebClient.INTENT_SCHEME)) {
            c(2);
            if (U0.T(this, str)) {
                u();
                if (!isFinishing() && !isDestroyed()) {
                    finish();
                }
            } else {
                o(str);
            }
            return true;
        }
        if ((str.contains("play.google.com") || str.startsWith("market://")) && U0.K(this, str, "com.android.vending")) {
            AthenaTracker.w0(this.i);
            q(str);
            u();
            c(1);
            if (!isFinishing() && !isDestroyed()) {
                finish();
            }
            return true;
        }
        if (U0.J(this, str)) {
            u();
            c(2);
            b();
            return true;
        }
        if (!str.startsWith("https://") && !str.startsWith(DefaultWebClient.HTTP_SCHEME)) {
            return true;
        }
        this.s.setRedirectType(0);
        AthenaTracker.w0(this.i);
        q(str);
        return false;
    }

    public WebViewClient h() {
        return new jm4();
    }

    public void j(int i) {
        try {
            long jCurrentTimeMillis = 0;
            if (this.t) {
                if (i == 8005) {
                    SSPTrackingHelper.a.W(Integer.valueOf(i), this.w, this.x, this.i, this.s, this.v, true, Long.valueOf(this.m != 0 ? System.currentTimeMillis() - this.m : 0L), Boolean.valueOf(this.o), this.k);
                }
            } else {
                w();
                if (i == 8005 && this.m != 0) {
                    jCurrentTimeMillis = System.currentTimeMillis() - this.m;
                }
                SSPTrackingHelper.a.W(Integer.valueOf(i), this.w, this.x, this.i, this.s, this.v, false, Long.valueOf(jCurrentTimeMillis), Boolean.valueOf(this.o), this.k);
            }
        } catch (Throwable unused) {
        }
    }

    public boolean m(String str) {
        if (str == null) {
            return false;
        }
        if (str.contains("play.google.com/store/apps/")) {
            t(str.replaceAll("https://play.google.com/store/apps/", "market://").replaceAll("http://play.google.com/store/apps/", "market://"));
            return true;
        }
        if (!str.startsWith("market://")) {
            return false;
        }
        t(str);
        return true;
    }

    public WebPageBean n() {
        return this.s;
    }

    public final void o(String str) {
        try {
            String stringExtra = Intent.parseUri(str, 1).getStringExtra("browser_fallback_url");
            if (TextUtils.isEmpty(stringExtra)) {
                return;
            }
            v(SSPTrackingHelper.a.s(stringExtra));
            if (U0.J(this, stringExtra)) {
                u();
                finish();
            } else if (stringExtra.startsWith("https://") || stringExtra.startsWith(DefaultWebClient.HTTP_SCHEME)) {
                q(stringExtra);
                this.h.loadUrl(stringExtra);
            }
        } catch (Exception unused) {
        }
    }

    @Override
    public void onBackPressed() {
        WebPageBean webPageBean;
        WebView webView;
        if (this.l && (webView = this.h) != null && webView.canGoBack()) {
            this.h.goBack();
            return;
        }
        if (!this.o && (webPageBean = this.s) != null) {
            this.r = true;
            webPageBean.setJumpTime(System.currentTimeMillis());
            AthenaTracker.t0(this.s.getWebId(), this.s.getUrl(), this.s.getTargetUrl(), -1, "fail", "jump", 9000, this.s.getWaitTime());
        }
        try {
            super.onBackPressed();
        } catch (Exception unused) {
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        if (r6.n() == 1) {
            setRequestedOrientation(1);
        } else if (r6.n() == 0) {
            setRequestedOrientation(0);
        }
        super.onCreate(bundle);
        this.m = System.currentTimeMillis();
        setContentView(R.layout.tad_exposure_activity);
        View childAt = ((ViewGroup) findViewById(android.R.id.content)).getChildAt(0);
        if (childAt != null) {
            childAt.setFitsSystemWindows(true);
        }
        this.s = new WebPageBean();
        this.b = (ProgressBar) findViewById(R.id.pb_progress);
        this.c = (LinearLayout) findViewById(R.id.main_content);
        this.d = (FrameLayout) findViewById(R.id.layout_title);
        this.e = (FrameLayout) findViewById(R.id.layout_content);
        FrameLayout frameLayout = this.d;
        if (frameLayout != null) {
            this.f = (ImageView) frameLayout.findViewById(R.id.im_back);
            this.g = (TextView) this.d.findViewById(R.id.tv_title);
        }
        if (r()) {
            s();
        }
    }

    @Override
    public void onDestroy() {
        try {
            WebView webView = this.h;
            if (webView != null) {
                ViewParent parent = webView.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(this.h);
                }
                this.h.stopLoading();
                this.h.getSettings().setJavaScriptEnabled(false);
                this.h.setWebChromeClient(null);
                this.h.clearHistory();
                this.h.removeAllViews();
                this.h.destroy();
            }
            j(TaErrorCode.WEBVIEW_ON_DESTORY);
        } catch (Throwable th) {
            ikd.b().d("TBaseLandingActivity", Log.getStackTraceString(th));
        }
        super.onDestroy();
    }

    @Override
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        WebView webView;
        if (i != 4 || (webView = this.h) == null || !webView.canGoBack()) {
            return super.onKeyDown(i, keyEvent);
        }
        this.h.goBack();
        return true;
    }

    public void q(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        if (this.d != null) {
            if (str.contains("isNativeHeader=false")) {
                this.d.setVisibility(8);
            } else {
                this.d.setVisibility(0);
            }
        }
        if (str.contains("isBackPage=false")) {
            this.l = false;
        }
        if (this.b != null) {
            if (str.contains("isNativeLoading=false")) {
                this.b.setVisibility(8);
            } else {
                this.b.setVisibility(0);
            }
        }
        ImageView imageView = this.f;
        if (imageView != null) {
            imageView.setOnClickListener(new ViewOnClickListenerC0042b());
        }
    }

    public final boolean r() {
        if (getIntent() == null) {
            j(TaErrorCode.WEBVIEW_INTENT_NULL);
            ikd.b().e("TBaseLandingActivity", "initWebView intent is null");
            finish();
            return false;
        }
        try {
            Parcelable parcelableExtra = getIntent().getParcelableExtra("tag_ad_bean");
            this.i = parcelableExtra instanceof AdsDTO ? (AdsDTO) parcelableExtra : null;
            this.j = (DownUpPointBean) getIntent().getParcelableExtra("pointBean");
            this.k = (Bundle) getIntent().getParcelableExtra("ab_Test_Data");
        } catch (Exception unused) {
        }
        if (this.i != null) {
            return true;
        }
        j(TaErrorCode.WEBVIEW_ADSDTO_NULL);
        ikd.b().e("TBaseLandingActivity", "initWebView,adsDto is null");
        finish();
        return false;
    }

    public void s() {
        try {
            this.h = new ActionWebView(this);
            ((FrameLayout) findViewById(R.id.fl_webview)).addView(this.h);
            WebView webView = this.h;
            if (webView != null) {
                webView.getSettings().setJavaScriptEnabled(true);
                this.h.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
                this.h.getSettings().setSupportZoom(true);
                this.h.getSettings().setUseWideViewPort(true);
                this.h.getSettings().setLoadWithOverviewMode(true);
                this.h.getSettings().setDisplayZoomControls(true);
                this.h.getSettings().setCacheMode(-1);
                this.h.getSettings().setDomStorageEnabled(true);
                this.h.setWebChromeClient(new a());
                this.h.setWebViewClient(h());
            }
            if (r6.p()) {
                WebView.setWebContentsDebuggingEnabled(true);
            }
            WebPageBean webPageBean = this.s;
            if (webPageBean != null) {
                webPageBean.setPageClickTime(this.m);
            }
            WebPageBean webPageBean2 = this.s;
            if (webPageBean2 != null) {
                webPageBean2.setInitEndTime(System.currentTimeMillis());
                AthenaTracker.u0(this.s.getWebId(), this.s.getUrl(), this.s.getTargetUrl(), -1, -1, this.s.getInitTime());
            }
        } catch (Throwable th) {
            ikd.b().e("TBaseLandingActivity", "create webview error: " + Log.getStackTraceString(th));
            j(TaErrorCode.WEBVIEW_CREAT_ERROR);
            this.h = null;
            finish();
        }
    }

    public final void t(String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.setPackage("com.android.vending");
            intent.setFlags(268435456);
            ul4.a().startActivity(intent);
            finish();
            ikd.b().d("TBaseLandingActivity", "open gp link " + str);
        } catch (Throwable th) {
            ikd.b().e("TBaseLandingActivity", "startGp " + Log.getStackTraceString(th));
            finish();
        }
    }

    public void u() {
        this.v = true;
    }

    public void v(String str) {
        if (this.u) {
            this.x.add(str);
        } else {
            this.w.add(str);
        }
    }

    public void w() {
        this.t = true;
    }
}
