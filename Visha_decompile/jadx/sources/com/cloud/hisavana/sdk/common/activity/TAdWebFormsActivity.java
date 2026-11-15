package com.cloud.hisavana.sdk.common.activity;

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
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.data.bean.request.FormBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.k1;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import defpackage.cjb;
import defpackage.hm4;
import defpackage.ikd;
import defpackage.jm4;
import defpackage.oic;
import defpackage.r6;
import defpackage.ui5;
import defpackage.ul4;
import defpackage.yu3;
import java.lang.ref.WeakReference;

public class TAdWebFormsActivity extends Activity {
    public AdsDTO c;
    public DownUpPointBean d;
    public String e;
    public String f;
    public int g;
    public WebView h;
    public FrameLayout i;
    public long j;
    public final int b = 800;
    public final c k = new c(this, Looper.getMainLooper());
    public WebViewClient l = new a();
    public WebChromeClient m = new WebChromeClient();

    public class a extends jm4 {
        public a() {
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
        }

        @Override
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (webView != TAdWebFormsActivity.this.h || TAdWebFormsActivity.this.h == null) {
                return super.onRenderProcessGone(webView, renderProcessGoneDetail);
            }
            ViewGroup viewGroup = (ViewGroup) TAdWebFormsActivity.this.h.getParent();
            if (viewGroup == null) {
                return true;
            }
            viewGroup.removeView(TAdWebFormsActivity.this.h);
            return true;
        }

