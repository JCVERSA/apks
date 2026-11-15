package defpackage;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.Patterns;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.SslErrorHandler;
import android.webkit.URLUtil;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.material.appbar.AppBarLayout;
import com.just.agentweb.AgentWeb;
import com.just.agentweb.AgentWebConfig;
import com.just.agentweb.DefaultWebClient;
import com.just.agentweb.IAgentWebSettings;
import com.just.agentweb.NestedScrollAgentWebView;
import com.just.agentweb.WebChromeClient;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.playercommon.vishaweb.IWebLoadStatusCallback;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.sniffservice.VSSniffJavaScriptInterface;
import com.transsion.sniffer_load.sniffservice.VideoSnifferCore;
import com.transsion.sniffer_load.viewmodel.DownloadViewModel;
import java.lang.ref.WeakReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class z9 {
    public static final String n = "visha_" + z9.class.getSimpleName();
    public Bundle b;
    public AgentWeb c;
    public FrameLayout d;
    public IWebLoadStatusCallback f;
    public WeakReference g;
    public int[] h;
    public int[] i;
    public WeakReference j;
    public WeakReference k;
    public VideoSnifferCore e = new VideoSnifferCore();
    public fr9 l = new a();
    public WebChromeClient m = new b();

    public class b extends WebChromeClient {
        public b() {
        }

        @Override
        public Bitmap getDefaultVideoPoster() {
            return Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        }

        @Override
        public View getVideoLoadingProgressView() {
            return null;
        }

        @Override
        public void onProgressChanged(WebView webView, int i) {
            super.onProgressChanged(webView, i);
            IWebLoadStatusCallback iWebLoadStatusCallback = z9.this.f;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.A(webView, i);
            }
        }

        @Override
        public void onReceivedIcon(WebView webView, Bitmap bitmap) {
            super.onReceivedIcon(webView, bitmap);
            IWebLoadStatusCallback iWebLoadStatusCallback = z9.this.f;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.C(webView, bitmap);
            }
        }

        @Override
        public void onReceivedTitle(WebView webView, String str) {
            super.onReceivedTitle(webView, str);
            IWebLoadStatusCallback iWebLoadStatusCallback = z9.this.f;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.o(webView, str);
            }
        }

        @Override
        public void onReceivedTouchIconUrl(WebView webView, String str, boolean z) {
            super.onReceivedTouchIconUrl(webView, str, z);
            IWebLoadStatusCallback iWebLoadStatusCallback = z9.this.f;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.l(webView, str);
            }
        }
    }

    public z9(DownloadViewModel downloadViewModel) {
        this.j = new WeakReference(downloadViewModel);
    }

    public static String s(String str) {
        try {
            String strA = pi5.a.a();
            Matcher matcher = Pattern.compile("(lang=)[^&]*").matcher(str);
            if (matcher.find()) {
                str = matcher.replaceAll("$1" + strA);
            } else if (str.contains("?")) {
                str = str + "&lang=" + strA;
            } else {
                str = str + "?lang=" + strA;
            }
        } catch (Exception e) {
            LogUtils.m(n, "Failed to process language parameter: " + e.getMessage());
        }
        return str;
    }

    public void A(WebView webView, String str) {
    }

    public void B(WebView webView, String str, Bitmap bitmap) {
    }

    public boolean C(WebView webView, WebResourceRequest webResourceRequest) {
        LogUtils.j(n, "webViewShouldOverrideUrlLoading", " view=" + webView, " request=" + webResourceRequest);
        return false;
    }

    public boolean b() {
        WebView webViewH = h();
        return webViewH != null && webViewH.canGoBack();
    }

    public String c(String str) {
        if (r0a.g(str)) {
            LogUtils.j(n, "invalid url");
            return "";
        }
        if (!Patterns.WEB_URL.matcher(str).matches()) {
            str = r0a.d("https://www.google.com/search?q=%s", z93.a(str));
        }
        if (!URLUtil.isNetworkUrl(str)) {
            str = "https://" + str;
        }
        String strS = s(str);
        LogUtils.j(n, "start_load_url:" + strS);
        return strS;
    }

    public void d(Activity activity, ViewGroup viewGroup, int i) {
        this.g = new WeakReference(activity);
        if (ge.f() || ge.e()) {
            AgentWebConfig.debug();
        }
        NestedScrollAgentWebView nestedScrollAgentWebView = new NestedScrollAgentWebView(activity);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.l.d(activity);
        this.c = AgentWeb.with(activity).setAgentWebParent(viewGroup, i, layoutParams).useDefaultIndicator(activity.getResources().getColor(R.color.sniffer_web_progress_color, null), activity.getResources().getColor(R.color.sniffer_web_progress_bg_color, null), 2).setWebLayout(null).setWebView(nestedScrollAgentWebView).setAgentWebWebSettings(i()).addJavascriptInterface(VSSniffJavaScriptInterface.JS_CALL_JAVA_OBJCET_NAME_SNIFFWEBVIEWJS, new VSSniffJavaScriptInterface(this.e)).setWebViewClient(this.l).setWebChromeClient(this.m).setSecurityType(AgentWeb.SecurityType.STRICT_CHECK).setAgentWebUIController(new jeb(activity)).setOpenOtherPageWays(DefaultWebClient.OpenOtherPageWays.SPECIAL).isInterceptUnkownUrl(false).createAgentWeb().ready().go(j());
        fr9.d = nestedScrollAgentWebView.getSettings().getUserAgentString();
        this.c.getWebCreator().getWebView().setDrawingCacheEnabled(false);
        activity.registerForContextMenu(nestedScrollAgentWebView);
        this.k = new WeakReference(nestedScrollAgentWebView);
    }

    public void e(Activity activity, String str) {
        this.d = new FrameLayout(activity);
        CoordinatorLayout.LayoutParams layoutParams = new CoordinatorLayout.LayoutParams(-1, -1);
        layoutParams.setBehavior(new AppBarLayout.ScrollingViewBehavior());
        this.d.setLayoutParams(layoutParams);
        this.d.setTag(str);
        d(activity, this.d, 0);
    }

    public String f() {
        String url;
        WebView webViewH = h();
        return (webViewH == null || (url = webViewH.getUrl()) == null) ? "" : url;
    }

    public View g() {
        return this.d;
    }

    public final WebView h() {
        AgentWeb agentWeb = this.c;
        if (agentWeb == null || agentWeb.getWebCreator() == null) {
            return null;
        }
        return this.c.getWebCreator().getWebView();
    }

    public abstract IAgentWebSettings i();

    public String j() {
        Bundle bundle = this.b;
        String string = bundle != null ? bundle.getString("url_key") : null;
        if (TextUtils.isEmpty(string)) {
            string = "https://www.google.com";
        }
        return c(string);
    }

    public WebView k() {
        return h();
    }

    public void l() {
        WebView webViewH = h();
        if (webViewH != null) {
            webViewH.goBack();
        }
    }

    public void m() {
        WebView webViewH = h();
        if (webViewH != null) {
            webViewH.goForward();
        }
    }

    public final void n(String str) {
        WeakReference weakReference = this.j;
        DownloadViewModel downloadViewModel = weakReference != null ? (DownloadViewModel) weakReference.get() : null;
        if (downloadViewModel != null) {
            downloadViewModel.c(str);
        }
    }

    public void o(String str) {
        WebView webViewH = h();
        if (webViewH == null) {
            return;
        }
        webViewH.loadUrl(c(str));
    }

    public void p(final String str) {
        u(new Runnable() {
            @Override
            public final void run() {
                this.b.n(str);
            }
        });
    }

    public void q() {
        AgentWeb agentWeb = this.c;
        if (agentWeb != null) {
            agentWeb.onPause();
        }
    }

    public void r() {
        AgentWeb agentWeb = this.c;
        if (agentWeb != null) {
            agentWeb.onResume();
        }
    }

    public void t() {
        WebView webViewH = h();
        if (webViewH != null) {
            webViewH.reload();
        }
    }

    public boolean u(Runnable runnable) {
        if (runnable == null) {
            return false;
        }
        WeakReference weakReference = this.g;
        Activity activity = weakReference != null ? (Activity) weakReference.get() : null;
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return false;
        }
        activity.runOnUiThread(runnable);
        return true;
    }

    public void v(int[] iArr) {
        this.h = iArr;
    }

    public void w(int[] iArr) {
        this.i = iArr;
    }

    public void x(IWebLoadStatusCallback iWebLoadStatusCallback) {
        this.f = iWebLoadStatusCallback;
    }

    public void y() {
        WebView webViewH = h();
        z(webViewH);
        if (webViewH != null) {
            try {
                webViewH.stopLoading();
                webViewH.loadUrl("about:blank");
                webViewH.clearHistory();
                webViewH.setWebViewClient(null);
                webViewH.setWebChromeClient(null);
                webViewH.setDownloadListener(null);
                ViewParent parent = webViewH.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(webViewH);
                }
                webViewH.destroy();
            } catch (RuntimeException e) {
                LogUtils.m(n, "stopWebView destroy failed", e);
            }
        }
        FrameLayout frameLayout = this.d;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.c = null;
        this.f = null;
        WeakReference weakReference = this.j;
        if (weakReference != null) {
            weakReference.clear();
        }
        WeakReference weakReference2 = this.g;
        if (weakReference2 != null) {
            weakReference2.clear();
        }
    }

    public final void z(WebView webView) {
        WeakReference weakReference;
        WeakReference weakReference2 = this.g;
        Activity activity = weakReference2 != null ? (Activity) weakReference2.get() : null;
        if (webView == null && (weakReference = this.k) != null) {
            webView = (WebView) weakReference.get();
        }
        if (activity != null && webView != null) {
            try {
                activity.unregisterForContextMenu(webView);
            } catch (Throwable th) {
                LogUtils.P(n, "unregisterForContextMenu failed", th.getMessage());
            }
        }
        WeakReference weakReference3 = this.k;
        if (weakReference3 != null) {
            weakReference3.clear();
        }
    }

    public class a extends fr9 {
        public a() {
        }

        @Override
        public void onLoadResource(WebView webView, String str) {
            super.onLoadResource(webView, str);
            IWebLoadStatusCallback iWebLoadStatusCallback = z9.this.f;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.z(webView, str);
            }
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
            LogUtils.j(z9.n, "onPageFinished_url:" + str, "webview_geturl:" + webView.getUrl());
            super.onPageFinished(webView, str);
            IWebLoadStatusCallback iWebLoadStatusCallback = z9.this.f;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.onPageFinished(webView, str);
            }
            z9.this.A(webView, str);
        }

        @Override
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            LogUtils.j(z9.n, "onPageStarted_url:" + str);
            super.onPageStarted(webView, str, bitmap);
            IWebLoadStatusCallback iWebLoadStatusCallback = z9.this.f;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.g(webView, str, bitmap);
            }
            z9.this.B(webView, str, bitmap);
        }

        @Override
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            try {
                Log.e(z9.n, "URL: " + webResourceRequest.getUrl().toString() + " onReceivedError: " + ((Object) webResourceError.getDescription()) + " CODE: " + webResourceError.getErrorCode());
            } catch (Exception unused) {
            }
        }

        @Override
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            if (webResourceResponse != null) {
                Log.e(z9.n, "HTTP Error: " + webResourceResponse.getStatusCode());
            }
        }

        @Override
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            if (sslError != null) {
                Log.e(AbstractID3v1Tag.TAG, "HTTP Error: " + sslError.toString());
            }
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (z9.this.C(webView, webResourceRequest)) {
                return true;
            }
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            LogUtils.j(z9.n, "shouldOverrideUrlLoading url=", str);
            return super.shouldOverrideUrlLoading(webView, str);
        }
    }
}
