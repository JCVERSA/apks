package com.cloud.hisavana.sdk.common.activity;

import android.R;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.cloud.hisavana.sdk.J0;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.R$style;
import com.cloud.hisavana.sdk.Y0;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.o0;
import com.cloud.hisavana.sdk.common.util.q0;
import com.cloud.hisavana.sdk.data.bean.request.FormBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.google.logging.type.LogSeverity;
import java.lang.ref.WeakReference;

public class TAdWebFormsActivity extends Activity {

    private AdsDTO f21270b;

    private DownUpPointBean f21271c;

    private String f21272d;

    private String f21273e;

    private int f21274f;

    private WebView f21275g;

    private FrameLayout f21276h;

    private long f21277i;

    private final int f21269a = LogSeverity.EMERGENCY_VALUE;

    private final c f21278j = new c(this, Looper.getMainLooper());

    private WebViewClient f21279k = new a();

    private WebChromeClient f21280l = new WebChromeClient();

    class a extends g7.j {
        a() {
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
        }

        @Override
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (webView != TAdWebFormsActivity.this.f21275g || TAdWebFormsActivity.this.f21275g == null) {
                return super.onRenderProcessGone(webView, renderProcessGoneDetail);
            }
            ViewGroup viewGroup = (ViewGroup) TAdWebFormsActivity.this.f21275g.getParent();
            if (viewGroup == null) {
                return true;
            }
            viewGroup.removeView(TAdWebFormsActivity.this.f21275g);
            return true;
        }

