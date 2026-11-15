package com.cloud.hisavana.sdk.common.activity;

import android.R;
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
import com.cloud.hisavana.sdk.J0;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.Y0;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.SSPParamSplicedResult;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.widget.webview.ActionWebView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.ArrayList;
import org.mvel2.ast.ASTNode;

public class b extends Activity {

    protected ProgressBar f21290a;

    protected LinearLayout f21291b;

    protected FrameLayout f21292c;

    protected FrameLayout f21293d;

    protected ImageView f21294e;

    protected TextView f21295f;

    protected WebView f21296g;

    protected AdsDTO f21297h;

    protected DownUpPointBean f21298i;

    protected Bundle f21299j;

    protected long f21301l;

    protected WebPageBean f21307r;

    protected boolean f21300k = true;

    protected boolean f21302m = false;

    private boolean f21303n = false;

    protected boolean f21304o = false;

    private boolean f21305p = false;

    private boolean f21306q = false;

    protected boolean f21308s = false;

    private boolean f21309t = false;

    private boolean f21310u = false;

    private ArrayList f21311v = new ArrayList();

    private ArrayList f21312w = new ArrayList();

    class a extends WebChromeClient {
        a() {
        }

        @Override
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            return super.onConsoleMessage(consoleMessage);
        }

        @Override
        public void onProgressChanged(WebView webView, int i10) {
            ProgressBar progressBar = b.this.f21290a;
            if (progressBar == null) {
                return;
            }
            if (i10 == 100) {
                progressBar.setVisibility(8);
            } else if (8 == progressBar.getVisibility()) {
                b.this.f21290a.setVisibility(0);
            }
            b bVar = b.this;
            if (bVar.f21307r == null || bVar.f21306q) {
                return;
            }
            if (b.this.f21303n || i10 != 100) {
                if (b.this.f21305p || b.this.f21303n || i10 < 50 || i10 >= 100) {
                    return;
                }
                b.this.f21307r.setSpendEndTime(System.currentTimeMillis());
                b.this.f21305p = true;
                AthenaTracker.o0(b.this.f21307r.getWebId(), b.this.f21307r.getUrl(), b.this.f21307r.getTargetUrl(), 50, b.this.f21307r.getRedirectType(), b.this.f21307r.getSpendTime());
                return;
            }
            b.this.f21307r.setSpendEndTime(System.currentTimeMillis());
            b.this.f21303n = true;
            AthenaTracker.o0(b.this.f21307r.getWebId(), b.this.f21307r.getUrl(), b.this.f21307r.getTargetUrl(), 100, b.this.f21307r.getRedirectType(), b.this.f21307r.getSpendTime());
            String webId = b.this.f21307r.getWebId();
            String url = b.this.f21307r.getUrl();
            String targetUrl = b.this.f21307r.getTargetUrl();
            int redirectType = b.this.f21307r.getRedirectType();
            b bVar2 = b.this;
            boolean z10 = bVar2.f21302m;
            String str = z10 ? "fail" : NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS;
            String errorType = z10 ? bVar2.f21307r.getErrorType() : "succeed";
            b bVar3 = b.this;
            AthenaTracker.n0(webId, url, targetUrl, redirectType, str, errorType, bVar3.f21302m ? bVar3.f21307r.getErrorCode() : 8000, -1L);
            b.this.j(0);
        }

