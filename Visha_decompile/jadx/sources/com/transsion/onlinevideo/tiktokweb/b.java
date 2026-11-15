package com.transsion.onlinevideo.tiktokweb;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import com.just.agentweb.AgentWeb;
import com.just.agentweb.AgentWebConfig;
import com.just.agentweb.DefaultWebClient;
import com.just.agentweb.WebChromeClient;
import com.just.agentweb.WebViewClient;
import com.just.agentweb.jsbridge.BridgeWebView;
import com.lzy.okgo.model.Progress;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.tiktokweb.b;
import com.transsion.playercommon.vishaweb.IWebLoadStatusCallback;
import com.transsion.sniffer_load.sniffservice.SniffTiktokUtil;
import defpackage.aka;
import defpackage.f5;
import defpackage.g1a;
import defpackage.ge;
import defpackage.j1a;
import defpackage.jeb;
import defpackage.r0a;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.DefaultConstructorMarker;

public class b extends com.transsion.onlinevideo.tiktokweb.a {
    public static final a o = new a(null);
    public aka h;
    public ViewGroup i;
    public WebView k;
    public boolean l;
    public String j = "";
    public WebChromeClient m = new C0236b();
    public final WebViewClient n = new c();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a(String str) {
            b bVar = new b();
            Bundle bundle = new Bundle();
            com.transsion.onlinevideo.tiktokweb.a.g = bundle;
            bundle.putString("url_key", str);
            return bVar;
        }

