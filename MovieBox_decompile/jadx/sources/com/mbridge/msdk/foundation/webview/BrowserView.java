package com.mbridge.msdk.foundation.webview;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import java.lang.reflect.Method;

public class BrowserView extends LinearLayout {

    private CampaignEx f35002a;

    private String f35003b;

    private e f35004c;

    private WebView f35005d;

    private ProgressBar f35006e;

    private ToolBar f35007f;

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            if (BrowserView.this.f35005d != null) {
                BrowserView.this.f35005d.stopLoading();
            }
            String str = (String) view.getTag();
            boolean z10 = false;
            if (TextUtils.equals(str, com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.BACKWARD)) {
                BrowserView.this.f35007f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.FORWARD).setEnabled(true);
                if (BrowserView.this.f35005d != null && BrowserView.this.f35005d.canGoBack()) {
                    BrowserView.this.f35005d.goBack();
                }
                View item = BrowserView.this.f35007f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.BACKWARD);
                if (BrowserView.this.f35005d != null && BrowserView.this.f35005d.canGoBack()) {
                    z10 = true;
                }
                item.setEnabled(z10);
                return;
            }
            if (TextUtils.equals(str, com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.FORWARD)) {
                BrowserView.this.f35007f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.BACKWARD).setEnabled(true);
                if (BrowserView.this.f35005d != null && BrowserView.this.f35005d.canGoForward()) {
                    BrowserView.this.f35005d.goForward();
                }
                View item2 = BrowserView.this.f35007f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.FORWARD);
                if (BrowserView.this.f35005d != null && BrowserView.this.f35005d.canGoForward()) {
                    z10 = true;
                }
                item2.setEnabled(z10);
                return;
            }
            if (!TextUtils.equals(str, com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.REFRESH)) {
                if (!TextUtils.equals(str, com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.EXITS) || BrowserView.this.f35004c == null) {
                    return;
                }
                BrowserView.this.f35004c.a();
                return;
            }
            BrowserView.this.f35007f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.BACKWARD).setEnabled(BrowserView.this.f35005d != null && BrowserView.this.f35005d.canGoBack());
            View item3 = BrowserView.this.f35007f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.FORWARD);
            if (BrowserView.this.f35005d != null && BrowserView.this.f35005d.canGoForward()) {
                z10 = true;
            }
            item3.setEnabled(z10);
            if (BrowserView.this.f35005d != null) {
                BrowserView.this.f35005d.loadUrl(BrowserView.this.f35003b);
            }
        }
    }

    class b extends WebViewClient {
        b() {
        }

        @Override
        public void onLoadResource(WebView webView, String str) {
            super.onLoadResource(webView, str);
            o0.c("BrowserView", "onLoadResource 开始! = " + str);
            if (BrowserView.this.f35004c != null) {
                BrowserView.this.f35004c.c(webView, str);
            }
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
            if (BrowserView.this.f35004c != null) {
                BrowserView.this.f35004c.a(webView, str);
            }
        }

        @Override
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            o0.c("BrowserView", "开始! = " + str);
            BrowserView.this.f35003b = str;
            if (BrowserView.this.f35004c != null) {
                BrowserView.this.f35004c.a(webView, str, bitmap);
            }
            BrowserView.this.f35006e.setVisible(true);
            BrowserView.this.f35006e.setProgressState(5);
        }

        @Override
        public void onReceivedError(WebView webView, int i10, String str, String str2) {
            if (BrowserView.this.f35004c != null) {
                BrowserView.this.f35004c.a(webView, i10, str, str2);
            }
        }

        @Override
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (webView != null) {
                try {
                    ViewGroup viewGroup = (ViewGroup) webView.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(webView);
                    }
                    webView.destroy();
                } catch (Throwable th2) {
                    o0.b("BrowserView", th2.getMessage());
                    return true;
                }
            }
            if (BrowserView.this.f35004c != null) {
                BrowserView.this.f35004c.a();
            }
            return true;
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            o0.c("BrowserView", "js大跳! = " + str);
            BrowserView.this.f35007f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.BACKWARD).setEnabled(true);
            BrowserView.this.f35007f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.FORWARD).setEnabled(false);
            if (BrowserView.this.f35004c != null) {
                return BrowserView.this.f35004c.b(webView, str);
            }
            return false;
        }
    }

    class c extends WebChromeClient {

        class a implements Runnable {
            a() {
            }

            @Override
            public void run() {
                BrowserView.this.f35006e.setVisible(false);
            }
        }

        c() {
        }

        @Override
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            return true;
        }

        @Override
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            return true;
        }

        @Override
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            return true;
        }

        @Override
        public void onProgressChanged(WebView webView, int i10) {
            if (i10 == 100) {
                BrowserView.this.f35006e.setProgressState(7);
                new Handler().postDelayed(new a(), 200L);
            }
        }
    }

    class d extends WebChromeClient {

        class a implements Runnable {
            a() {
            }

            @Override
            public void run() {
                BrowserView.this.f35006e.setVisible(false);
            }
        }

        d() {
        }

        @Override
        public void onProgressChanged(WebView webView, int i10) {
            if (i10 == 100) {
                BrowserView.this.f35006e.setProgressState(7);
                new Handler().postDelayed(new a(), 200L);
            }
        }
    }

    public interface e {
        void a();

        void a(WebView webView, int i10, String str, String str2);

        void a(WebView webView, String str);

        void a(WebView webView, String str, Bitmap bitmap);

        boolean b(WebView webView, String str);

        void c(WebView webView, String str);
    }

    public BrowserView(Context context, CampaignEx campaignEx) {
        super(context);
        this.f35002a = campaignEx;
        init();
    }

    private WebView getWebView() {
        WebView webView = new WebView(getContext());
        try {
            WebSettings settings = webView.getSettings();
            settings.setJavaScriptEnabled(true);
            settings.setCacheMode(-1);
            settings.setAllowFileAccess(true);
            settings.setBuiltInZoomControls(true);
            settings.setJavaScriptCanOpenWindowsAutomatically(true);
            settings.setDomStorageEnabled(true);
            settings.setSupportZoom(false);
            settings.setSavePassword(false);
            settings.setDatabaseEnabled(true);
            settings.setUseWideViewPort(true);
            settings.setLoadWithOverviewMode(true);
            settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
            if (Build.VERSION.SDK_INT >= 26) {
                try {
                    settings.setSafeBrowsingEnabled(false);
                } catch (Throwable th2) {
                    o0.b("BrowserView", th2.getMessage());
                }
                settings.setMediaPlaybackRequiresUserGesture(false);
                settings.setAllowFileAccessFromFileURLs(false);
                settings.setAllowUniversalAccessFromFileURLs(false);
                try {
                    settings.setMixedContentMode(0);
                } catch (Exception e10) {
                    o0.b("BrowserView", e10.getMessage());
                }
                settings.setDatabaseEnabled(true);
                String path = getContext().getDir("database", 0).getPath();
                settings.setDatabasePath(path);
                settings.setGeolocationEnabled(true);
                settings.setGeolocationDatabasePath(path);
                try {
                    Method declaredMethod = WebSettings.class.getDeclaredMethod("setDisplayZoomControls", Boolean.TYPE);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(settings, Boolean.FALSE);
                } catch (Exception e11) {
                    o0.b("BrowserView", e11.getMessage());
                }
            } else {
                settings.setMediaPlaybackRequiresUserGesture(false);
                settings.setAllowFileAccessFromFileURLs(false);
                settings.setAllowUniversalAccessFromFileURLs(false);
                settings.setMixedContentMode(0);
                settings.setDatabaseEnabled(true);
                String path2 = getContext().getDir("database", 0).getPath();
                settings.setDatabasePath(path2);
                settings.setGeolocationEnabled(true);
                settings.setGeolocationDatabasePath(path2);
                Method declaredMethod2 = WebSettings.class.getDeclaredMethod("setDisplayZoomControls", Boolean.TYPE);
                declaredMethod2.setAccessible(true);
                declaredMethod2.invoke(settings, Boolean.FALSE);
            }
        } catch (Throwable th3) {
            o0.b("BrowserView", th3.getMessage());
        }
        webView.setDownloadListener(new com.mbridge.msdk.foundation.same.webview.a(this.f35002a));
        webView.setWebViewClient(new b());
        webView.setWebChromeClient(k0.r() <= 10 ? new c() : new d());
        return webView;
    }

    public void destroy() {
        try {
            WebView webView = this.f35005d;
            if (webView != null) {
                webView.setWebViewClient(null);
                this.f35005d.destroy();
                this.f35005d = null;
                removeAllViews();
            }
        } catch (Throwable th2) {
            o0.b("BrowserView", th2.getMessage());
        }
    }

    public void init() {
        setOrientation(1);
        setGravity(17);
        a();
        this.f35006e.initResource(true);
        this.f35007f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.BACKWARD).setEnabled(false);
        this.f35007f.getItem(com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar.FORWARD).setEnabled(false);
        this.f35007f.setOnItemClickListener(new a());
    }

    public void loadUrl(String str) {
        WebView webView = this.f35005d;
        if (webView != null) {
            webView.loadUrl(str);
        }
    }

    public void setListener(e eVar) {
        this.f35004c = eVar;
    }

    public void setWebView(WebView webView) {
        this.f35005d = webView;
    }

    private void a() {
        ProgressBar progressBar = new ProgressBar(getContext());
        this.f35006e = progressBar;
        progressBar.setLayoutParams(new LinearLayout.LayoutParams(-1, 4));
        try {
            if (this.f35005d == null) {
                this.f35005d = getWebView();
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
            layoutParams.weight = 1.0f;
            this.f35005d.setLayoutParams(layoutParams);
        } catch (Throwable th2) {
            o0.b("BrowserView", "webview is error", th2);
        }
        this.f35007f = new ToolBar(getContext());
        this.f35007f.setLayoutParams(new LinearLayout.LayoutParams(-1, t0.a(getContext(), 40.0f)));
        this.f35007f.setBackgroundColor(-1);
        addView(this.f35006e);
        WebView webView = this.f35005d;
        if (webView != null) {
            addView(webView);
        }
        addView(this.f35007f);
    }

    public BrowserView(Context context) {
        super(context);
        init();
    }

    public BrowserView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }
}
