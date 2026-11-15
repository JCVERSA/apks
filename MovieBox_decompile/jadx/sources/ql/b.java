package ql;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.blankj.utilcode.util.o;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.github.lzyzsd.jsbridge.BridgeWebView;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import qi.h;
import yg.l;

public final class b {

    public static final b f69895a = new b();

    private b() {
    }

    private final void c(BridgeWebView bridgeWebView) {
        WebSettings settings = bridgeWebView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(false);
        l lVar = l.f76264a;
        Context context = bridgeWebView.getContext();
        Intrinsics.g(context, "getContext(...)");
        settings.setCacheMode(lVar.j(context) ? -1 : 1);
        settings.setMixedContentMode(0);
        settings.setTextZoom(100);
        settings.setDatabaseEnabled(true);
        settings.setLoadsImagesAutomatically(true);
        settings.setSupportMultipleWindows(false);
        settings.setBlockNetworkImage(false);
        settings.setAllowFileAccess(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        settings.setLoadWithOverviewMode(false);
        settings.setUseWideViewPort(false);
        settings.setDomStorageEnabled(true);
        settings.setNeedInitialFocus(true);
        settings.setDefaultTextEncodingName("utf-8");
        settings.setDefaultFontSize(16);
        settings.setMinimumFontSize(12);
        settings.setGeolocationEnabled(true);
    }

    private final void d(BridgeWebView bridgeWebView) {
        bridgeWebView.setGson(o.f());
        bridgeWebView.setLayerType(2, null);
        bridgeWebView.setOverScrollMode(2);
        bridgeWebView.setWebViewClient(new a(bridgeWebView));
    }

    public final void e(BridgeWebView bridgeWebView, String str) {
        Object tag = bridgeWebView.getTag(-1001);
        if (Intrinsics.c(tag instanceof Boolean ? (Boolean) tag : null, Boolean.TRUE)) {
            bridgeWebView.setTag(-1001, Boolean.FALSE);
            if (str == null) {
                str = "";
            }
            g(str, "finish");
        }
    }

    public final BridgeWebView b(Context context) {
        Intrinsics.h(context, "context");
        BridgeWebView bridgeWebView = new BridgeWebView(context);
        d(bridgeWebView);
        c(bridgeWebView);
        return bridgeWebView;
    }

    public final void f(String msg) {
        Intrinsics.h(msg, "msg");
    }

    public final void g(String url, String action) {
        Intrinsics.h(url, "url");
        Intrinsics.h(action, "action");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("url", url);
        linkedHashMap.put(EventConstants.KEY_ACTION, action);
        h.f69682a.v("preload", linkedHashMap, "web");
        f("上报 --> action = " + action + " --> url = " + url);
    }

    public static final class a extends WebViewClient {

        final BridgeWebView f69896a;

        a(BridgeWebView bridgeWebView) {
            this.f69896a = bridgeWebView;
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            b.f69895a.e(this.f69896a, str);
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            String string;
            Uri url;
            if (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null || (string = url.toString()) == null) {
                string = "";
            }
            if (StringsKt.W(string, "http", false, 2, null) || StringsKt.W(string, "https", false, 2, null) || StringsKt.W(string, OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, false, 2, null)) {
                return false;
            }
            try {
                b.f69895a.e(this.f69896a, webView != null ? webView.getUrl() : null);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return true;
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            Intrinsics.h(view, "view");
            Intrinsics.h(url, "url");
            if (StringsKt.W(url, "http", false, 2, null) || StringsKt.W(url, "https", false, 2, null) || StringsKt.W(url, OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, false, 2, null)) {
                return false;
            }
            try {
                b.f69895a.e(this.f69896a, url);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return true;
        }
    }
}