        @Override
        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            b4.b().d("TAdWebFormsActivity", "shouldInterceptRequest URL== " + str);
            WebResourceResponse webResourceResponseA = q0.a(str);
            if (webResourceResponseA == null || TAdWebFormsActivity.this.f21270b == null || !TAdWebFormsActivity.this.f21270b.isOfflineAd()) {
                return super.shouldInterceptRequest(webView, str);
            }
            AthenaTracker.w(TAdWebFormsActivity.this.f21270b, System.currentTimeMillis() - TAdWebFormsActivity.this.f21277i);
            return webResourceResponseA;
        }
    }

    private static class b implements Runnable {

        private final WeakReference<TAdWebFormsActivity> f21282a;

        private final WeakReference<AdsDTO> f21283b;

        private final WeakReference<Handler> f21284c;

        b(TAdWebFormsActivity tAdWebFormsActivity, AdsDTO adsDTO, Handler handler, a aVar) {
            this(tAdWebFormsActivity, adsDTO, handler);
        }

        @Override
        public void run() throws Throwable {
            TAdWebFormsActivity tAdWebFormsActivity = this.f21282a.get();
            AdsDTO adsDTO = this.f21283b.get();
            if (adsDTO == null || tAdWebFormsActivity == null) {
                return;
            }
            try {
                if (adsDTO.isOfflineAd()) {
                    tAdWebFormsActivity.f21273e = J0.i(tAdWebFormsActivity.f21272d, 1);
                }
                if (TextUtils.isEmpty(tAdWebFormsActivity.f21273e)) {
                    tAdWebFormsActivity.d();
                    return;
                }
                String strD = com.cloud.hisavana.sdk.common.util.m.d(tAdWebFormsActivity.f21273e);
                if (TextUtils.isEmpty(strD)) {
                    tAdWebFormsActivity.d();
                    return;
                }
                Handler handler = this.f21284c.get();
                if (handler == null) {
                    return;
                }
                Message messageObtain = Message.obtain();
                messageObtain.what = 1;
                Bundle bundle = new Bundle();
                bundle.putString("load_runnable_data", strD);
                messageObtain.setData(bundle);
                handler.sendMessage(messageObtain);
            } catch (Exception e10) {
                b4.b().e(Log.getStackTraceString(e10));
            }
        }

        private b(TAdWebFormsActivity tAdWebFormsActivity, AdsDTO adsDTO, Handler handler) {
            this.f21282a = new WeakReference<>(tAdWebFormsActivity);
            this.f21283b = new WeakReference<>(adsDTO);
            this.f21284c = new WeakReference<>(handler);
        }
    }

    private static class c extends Handler {

        private final WeakReference f21285a;

        public c(TAdWebFormsActivity tAdWebFormsActivity, Looper looper) {
            super(looper);
            this.f21285a = new WeakReference(tAdWebFormsActivity);
        }

        @Override
        public void handleMessage(Message message) {
            TAdWebFormsActivity tAdWebFormsActivity;
            if (message.what != 1 || (tAdWebFormsActivity = (TAdWebFormsActivity) this.f21285a.get()) == null) {
                return;
            }
            try {
                WebView webView = tAdWebFormsActivity.f21275g;
                if (webView == null || message.getData() == null) {
                    tAdWebFormsActivity.d();
                } else {
                    webView.loadDataWithBaseURL(tAdWebFormsActivity.f21272d, message.getData().getString("load_runnable_data"), "text/html; charset=utf-8", "utf-8", null);
                }
            } catch (Exception e10) {
                b4.b().e(Log.getStackTraceString(e10));
            }
        }
    }

    public static class d {

        private final WeakReference f21286a;

        public d(TAdWebFormsActivity tAdWebFormsActivity) {
            this.f21286a = new WeakReference(tAdWebFormsActivity);
        }

        @JavascriptInterface
        public void close() {
            b4.b().d("ssp", "SspWebWindow-----> close");
            WeakReference weakReference = this.f21286a;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            ((TAdWebFormsActivity) this.f21286a.get()).d();
        }

        @JavascriptInterface
        public void submitForm(String str) {
            b4.b().d("ssp", "SspWebWindow-----> submitForm");
            TAdWebFormsActivity tAdWebFormsActivity = (TAdWebFormsActivity) this.f21286a.get();
            if (tAdWebFormsActivity != null) {
                tAdWebFormsActivity.e(str);
            }
        }
    }

    private int a(float f10) {
        return (int) ((f10 * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void d() {
        if (m()) {
            finishAndRemoveTask();
        } else {
            finish();
        }
    }

    private void g() {
        if (this.f21275g == null) {
            d();
            return;
        }
        this.f21272d = getIntent().getStringExtra("ad_web_form_url");
        this.f21273e = getIntent().getStringExtra("ad_web_form_file_path");
        this.f21270b = (AdsDTO) getIntent().getParcelableExtra("ad_web_form_dto");
        this.f21271c = (DownUpPointBean) getIntent().getParcelableExtra("ad_web_form_point");
        if (TextUtils.isEmpty(this.f21272d)) {
            d();
            return;
        }
        AdsDTO adsDTO = this.f21270b;
        if (adsDTO != null && !adsDTO.isOfflineAd() && TextUtils.isEmpty(this.f21273e)) {
            d();
            return;
        }
        h();
        try {
            o();
        } catch (Exception e10) {
            b4.b().e(Log.getStackTraceString(e10));
        }
    }

    private void h() {
        String strC = o0.c("height", this.f21272d);
        int iMin = LogSeverity.EMERGENCY_VALUE;
        try {
            this.f21274f = Integer.parseInt(o0.c("formId", this.f21272d));
            int i10 = Integer.parseInt(strC);
            iMin = Math.min(i10 == 0 ? 800 : a(i10), (com.cloud.sdk.commonutil.util.e.a().getResources().getDisplayMetrics().heightPixels * 4) / 5);
        } catch (NumberFormatException unused) {
        }
        try {
            FrameLayout frameLayout = this.f21276h;
            if (frameLayout == null || this.f21275g == null) {
                d();
                return;
            }
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
            layoutParams.width = (com.cloud.sdk.commonutil.util.e.a().getResources().getDisplayMetrics().widthPixels * 4) / 5;
            layoutParams.height = iMin;
            layoutParams.gravity = 17;
            this.f21276h.setLayoutParams(layoutParams);
            this.f21276h.removeAllViews();
            this.f21276h.addView(this.f21275g);
        } catch (Exception unused2) {
            d();
        }
    }

    private void k() {
        try {
            WebView webView = new WebView(this);
            this.f21275g = webView;
            webView.setVisibility(0);
            this.f21275g.setBackgroundColor(0);
            WebSettings settings = this.f21275g.getSettings();
            settings.setJavaScriptEnabled(true);
            settings.setMixedContentMode(0);
            settings.setLoadsImagesAutomatically(true);
            settings.setSupportMultipleWindows(false);
            settings.setJavaScriptCanOpenWindowsAutomatically(true);
            settings.setDefaultTextEncodingName("UTF-8");
            settings.setNeedInitialFocus(true);
            settings.setDisplayZoomControls(false);
            settings.setUseWideViewPort(true);
            settings.setLoadWithOverviewMode(true);
            this.f21275g.addJavascriptInterface(new d(this), "sspWebView");
            this.f21275g.setWebViewClient(this.f21279k);
            this.f21275g.setWebChromeClient(this.f21280l);
            this.f21275g.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        } catch (Throwable th2) {
            b4.b().e("TAdWebFormsActivity", "create webview error: " + Log.getStackTraceString(th2));
            this.f21275g = null;
            d();
        }
    }

    private boolean m() {
        return com.cloud.sdk.commonutil.util.l.a();
    }

    private void o() {
        Y0.h(this.f21271c, this.f21270b, Boolean.FALSE);
        HSScopeHelper.f22503a.g(new b(this, this.f21270b, this.f21278j, null));
    }

    private void p() {
        getWindow().setLayout(-1, -1);
        setFinishOnTouchOutside(false);
        this.f21276h = (FrameLayout) findViewById(R$id.fl_content);
        this.f21277i = System.currentTimeMillis();
        k();
    }

    public void e(String str) {
        b4.b().d("ssp", "SspWebWindow-----> submitForm    " + str);
        try {
            FormBean formBean = (FormBean) GsonUtil.a(str, FormBean.class);
            formBean.setGaid(DeviceUtil.e());
            formBean.setFormId(this.f21274f);
            formBean.setIpAddress(DeviceUtil.h());
            if (NetStateManager.checkNetworkState(false)) {
                J0.Q(GsonUtil.d(formBean), 0);
            } else {
                AthenaTracker.O(this.f21270b, formBean);
            }
        } catch (GsonUtil.GsonParseException e10) {
            b4.b().d("ssp", "SspWebWindow-----> submitForm    " + e10.getMessage());
        }
    }

    @Override
    protected void onCreate(Bundle bundle) {
        setTitle((CharSequence) null);
        if (c7.b.j() == 1) {
            setRequestedOrientation(1);
        } else if (c7.b.j() == 0) {
            setRequestedOrientation(0);
        }
        super.onCreate(bundle);
        if (com.cloud.sdk.commonutil.util.h.e() == 2) {
            setTheme(R$style.AppCompatTranscutes);
        } else {
            setTheme(R$style.TranslucentStyle);
        }
        setContentView(R$layout.activity_t_ad_web_forms);
        View childAt = ((ViewGroup) findViewById(R.id.content)).getChildAt(0);
        if (childAt != null) {
            childAt.setFitsSystemWindows(true);
        }
        b4.b().d("TAdWebFormsActivity", "展示form表单页面");
        p();
        g();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        FrameLayout frameLayout = this.f21276h;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        WebView webView = this.f21275g;
        if (webView != null) {
            webView.stopLoading();
            this.f21275g.removeJavascriptInterface("");
            this.f21275g.getSettings().setJavaScriptEnabled(false);
            this.f21275g.setWebChromeClient(null);
            this.f21275g.setWebViewClient(null);
            this.f21275g.clearHistory();
            try {
                this.f21275g.freeMemory();
                this.f21275g.destroy();
            } catch (Exception e10) {
                b4.b().d("TAdWebFormsActivity", Log.getStackTraceString(e10));
            }
            this.f21275g = null;
        }
        this.f21278j.removeCallbacksAndMessages(null);
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        g();
    }
}