        @Override
        public void onReceivedTitle(WebView webView, String str) {
            super.onReceivedTitle(webView, str);
            b4.b().d("TBaseLandingActivity", "onReceivedTitle " + str);
            if (str == null || str.isEmpty() || webView.getUrl() == null || webView.getUrl().contains(str) || b.this.f21295f == null || TextUtils.isEmpty(str)) {
                return;
            }
            b.this.f21295f.setText(str);
        }
    }

    class ViewOnClickListenerC0276b implements View.OnClickListener {
        ViewOnClickListenerC0276b() {
        }

        @Override
        public void onClick(View view) {
            b.this.onBackPressed();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override
        public void run() {
            if (b.this.isFinishing() || b.this.isDestroyed()) {
                return;
            }
            b.this.finish();
            b4.b().e("TBaseLandingActivity", "goToNext ,post finish");
        }
    }

    public static SSPParamSplicedResult a(DownUpPointBean downUpPointBean, AdsDTO adsDTO) {
        SSPParamSplicedResult sSPParamSplicedResult = new SSPParamSplicedResult();
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getClickUrl())) {
            b4.b().d("TBaseLandingActivity", "processServerClickUrl --> null == url || null == pointBean");
            sSPParamSplicedResult.setOriginalUrl("");
            sSPParamSplicedResult.setSplicedURL("");
            return sSPParamSplicedResult;
        }
        if (downUpPointBean == null || adsDTO.getDspType().intValue() == 2 || adsDTO.getSource() == 4) {
            sSPParamSplicedResult.setOriginalUrl(adsDTO.getClickUrl());
            sSPParamSplicedResult.setSplicedURL(adsDTO.getClickUrl());
            return sSPParamSplicedResult;
        }
        String strD = Y0.d(downUpPointBean, adsDTO, true, Boolean.FALSE);
        if (TextUtils.isEmpty(strD)) {
            sSPParamSplicedResult.setOriginalUrl("");
            sSPParamSplicedResult.setSplicedURL("");
            return sSPParamSplicedResult;
        }
        if (strD.contains(UrlUtils.QUESTION_MARK)) {
            String str = strD + Y0.e(adsDTO);
            sSPParamSplicedResult.setOriginalUrl(str);
            sSPParamSplicedResult.setSplicedURL(com.cloud.hisavana.sdk.common.util.r.f21605a.l(str));
        } else {
            sSPParamSplicedResult.setOriginalUrl(strD);
            sSPParamSplicedResult.setSplicedURL(strD);
        }
        return sSPParamSplicedResult;
    }

    private void b() {
        new Handler(getMainLooper()).postDelayed(new c(), 1000L);
    }

    private void c(int i10) {
        WebPageBean webPageBean;
        if (this.f21304o || (webPageBean = this.f21307r) == null) {
            return;
        }
        webPageBean.setRedirectType(i10);
        AthenaTracker.o0(this.f21307r.getWebId(), this.f21307r.getUrl(), this.f21307r.getTargetUrl(), 0, i10, this.f21307r.getLoadTime());
    }

    public static String i(DownUpPointBean downUpPointBean, AdsDTO adsDTO) {
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getClickUrl())) {
            b4.b().d("TBaseLandingActivity", "processServerClickUrl --> null == url || null == pointBean");
            return "";
        }
        if (downUpPointBean == null || adsDTO.getDspType().intValue() == 2 || adsDTO.getSource() == 4) {
            return adsDTO.getClickUrl();
        }
        String strD = Y0.d(downUpPointBean, adsDTO, true, Boolean.FALSE);
        if (TextUtils.isEmpty(strD)) {
            return "";
        }
        if (!strD.contains(UrlUtils.QUESTION_MARK)) {
            return strD;
        }
        return strD + Y0.e(adsDTO);
    }

    private void o(String str) {
        try {
            String stringExtra = Intent.parseUri(str, 1).getStringExtra("browser_fallback_url");
            if (TextUtils.isEmpty(stringExtra)) {
                return;
            }
            v(SSPTrackingHelper.f21368a.s(stringExtra));
            if (J0.I(this, stringExtra)) {
                u();
                finish();
            } else if (stringExtra.startsWith("https://") || stringExtra.startsWith("http://")) {
                q(stringExtra);
                this.f21296g.loadUrl(stringExtra);
            }
        } catch (Exception unused) {
        }
    }

    private boolean r() {
        if (getIntent() == null) {
            j(TaErrorCode.WEBVIEW_INTENT_NULL);
            b4.b().e("TBaseLandingActivity", "initWebView intent is null");
            finish();
            return false;
        }
        try {
            Parcelable parcelableExtra = getIntent().getParcelableExtra("tag_ad_bean");
            this.f21297h = parcelableExtra instanceof AdsDTO ? (AdsDTO) parcelableExtra : null;
            this.f21298i = (DownUpPointBean) getIntent().getParcelableExtra("pointBean");
            this.f21299j = (Bundle) getIntent().getParcelableExtra("ab_Test_Data");
        } catch (Exception unused) {
        }
        if (this.f21297h != null) {
            return true;
        }
        j(TaErrorCode.WEBVIEW_ADSDTO_NULL);
        b4.b().e("TBaseLandingActivity", "initWebView,adsDto is null");
        finish();
        return false;
    }

    private void t(String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.setPackage("com.android.vending");
            intent.setFlags(ASTNode.DEOP);
            com.cloud.sdk.commonutil.util.e.a().startActivity(intent);
            finish();
            b4.b().d("TBaseLandingActivity", "open gp link " + str);
        } catch (Throwable th2) {
            b4.b().e("TBaseLandingActivity", "startGp " + Log.getStackTraceString(th2));
            finish();
        }
    }

    protected boolean f(String str) {
        if (!TextUtils.isEmpty(str) && !str.startsWith("http://") && !str.startsWith("https://")) {
            try {
                Intent intent = new Intent();
                intent.setData(Uri.parse(str));
                intent.setAction("android.intent.action.VIEW");
                intent.setFlags(ASTNode.DEOP);
                startActivity(intent);
                b4.b().d("TBaseLandingActivity", "open deeplink");
                return true;
            } catch (Exception e10) {
                b4.b().e("TBaseLandingActivity", "checkDeepLink finish," + Log.getStackTraceString(e10));
                finish();
            }
        }
        return false;
    }

    protected boolean g(String str, boolean z10) {
        WebPageBean webPageBean;
        this.f21309t = z10;
        b4.b().d("TBaseLandingActivity", "webview get redirect url is:" + str);
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (!this.f21304o && (webPageBean = this.f21307r) != null) {
            webPageBean.setTargetUrl(str);
            this.f21307r.setLoadStartTime(System.currentTimeMillis());
        }
        v(SSPTrackingHelper.f21368a.s(str));
        if (str.startsWith("intent://")) {
            c(2);
            if (J0.S(this, str)) {
                u();
                if (!isFinishing() && !isDestroyed()) {
                    finish();
                }
            } else {
                o(str);
            }
            return true;
        }
        if ((str.contains(Constants.GP_DEEPLINK) || str.startsWith("market://")) && J0.J(this, str, "com.android.vending")) {
            AthenaTracker.q0(this.f21297h);
            q(str);
            u();
            c(1);
            if (!isFinishing() && !isDestroyed()) {
                finish();
            }
            return true;
        }
        if (J0.I(this, str)) {
            u();
            c(2);
            b();
            return true;
        }
        if (!str.startsWith("https://") && !str.startsWith("http://")) {
            return true;
        }
        this.f21307r.setRedirectType(0);
        AthenaTracker.q0(this.f21297h);
        q(str);
        return false;
    }

    protected WebViewClient h() {
        return new g7.j();
    }

    protected void j(int i10) {
        try {
            long jCurrentTimeMillis = 0;
            if (this.f21308s) {
                if (i10 == 8005) {
                    SSPTrackingHelper.f21368a.W(Integer.valueOf(i10), this.f21311v, this.f21312w, this.f21297h, this.f21307r, this.f21310u, true, Long.valueOf(this.f21301l != 0 ? System.currentTimeMillis() - this.f21301l : 0L), Boolean.valueOf(this.f21303n), this.f21299j);
                }
            } else {
                w();
                if (i10 == 8005 && this.f21301l != 0) {
                    jCurrentTimeMillis = System.currentTimeMillis() - this.f21301l;
                }
                SSPTrackingHelper.f21368a.W(Integer.valueOf(i10), this.f21311v, this.f21312w, this.f21297h, this.f21307r, this.f21310u, false, Long.valueOf(jCurrentTimeMillis), Boolean.valueOf(this.f21303n), this.f21299j);
            }
        } catch (Throwable unused) {
        }
    }

    protected boolean m(String str) {
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
        return this.f21307r;
    }

    @Override
    public void onBackPressed() {
        WebPageBean webPageBean;
        WebView webView;
        if (this.f21300k && (webView = this.f21296g) != null && webView.canGoBack()) {
            this.f21296g.goBack();
            return;
        }
        if (!this.f21303n && (webPageBean = this.f21307r) != null) {
            this.f21306q = true;
            webPageBean.setJumpTime(System.currentTimeMillis());
            AthenaTracker.n0(this.f21307r.getWebId(), this.f21307r.getUrl(), this.f21307r.getTargetUrl(), -1, "fail", "jump", 9000, this.f21307r.getWaitTime());
        }
        try {
            super.onBackPressed();
        } catch (Exception unused) {
        }
    }

    @Override
    protected void onCreate(Bundle bundle) {
        if (c7.b.j() == 1) {
            setRequestedOrientation(1);
        } else if (c7.b.j() == 0) {
            setRequestedOrientation(0);
        }
        super.onCreate(bundle);
        this.f21301l = System.currentTimeMillis();
        setContentView(R$layout.tad_exposure_activity);
        View childAt = ((ViewGroup) findViewById(R.id.content)).getChildAt(0);
        if (childAt != null) {
            childAt.setFitsSystemWindows(true);
        }
        this.f21307r = new WebPageBean();
        this.f21290a = (ProgressBar) findViewById(R$id.pb_progress);
        this.f21291b = (LinearLayout) findViewById(R$id.main_content);
        this.f21292c = (FrameLayout) findViewById(R$id.layout_title);
        this.f21293d = (FrameLayout) findViewById(R$id.layout_content);
        FrameLayout frameLayout = this.f21292c;
        if (frameLayout != null) {
            this.f21294e = (ImageView) frameLayout.findViewById(R$id.im_back);
            this.f21295f = (TextView) this.f21292c.findViewById(R$id.tv_title);
        }
        if (r()) {
            s();
        }
    }

    @Override
    protected void onDestroy() {
        try {
            WebView webView = this.f21296g;
            if (webView != null) {
                ViewParent parent = webView.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(this.f21296g);
                }
                this.f21296g.stopLoading();
                this.f21296g.getSettings().setJavaScriptEnabled(false);
                this.f21296g.setWebChromeClient(null);
                this.f21296g.clearHistory();
                this.f21296g.removeAllViews();
                this.f21296g.destroy();
            }
            j(TaErrorCode.WEBVIEW_ON_DESTORY);
        } catch (Throwable th2) {
            b4.b().d("TBaseLandingActivity", Log.getStackTraceString(th2));
        }
        super.onDestroy();
    }

    @Override
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        WebView webView;
        if (i10 != 4 || (webView = this.f21296g) == null || !webView.canGoBack()) {
            return super.onKeyDown(i10, keyEvent);
        }
        this.f21296g.goBack();
        return true;
    }

    protected void q(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        if (this.f21292c != null) {
            if (str.contains("isNativeHeader=false")) {
                this.f21292c.setVisibility(8);
            } else {
                this.f21292c.setVisibility(0);
            }
        }
        if (str.contains("isBackPage=false")) {
            this.f21300k = false;
        }
        if (this.f21290a != null) {
            if (str.contains("isNativeLoading=false")) {
                this.f21290a.setVisibility(8);
            } else {
                this.f21290a.setVisibility(0);
            }
        }
        ImageView imageView = this.f21294e;
        if (imageView != null) {
            imageView.setOnClickListener(new ViewOnClickListenerC0276b());
        }
    }

    protected void s() {
        try {
            this.f21296g = new ActionWebView(this);
            ((FrameLayout) findViewById(R$id.fl_webview)).addView(this.f21296g);
            WebView webView = this.f21296g;
            if (webView != null) {
                webView.getSettings().setJavaScriptEnabled(true);
                this.f21296g.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
                this.f21296g.getSettings().setSupportZoom(true);
                this.f21296g.getSettings().setUseWideViewPort(true);
                this.f21296g.getSettings().setLoadWithOverviewMode(true);
                this.f21296g.getSettings().setDisplayZoomControls(true);
                this.f21296g.getSettings().setCacheMode(-1);
                this.f21296g.getSettings().setDomStorageEnabled(true);
                this.f21296g.setWebChromeClient(new a());
                this.f21296g.setWebViewClient(h());
            }
            if (c7.b.l()) {
                WebView.setWebContentsDebuggingEnabled(true);
            }
            WebPageBean webPageBean = this.f21307r;
            if (webPageBean != null) {
                webPageBean.setPageClickTime(this.f21301l);
            }
            WebPageBean webPageBean2 = this.f21307r;
            if (webPageBean2 != null) {
                webPageBean2.setInitEndTime(System.currentTimeMillis());
                AthenaTracker.o0(this.f21307r.getWebId(), this.f21307r.getUrl(), this.f21307r.getTargetUrl(), -1, -1, this.f21307r.getInitTime());
            }
        } catch (Throwable th2) {
            b4.b().e("TBaseLandingActivity", "create webview error: " + Log.getStackTraceString(th2));
            j(TaErrorCode.WEBVIEW_CREAT_ERROR);
            this.f21296g = null;
            finish();
        }
    }

    protected void u() {
        this.f21310u = true;
    }

    protected void v(String str) {
        if (this.f21309t) {
            this.f21312w.add(str);
        } else {
            this.f21311v.add(str);
        }
    }

    protected void w() {
        this.f21308s = true;
    }
}