        public a() {
        }
    }

    public static final void B(b bVar, String str) {
        bVar.e().evaluateJavascript(str, null);
    }

    public static final void w(b bVar, String str) {
        bVar.e().evaluateJavascript(str, null);
    }

    public final void A(boolean z) {
        String str = z ? "visible" : "hidden";
        try {
            aka akaVar = this.h;
            if (akaVar == null) {
                y45.B("mTiktokJsInterface");
                akaVar = null;
            }
            akaVar.c(str);
            final String str2 = "javascript:window.visibilityStateChange('" + str + "')";
            e().post(new Runnable() {
                @Override
                public final void run() {
                    b.B(this.b, str2);
                }
            });
            Log.i("TiktokWebviewContainer", "doJs visibilityStateChange: " + str);
        } catch (Exception e) {
            Log.e("TiktokWebviewContainer", "webviewDoJs: error " + e);
        }
    }

    @Override
    public boolean a() {
        if (e() != null && super.a()) {
            return true;
        }
        aka akaVar = this.h;
        if (akaVar == null) {
            y45.B("mTiktokJsInterface");
            akaVar = null;
        }
        return akaVar.b() || x();
    }

    @Override
    public void f() {
        aka akaVar = this.h;
        aka akaVar2 = null;
        if (akaVar == null) {
            y45.B("mTiktokJsInterface");
            akaVar = null;
        }
        Boolean boolValueOf = Boolean.valueOf(akaVar.b());
        aka akaVar3 = this.h;
        if (akaVar3 == null) {
            y45.B("mTiktokJsInterface");
            akaVar3 = null;
        }
        Log.d("TiktokWebviewContainer", "goBack: mTiKtokBack " + boolValueOf + " mCallbackFunctionName:" + akaVar3.a() + " isNewWebViewGoback():" + x());
        if (x()) {
            ViewGroup viewGroup = this.i;
            if (viewGroup == null) {
                y45.B("mParentContainer");
                viewGroup = null;
            }
            viewGroup.removeView(this.k);
            this.k = null;
            return;
        }
        aka akaVar4 = this.h;
        if (akaVar4 == null) {
            y45.B("mTiktokJsInterface");
            akaVar4 = null;
        }
        if (!akaVar4.b()) {
            super.f();
            return;
        }
        aka akaVar5 = this.h;
        if (akaVar5 == null) {
            y45.B("mTiktokJsInterface");
        } else {
            akaVar2 = akaVar5;
        }
        final String str = "javascript:window." + akaVar2.a() + "()";
        try {
            e().post(new Runnable() {
                @Override
                public final void run() {
                    b.w(this.b, str);
                }
            });
        } catch (Exception e) {
            Log.e("TiktokWebviewContainer", "goBack: error " + e);
            super.f();
            zfb zfbVar = zfb.a;
        }
    }

    @Override
    public void h() {
        super.h();
    }

    public void v(Activity activity, ViewGroup viewGroup, int i, ViewGroup.LayoutParams layoutParams) {
        this.c = activity;
        y45.g(viewGroup);
        this.i = viewGroup;
        if (ge.e()) {
            AgentWebConfig.debug();
        }
        BridgeWebView bridgeWebView = new BridgeWebView(this.c);
        this.d = bridgeWebView;
        bridgeWebView.setBackgroundColor(this.c.getResources().getColor(R.color.transparent, this.c.getTheme()));
        Activity activity2 = this.c;
        y45.i(activity2, "mActivity");
        this.h = new aka(activity2);
        this.j = d();
        AgentWeb.AgentBuilder agentBuilderWith = AgentWeb.with(this.c);
        y45.g(layoutParams);
        AgentWeb.IndicatorBuilder agentWebParent = agentBuilderWith.setAgentWebParent(viewGroup, i, layoutParams);
        aka akaVar = null;
        AgentWeb.CommonBuilder webChromeClient = agentWebParent.useDefaultIndicator(this.c.getResources().getColor(R.color.sniffer_web_progress_color, null), this.c.getResources().getColor(R.color.sniffer_web_progress_bg_color, null), 2).setWebLayout(null).setWebView(this.d).setAgentWebWebSettings(c()).setWebViewClient(this.n).setWebChromeClient(this.m);
        aka akaVar2 = this.h;
        if (akaVar2 == null) {
            y45.B("mTiktokJsInterface");
        } else {
            akaVar = akaVar2;
        }
        webChromeClient.addJavascriptInterface("feedcoop", akaVar).setPermissionInterceptor(this.e).setSecurityType(AgentWeb.SecurityType.STRICT_CHECK).setAgentWebUIController(new jeb(this.c)).setOpenOtherPageWays(DefaultWebClient.OpenOtherPageWays.DERECT).createAgentWeb().ready().go(d());
        CookieManager cookieManager = CookieManager.getInstance();
        if (cookieManager != null) {
            cookieManager.setAcceptThirdPartyCookies(this.d, true);
        }
    }

    public final boolean x() {
        if (this.k != null) {
            ViewGroup viewGroup = this.i;
            if (viewGroup == null) {
                y45.B("mParentContainer");
                viewGroup = null;
            }
            WebView webView = this.k;
            y45.g(webView);
            if (viewGroup.indexOfChild(webView) != -1) {
                return true;
            }
        }
        return false;
    }

    public final boolean y(String str, String str2) {
        if (str == null || j1a.o0(str) || str2 == null || j1a.o0(str2)) {
            return false;
        }
        if (j1a.V(str, "onelink.me", true) && j1a.V(str, "pid=tiktokweb", true)) {
            return true;
        }
        if (j1a.X(str, "?", false, 2, null)) {
            str = str.substring(0, j1a.m0(str, "?", 0, false, 6, null));
            y45.i(str, "substring(...)");
        }
        Log.d("TiktokWebviewContainer", "goToNext url=" + str + " contentEquals " + g1a.A(str, "https://www.tiktok.com/foryou", true));
        return g1a.A(str, SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_KEY_REFERER_VALUE, true) || g1a.A(str, "https://www.tiktok.com/foryou", true) || g1a.A(str, "https://www.tiktok.com/discover", true);
    }

    public final void z(boolean z) {
        WebView webView = this.d;
        if (webView == null || webView.getSettings() == null) {
            Log.e("TiktokWebviewContainer", "updateSettingSupportMultipleWindows mWebView or settings is null");
            return;
        }
        if (this.d.getSettings().supportMultipleWindows() == z) {
            return;
        }
        Log.d("TiktokWebviewContainer", "updateSettingSupportMultipleWindows isMultipleCreate:" + z);
        this.d.getSettings().setSupportMultipleWindows(z);
    }

    public static final class C0236b extends WebChromeClient {

        public static final class C0237b extends WebChromeClient {
            public final WebView a;
            public final b b;

            public C0237b(WebView webView, b bVar) {
                this.a = webView;
                this.b = bVar;
            }

            public static final void b() {
                CookieManager cookieManager = CookieManager.getInstance();
                if (cookieManager != null) {
                    cookieManager.flush();
                }
            }

            @Override
            public void onCloseWindow(WebView webView) {
                Looper mainLooper;
                Log.i("TiktokWebviewContainer", "onCreateWindow: onCloseWindow url: " + this.a.getUrl());
                ViewGroup viewGroup = this.b.i;
                if (viewGroup == null) {
                    y45.B("mParentContainer");
                    viewGroup = null;
                }
                viewGroup.removeView(webView);
                this.b.k = null;
                if (this.b.l) {
                    return;
                }
                this.b.l = true;
                try {
                    Activity activity = this.b.c;
                    if (activity == null || (mainLooper = activity.getMainLooper()) == null) {
                        return;
                    }
                    new Handler(mainLooper).post(new Runnable() {
                        @Override
                        public final void run() {
                            b.C0236b.C0237b.b();
                        }
                    });
                } catch (Exception e) {
                    Log.e("TiktokWebviewContainer", "onCloseWindow onError : " + e);
                }
            }
        }

        public C0236b() {
        }

        @Override
        public Bitmap getDefaultVideoPoster() {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
            y45.i(bitmapCreateBitmap, "createBitmap(...)");
            return bitmapCreateBitmap;
        }

        @Override
        public View getVideoLoadingProgressView() {
            return null;
        }

        @Override
        public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
            WebView webView2 = new WebView(b.this.c);
            webView2.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            CookieManager cookieManager = CookieManager.getInstance();
            if (cookieManager != null) {
                cookieManager.setAcceptThirdPartyCookies(webView2, true);
            }
            webView2.getSettings().setJavaScriptEnabled(true);
            webView2.getSettings().setSupportZoom(true);
            webView2.getSettings().setBuiltInZoomControls(false);
            webView2.getSettings().setSavePassword(false);
            webView2.getSettings().setTextZoom(100);
            webView2.getSettings().setDatabaseEnabled(true);
            webView2.getSettings().setLoadsImagesAutomatically(true);
            webView2.getSettings().setSupportMultipleWindows(false);
            webView2.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
            webView2.getSettings().setLoadWithOverviewMode(true);
            webView2.getSettings().setUseWideViewPort(true);
            webView2.getSettings().setDomStorageEnabled(true);
            webView2.getSettings().setNeedInitialFocus(true);
            webView2.getSettings().setDefaultTextEncodingName("utf-8");
            webView2.getSettings().setDefaultFontSize(16);
            webView2.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
            String userAgentString = webView2.getSettings().getUserAgentString();
            y45.i(userAgentString, "getUserAgentString(...)");
            webView2.getSettings().setUserAgentString(g1a.N(userAgentString, "wv", "", false, 4, null));
            ViewGroup viewGroup = b.this.i;
            if (viewGroup == null) {
                y45.B("mParentContainer");
                viewGroup = null;
            }
            viewGroup.addView(webView2);
            webView2.setVisibility(0);
            webView2.setWebViewClient(new a(b.this));
            webView2.setWebChromeClient(new C0237b(webView2, b.this));
            b.this.k = webView2;
            Object obj = message != null ? message.obj : null;
            y45.h(obj, "null cannot be cast to non-null type android.webkit.WebView.WebViewTransport");
            ((WebView.WebViewTransport) obj).setWebView(webView2);
            message.sendToTarget();
            Log.i("TiktokWebviewContainer", "onCreateWindow: finish " + z2 + " isDialog " + z + " resultMsg: " + message);
            return true;
        }

        @Override
        public void onProgressChanged(WebView webView, int i) {
            super.onProgressChanged(webView, i);
            IWebLoadStatusCallback iWebLoadStatusCallback = b.this.b;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.A(webView, i);
            }
        }

        @Override
        public void onReceivedIcon(WebView webView, Bitmap bitmap) {
            super.onReceivedIcon(webView, bitmap);
            IWebLoadStatusCallback iWebLoadStatusCallback = b.this.b;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.C(webView, bitmap);
            }
        }

        @Override
        public void onReceivedTitle(WebView webView, String str) {
            super.onReceivedTitle(webView, str);
            IWebLoadStatusCallback iWebLoadStatusCallback = b.this.b;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.o(webView, str);
            }
        }

        @Override
        public void onReceivedTouchIconUrl(WebView webView, String str, boolean z) {
            super.onReceivedTouchIconUrl(webView, str, z);
            IWebLoadStatusCallback iWebLoadStatusCallback = b.this.b;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.l(webView, str);
            }
        }

        public static final class a extends WebViewClient {
            public final b a;

            public a(b bVar) {
                this.a = bVar;
            }

            @Override
            public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
                Log.d("TiktokWebviewContainer", "onCreateWindow shouldOverrideUrlLoading requestUrl=" + (webResourceRequest != null ? webResourceRequest.getUrl() : null));
                b bVar = this.a;
                String strB = bVar.b(bVar.d());
                return !r0a.g(strB) ? super.shouldOverrideUrlLoading(webView, strB) : super.shouldOverrideUrlLoading(webView, webResourceRequest);
            }

            @Override
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                y45.j(webView, "webView");
                y45.j(str, "url");
                Log.i("TiktokWebviewContainer", "onCreateWindow: shouldOverrideUrlLoading newclienturl: " + str);
                return super.shouldOverrideUrlLoading(webView, str);
            }
        }
    }

    public static final class c extends WebViewClient {
        public c() {
        }

        @Override
        public void onLoadResource(WebView webView, String str) {
            super.onLoadResource(webView, str);
            IWebLoadStatusCallback iWebLoadStatusCallback = b.this.b;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.z(webView, str);
            }
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
            y45.j(webView, "view");
            Log.d("TiktokWebviewContainer", "onPageFinished_url:" + str);
            super.onPageFinished(webView, str);
            IWebLoadStatusCallback iWebLoadStatusCallback = b.this.b;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.onPageFinished(webView, str);
            }
        }

        @Override
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            Log.d("TiktokWebviewContainer", "onPageStarted_url:" + str);
            super.onPageStarted(webView, str, bitmap);
            IWebLoadStatusCallback iWebLoadStatusCallback = b.this.b;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.g(webView, str, bitmap);
            }
            if (str == null || !g1a.R(str, "https://www.tiktok.com/login", false, 2, null)) {
                b.this.z(false);
            } else {
                b.this.z(true);
            }
        }

        @Override
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            IWebLoadStatusCallback iWebLoadStatusCallback = b.this.b;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.B(webView, webResourceRequest, webResourceError);
            }
        }

        @Override
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            return true;
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            y45.j(webView, "view");
            y45.j(webResourceRequest, Progress.REQUEST);
            Log.d("TiktokWebviewContainer", "shouldOverrideUrlLoading requestUrl=" + webResourceRequest.getUrl());
            String string = webResourceRequest.getUrl().toString();
            y45.i(string, "toString(...)");
            if (!TextUtils.isEmpty(string) && (j1a.X(string, "chat.whatsapp.com", false, 2, null) || j1a.X(string, "play.google.com/apps/testing/com.transsion.magicshow", false, 2, null) || j1a.X(string, "visha-cdn.shalltry.com/apk/", false, 2, null))) {
                f5.c(new Intent("android.intent.action.VIEW", Uri.parse(string)), webView.getContext());
                return true;
            }
            b bVar = b.this;
            if (bVar.y(string, bVar.j)) {
                webView.loadUrl(b.this.j.toString());
                return true;
            }
            String strB = b.this.b(string);
            return !r0a.g(strB) ? super.shouldOverrideUrlLoading(webView, strB) : super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            y45.j(str, "url");
            Log.d("TiktokWebviewContainer", "shouldOverrideUrlLoading url= " + str + "  originUrl= " + b.this.j);
            if (!g1a.R(b.this.j, "https://www.tiktok.com/feedcoop/", false, 2, null) && g1a.R(str, "https://www.tiktok.com/feedcoop/", false, 2, null)) {
                b.this.j = str;
                if (webView != null) {
                    webView.loadUrl(str);
                }
                return true;
            }
            if (TextUtils.equals(b.this.j, str) && webView != null) {
                webView.clearHistory();
            }
            b bVar = b.this;
            if (bVar.y(str, bVar.j)) {
                if (webView != null) {
                    webView.loadUrl(b.this.j.toString());
                }
                return true;
            }
            String strB = b.this.b(str);
            Log.d("TiktokWebviewContainer", "shouldOverrideUrlLoading outUrl= " + strB);
            if (r0a.g(strB)) {
                return false;
            }
            return super.shouldOverrideUrlLoading(webView, strB);
        }
    }
}
