package defpackage;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import androidx.webkit.ProxyConfig;
import com.blankj.utilcode.util.LogUtils;
import com.just.agentweb.AgentWeb;
import com.just.agentweb.AgentWebConfig;
import com.just.agentweb.DefaultWebClient;
import com.just.agentweb.IAgentWebSettings;
import com.just.agentweb.PermissionInterceptor;
import com.just.agentweb.WebChromeClient;
import com.just.agentweb.WebViewClient;
import com.just.agentweb.jsbridge.BridgeWebView;
import com.just.agentweb.jsbridge.BridgeWebViewClient;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import com.transsion.playercommon.R;
import com.transsion.playercommon.vishaweb.IWebLoadStatusCallback;
import com.transsion.playercommon.vishaweb.jsbridge.IJsToNative;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public class rfc {
    public static final String k = "visha_" + rfc.class.getSimpleName();
    public Bundle a;
    public AgentWeb b;
    public IWebLoadStatusCallback c;
    public Activity d;
    public IJsToNative e;
    public WebView f;
    public BridgeWebViewClient g;
    public WebViewClient h = new a();
    public WebChromeClient i = new c();
    public PermissionInterceptor j = new d();

    public class b extends lfc {
        public b() {
        }

        @Override
        public void bindAgentWebSupport(AgentWeb agentWeb) {
            this.mAgentWeb = agentWeb;
        }
    }

    public class c extends WebChromeClient {
        public c() {
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
            IWebLoadStatusCallback iWebLoadStatusCallback = rfc.this.c;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.A(webView, i);
            }
        }

        @Override
        public void onReceivedIcon(WebView webView, Bitmap bitmap) {
            super.onReceivedIcon(webView, bitmap);
            IWebLoadStatusCallback iWebLoadStatusCallback = rfc.this.c;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.C(webView, bitmap);
            }
        }

        @Override
        public void onReceivedTitle(WebView webView, String str) {
            super.onReceivedTitle(webView, str);
            IWebLoadStatusCallback iWebLoadStatusCallback = rfc.this.c;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.o(webView, str);
            }
        }

        @Override
        public void onReceivedTouchIconUrl(WebView webView, String str, boolean z) {
            super.onReceivedTouchIconUrl(webView, str, z);
            IWebLoadStatusCallback iWebLoadStatusCallback = rfc.this.c;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.l(webView, str);
            }
        }
    }

    public class d implements PermissionInterceptor {
        public d() {
        }

        @Override
        public boolean intercept(String str, String[] strArr, String str2) {
            return false;
        }
    }

    public static rfc e(String str) {
        rfc rfcVar = new rfc();
        Bundle bundle = new Bundle();
        rfcVar.a = bundle;
        bundle.putString("url_key", str);
        return rfcVar;
    }

    public final void a(WebView webView) {
        Activity activity;
        if (webView == null || (activity = this.d) == null) {
            return;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) activity.getSystemService("accessibility");
        if (accessibilityManager != null && accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return;
        }
        webView.setImportantForAccessibility(4);
    }

    public boolean b() {
        return this.b.getWebCreator().getWebView().canGoBack();
    }

    public void c(Activity activity, ViewGroup viewGroup, int i, ViewGroup.LayoutParams layoutParams) {
        this.d = activity;
        if (ge.e()) {
            AgentWebConfig.debug();
        }
        BridgeWebView bridgeWebView = new BridgeWebView(this.d);
        this.f = bridgeWebView;
        bridgeWebView.setBackgroundColor(this.d.getResources().getColor(R.color.transparent, this.d.getTheme()));
        if (oa1.d()) {
            a(this.f);
        }
        this.g = new BridgeWebViewClient((BridgeWebViewClient.OnLoadJSListener) this.f);
        this.b = AgentWeb.with(this.d).setAgentWebParent(viewGroup, i, layoutParams).useDefaultIndicator(this.d.getResources().getColor(R.color.sniffer_web_progress_color, null), this.d.getResources().getColor(R.color.sniffer_web_progress_bg_color, null), 2).setWebLayout(null).setWebView(this.f).setAgentWebWebSettings(h()).setWebViewClient(this.h).setWebChromeClient(this.i).addJavascriptInterface("WebViewJavascriptBridge", new eec(f())).setPermissionInterceptor(this.j).setSecurityType(AgentWeb.SecurityType.STRICT_CHECK).setAgentWebUIController(new jeb(this.d)).setOpenOtherPageWays(DefaultWebClient.OpenOtherPageWays.DERECT).createAgentWeb().ready().go(i());
    }

    public final void d(WebView webView) {
        if (webView == null) {
            return;
        }
        try {
            webView.destroy();
        } catch (Exception e) {
            LogUtils.m(k, "destroy WebView failed", e);
        }
    }

    public IJsToNative f() {
        return this.e;
    }

    public String g(String str) {
        try {
            String strDecode = URLDecoder.decode(str, "UTF-8");
            Uri uri = Uri.parse(strDecode);
            if (uri.isHierarchical() && strDecode.startsWith(ProxyConfig.MATCH_HTTP)) {
                if (uri.getBooleanQueryParameter("vishaappinner", true)) {
                    return null;
                }
                strDecode = strDecode.contains("&vishaappinner") ? strDecode.replaceAll("(&vishaappinner=[^&]*)", "") : strDecode.replaceAll("(vishaappinner=[^&]*)", "");
                LogUtils.j(k, "get out url: " + strDecode);
            }
            return strDecode;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public IAgentWebSettings h() {
        return new b();
    }

    public String i() {
        Bundle bundle = this.a;
        String string = bundle != null ? bundle.getString("url_key") : null;
        return TextUtils.isEmpty(string) ? "https://www.google.com" : string;
    }

    public WebView j() {
        return this.b.getWebCreator().getWebView();
    }

    public void k() {
        this.b.getWebCreator().getWebView().goBack();
    }

    public void l() {
        WebView webView = this.f;
        o(webView);
        AgentWeb agentWeb = this.b;
        if (agentWeb != null) {
            try {
                agentWeb.destroy();
            } catch (Exception e) {
                LogUtils.m(k, "AgentWeb destroy failed", e);
                d(webView);
            }
            this.b = null;
        } else {
            d(webView);
        }
        this.f = null;
        this.d = null;
        this.c = null;
    }

    public void m() {
        AgentWeb agentWeb = this.b;
        if (agentWeb != null) {
            agentWeb.onPause();
        }
    }

    public void n() {
        AgentWeb agentWeb = this.b;
        if (agentWeb != null) {
            agentWeb.onResume();
        }
    }

    public final void o(WebView webView) {
        if (webView == null) {
            return;
        }
        try {
            ViewParent parent = webView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(webView);
            }
            webView.stopLoading();
            webView.loadUrl("about:blank");
            webView.clearHistory();
            webView.removeAllViews();
        } catch (Exception e) {
            LogUtils.m(k, "prepare WebView destroy failed", e);
        }
    }

    public void p(IJsToNative iJsToNative) {
        this.e = iJsToNative;
    }

    public void q(IWebLoadStatusCallback iWebLoadStatusCallback) {
        this.c = iWebLoadStatusCallback;
    }

    public class a extends WebViewClient {
        public a() {
        }

        public void a(String str) {
            PackageManager packageManager = rfc.this.d.getPackageManager();
            try {
                Intent uri = Intent.parseUri(str, 1);
                uri.addFlags(268435456);
                if (packageManager.queryIntentActivities(uri, 65536).isEmpty()) {
                    b(str, packageManager);
                } else {
                    rfc.this.d.startActivity(uri);
                }
            } catch (Exception e) {
                Log.w(rfc.k, "handleVkIntent error", e);
                b(str, packageManager);
            }
            rfc.this.d.finish();
        }

        public void b(String str, PackageManager packageManager) {
            String strDecode;
            if (packageManager == null) {
                packageManager = rfc.this.d.getPackageManager();
            }
            String fragment = Uri.parse(str).getFragment();
            if (fragment == null) {
                strDecode = null;
                break;
            }
            String[] strArrSplit = fragment.split(ProcessInfo.SPLIT_NEW_VERSION);
            int length = strArrSplit.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    strDecode = null;
                    break;
                }
                String str2 = strArrSplit[i];
                if (str2.startsWith("S.browser_fallback_url=")) {
                    strDecode = Uri.decode(str2.substring(23));
                    break;
                }
                i++;
            }
            Log.i(rfc.k, "defaultIntentHandle fallbackUrl:" + strDecode);
            if (strDecode == null) {
                rfc.this.d.finish();
                return;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(strDecode));
            if (packageManager.queryIntentActivities(intent, 65536).isEmpty()) {
                rfc.this.d.finish();
            } else {
                rfc.this.d.startActivity(intent);
            }
        }

        @Override
        public void onLoadResource(WebView webView, String str) {
            super.onLoadResource(webView, str);
            IWebLoadStatusCallback iWebLoadStatusCallback = rfc.this.c;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.z(webView, str);
            }
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
            String str2 = rfc.k;
            LogUtils.j(str2, "onPageFinished_url:" + str, "webview_geturl:" + webView.getUrl());
            super.onPageFinished(webView, str);
            if (str != null && str.contains("intent://vk.com/video")) {
                Log.i(str2, "onPageFinished_url:" + str);
                a(str);
            }
            IWebLoadStatusCallback iWebLoadStatusCallback = rfc.this.c;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.onPageFinished(webView, str);
            }
            rfc.this.g.onPageFinished(webView, str);
        }

        @Override
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            LogUtils.j(rfc.k, "onPageStarted_url:" + str);
            super.onPageStarted(webView, str, bitmap);
            IWebLoadStatusCallback iWebLoadStatusCallback = rfc.this.c;
            if (iWebLoadStatusCallback != null) {
                iWebLoadStatusCallback.g(webView, str, bitmap);
            }
        }

        @Override
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            IWebLoadStatusCallback iWebLoadStatusCallback = rfc.this.c;
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
            LogUtils.j(rfc.k, "shouldOverrideUrlLoading url=", webResourceRequest.getUrl());
            String string = webResourceRequest.getUrl().toString();
            if (!TextUtils.isEmpty(string) && (string.contains("chat.whatsapp.com") || string.contains("play.google.com/apps/testing/com.transsion.magicshow") || string.contains("visha-cdn.shalltry.com/apk/"))) {
                f5.c(new Intent("android.intent.action.VIEW", Uri.parse(string)), webView.getContext());
                return true;
            }
            if (rfc.this.g.shouldOverrideUrlLoading(webView, webResourceRequest.getUrl().toString())) {
                return true;
            }
            String strG = rfc.this.g(webResourceRequest.getUrl().toString());
            if (r0a.g(strG)) {
                return false;
            }
            return super.shouldOverrideUrlLoading(webView, strG);
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            LogUtils.j(rfc.k, "shouldOverrideUrlLoading url=", str);
            String strG = rfc.this.g(str);
            if (r0a.g(strG)) {
                return false;
            }
            return super.shouldOverrideUrlLoading(webView, strG);
        }
    }
}
