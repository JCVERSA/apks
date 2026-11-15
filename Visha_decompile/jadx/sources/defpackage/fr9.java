package defpackage;

import android.app.Activity;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.just.agentweb.WebViewClient;
import com.transsion.dbdata.beans.sniff.SniffVideoInfoBean;
import com.transsion.sniffer_load.sniffservice.SniffScriptConfigMgr;
import com.transsion.sniffer_load.sniffservice.SniffTedUtil;

public abstract class fr9 extends WebViewClient {
    public static String d = "";
    public Activity a;
    public boolean b = false;
    public a c;

    public interface a {
        void a(WebView webView, String str, SniffVideoInfoBean sniffVideoInfoBean);

        boolean b(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail);
    }

    public static void doUaInjection(WebView webView, String str) {
        if (TextUtils.isEmpty(d) && !TextUtils.isEmpty(webView.getSettings().getUserAgentString())) {
            d = webView.getSettings().getUserAgentString();
            Log.d("SniffWebClient", "doUaInjection: store original UA: " + d + ", webViewUrl: " + webView.getUrl() + ", url: " + str);
        }
        if (TextUtils.isEmpty(d)) {
            return;
        }
        if (TextUtils.isEmpty(webView.getSettings().getUserAgentString()) || !webView.getSettings().getUserAgentString().equals(d)) {
            Log.d("SniffWebClient", "doUaInjection: restore original UA: " + d + ", currentUA: " + webView.getSettings().getUserAgentString() + ", webViewUrl: " + webView.getUrl() + ", url: " + str);
            webView.getSettings().setUserAgentString(d);
            StringBuilder sb = new StringBuilder();
            sb.append("doUaInjection: restore done UA: ");
            sb.append(webView.getSettings().getUserAgentString());
            sb.append(", webViewUrl: ");
            sb.append(webView.getUrl());
            sb.append(", url: ");
            sb.append(str);
            Log.d("SniffWebClient", sb.toString());
        }
    }

    public WebResourceResponse b(final WebView webView, final String str) {
        if (SniffTedUtil.shouldInterceptNextData(str)) {
            return new WebResourceResponse("application/x-javascript", "UTF-8", null);
        }
        webView.post(new Runnable() {
            @Override
            public final void run() {
                this.b.c(webView, str);
            }
        });
        return null;
    }

    public final void c(WebView webView, String str) {
        a aVar;
        if (!r0a.g(SniffScriptConfigMgr.getInstance().geAssetJsFileName(webView.getUrl())) || (aVar = this.c) == null) {
            return;
        }
        aVar.a(webView, str, null);
    }

    public void d(Activity activity) {
        this.a = activity;
    }

    public void e(a aVar) {
        this.c = aVar;
    }

    @Override
    public void onPageFinished(WebView webView, String str) {
        Log.d("SniffWebClient", "onPageFinished: viewUrl: " + webView.getUrl() + ", url: " + str);
        this.a.setTitle(webView.getTitle());
        if (this.b) {
            webView.clearHistory();
            this.b = false;
        }
        super.onPageFinished(webView, str);
    }

    @Override
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
    }

    @Override
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        a aVar = this.c;
        if (aVar == null) {
            return true;
        }
        aVar.b(webView, renderProcessGoneDetail);
        return true;
    }

    @Override
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return b(webView, str);
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        doUaInjection(webView, webResourceRequest.getUrl().toString());
        return super.shouldOverrideUrlLoading(webView, webResourceRequest);
    }

    @Override
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        return b(webView, webResourceRequest.getUrl().toString());
    }
}