        @Override
        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            ikd.b().d("TAdWebFormsActivity", "shouldInterceptRequest URL== " + str);
            WebResourceResponse webResourceResponseA = oic.a(str);
            if (webResourceResponseA == null || TAdWebFormsActivity.this.c == null || !TAdWebFormsActivity.this.c.isOfflineAd()) {
                return super.shouldInterceptRequest(webView, str);
            }
            AthenaTracker.y(TAdWebFormsActivity.this.c, System.currentTimeMillis() - TAdWebFormsActivity.this.j);
            return webResourceResponseA;
        }
    }

    public static class b implements Runnable {
        private final WeakReference<TAdWebFormsActivity> a;
        private final WeakReference<AdsDTO> b;
        private final WeakReference<Handler> c;

        public b(TAdWebFormsActivity tAdWebFormsActivity, AdsDTO adsDTO, Handler handler, a aVar) {
            this(tAdWebFormsActivity, adsDTO, handler);
        }

        @Override
        public void run() throws Throwable {
            TAdWebFormsActivity tAdWebFormsActivity = this.a.get();
            AdsDTO adsDTO = this.b.get();
            if (adsDTO == null || tAdWebFormsActivity == null) {
                return;
            }
            try {
                if (adsDTO.isOfflineAd()) {
                    tAdWebFormsActivity.f = U0.j(tAdWebFormsActivity.e, 1);
                }
                if (TextUtils.isEmpty(tAdWebFormsActivity.f)) {
                    tAdWebFormsActivity.d();
                    return;
                }
                String strD = yu3.d(tAdWebFormsActivity.f);
                if (TextUtils.isEmpty(strD)) {
                    tAdWebFormsActivity.d();
                    return;
                }
                Handler handler = this.c.get();
                if (handler == null) {
                    return;
                }
                Message messageObtain = Message.obtain();
                messageObtain.what = 1;
                Bundle bundle = new Bundle();
                bundle.putString("load_runnable_data", strD);
                messageObtain.setData(bundle);
                handler.sendMessage(messageObtain);
            } catch (Exception e) {
                ikd.b().e(Log.getStackTraceString(e));
            }
        }

        private b(TAdWebFormsActivity tAdWebFormsActivity, AdsDTO adsDTO, Handler handler) {
            this.a = new WeakReference<>(tAdWebFormsActivity);
            this.b = new WeakReference<>(adsDTO);
            this.c = new WeakReference<>(handler);
        }
    }

    public static class c extends Handler {
        public final WeakReference a;

        public c(TAdWebFormsActivity tAdWebFormsActivity, Looper looper) {
            super(looper);
            this.a = new WeakReference(tAdWebFormsActivity);
        }

        @Override
        public void handleMessage(Message message) {
            TAdWebFormsActivity tAdWebFormsActivity;
            if (message.what != 1 || (tAdWebFormsActivity = (TAdWebFormsActivity) this.a.get()) == null) {
                return;
            }
            try {
                WebView webView = tAdWebFormsActivity.h;
                if (webView == null || message.getData() == null) {
                    tAdWebFormsActivity.d();
                } else {
                    webView.loadDataWithBaseURL(tAdWebFormsActivity.e, message.getData().getString("load_runnable_data"), "text/html; charset=utf-8", "utf-8", null);
                }
            } catch (Exception e) {
                ikd.b().e(Log.getStackTraceString(e));
            }
        }
    }

    public static class d {
        public final WeakReference a;

        public d(TAdWebFormsActivity tAdWebFormsActivity) {
            this.a = new WeakReference(tAdWebFormsActivity);
        }

        @JavascriptInterface
        public void close() {
            ikd.b().d("ssp", "SspWebWindow-----> close");
            WeakReference weakReference = this.a;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            ((TAdWebFormsActivity) this.a.get()).d();
        }

        @JavascriptInterface
        public void submitForm(String str) {
            ikd.b().d("ssp", "SspWebWindow-----> submitForm");
            TAdWebFormsActivity tAdWebFormsActivity = (TAdWebFormsActivity) this.a.get();
            if (tAdWebFormsActivity != null) {
                tAdWebFormsActivity.e(str);
            }
        }
    }

    public final int a(float f) {
        return (int) ((f * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public final void d() {
        if (m()) {
            finishAndRemoveTask();
        } else {
            finish();
        }
    }

    public void e(String str) {
        ikd.b().d("ssp", "SspWebWindow-----> submitForm    " + str);
        try {
            FormBean formBean = (FormBean) GsonUtil.a(str, FormBean.class);
            formBean.setGaid(DeviceUtil.f());
            formBean.setFormId(this.g);
            formBean.setIpAddress(DeviceUtil.i());
            if (NetStateManager.checkNetworkState(false)) {
                U0.R(GsonUtil.d(formBean), 0);
            } else {
                AthenaTracker.T(this.c, formBean);
            }
        } catch (GsonUtil.GsonParseException e) {
            ikd.b().d("ssp", "SspWebWindow-----> submitForm    " + e.getMessage());
        }
    }

    public final void g() {
        if (this.h == null) {
            d();
            return;
        }
        this.e = getIntent().getStringExtra("ad_web_form_url");
        this.f = getIntent().getStringExtra("ad_web_form_file_path");
        this.c = (AdsDTO) getIntent().getParcelableExtra("ad_web_form_dto");
        this.d = (DownUpPointBean) getIntent().getParcelableExtra("ad_web_form_point");
        if (TextUtils.isEmpty(this.e)) {
            d();
            return;
        }
        AdsDTO adsDTO = this.c;
        if (adsDTO != null && !adsDTO.isOfflineAd() && TextUtils.isEmpty(this.f)) {
            d();
            return;
        }
        h();
        try {
            o();
        } catch (Exception e) {
            ikd.b().e(Log.getStackTraceString(e));
        }
    }

    public final void h() {
        String strC = cjb.c("height", this.e);
        int iMin = 800;
        try {
            this.g = Integer.parseInt(cjb.c("formId", this.e));
            int i = Integer.parseInt(strC);
            iMin = Math.min(i == 0 ? 800 : a(i), (ul4.a().getResources().getDisplayMetrics().heightPixels * 4) / 5);
        } catch (NumberFormatException unused) {
        }
        try {
            FrameLayout frameLayout = this.i;
            if (frameLayout == null || this.h == null) {
                d();
                return;
            }
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
            layoutParams.width = (ul4.a().getResources().getDisplayMetrics().widthPixels * 4) / 5;
            layoutParams.height = iMin;
            layoutParams.gravity = 17;
            this.i.setLayoutParams(layoutParams);
            this.i.removeAllViews();
            this.i.addView(this.h);
        } catch (Exception unused2) {
            d();
        }
    }

    public final void k() {
        try {
            WebView webView = new WebView(this);
            this.h = webView;
            webView.setVisibility(0);
            this.h.setBackgroundColor(0);
            WebSettings settings = this.h.getSettings();
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
            this.h.addJavascriptInterface(new d(this), "sspWebView");
            this.h.setWebViewClient(this.l);
            this.h.setWebChromeClient(this.m);
            this.h.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        } catch (Throwable th) {
            ikd.b().e("TAdWebFormsActivity", "create webview error: " + Log.getStackTraceString(th));
            this.h = null;
            d();
        }
    }

    public final boolean m() {
        return ui5.a();
    }

    public final void o() {
        k1.h(this.d, this.c, Boolean.FALSE);
        HSScopeHelper.a.l(new b(this, this.c, this.k, null));
    }

    @Override
    public void onCreate(Bundle bundle) {
        setTitle((CharSequence) null);
        if (r6.n() == 1) {
            setRequestedOrientation(1);
        } else if (r6.n() == 0) {
            setRequestedOrientation(0);
        }
        super.onCreate(bundle);
        if (hm4.f() == 2) {
            setTheme(R.style.AppCompatTranscutes);
        } else {
            setTheme(R.style.TranslucentStyle);
        }
        setContentView(R.layout.activity_t_ad_web_forms);
        View childAt = ((ViewGroup) findViewById(android.R.id.content)).getChildAt(0);
        if (childAt != null) {
            childAt.setFitsSystemWindows(true);
        }
        ikd.b().d("TAdWebFormsActivity", "展示form表单页面");
        p();
        g();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        FrameLayout frameLayout = this.i;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        WebView webView = this.h;
        if (webView != null) {
            webView.stopLoading();
            this.h.removeJavascriptInterface("");
            this.h.getSettings().setJavaScriptEnabled(false);
            this.h.setWebChromeClient(null);
            this.h.setWebViewClient(null);
            this.h.clearHistory();
            try {
                this.h.freeMemory();
                this.h.destroy();
            } catch (Exception e) {
                ikd.b().d("TAdWebFormsActivity", Log.getStackTraceString(e));
            }
            this.h = null;
        }
        this.k.removeCallbacksAndMessages(null);
    }

    @Override
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        g();
    }

    public final void p() {
        getWindow().setLayout(-1, -1);
        setFinishOnTouchOutside(false);
        this.i = (FrameLayout) findViewById(R.id.fl_content);
        this.j = System.currentTimeMillis();
        k();
    }
}
