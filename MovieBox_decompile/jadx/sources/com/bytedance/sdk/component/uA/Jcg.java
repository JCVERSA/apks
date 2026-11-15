package com.bytedance.sdk.component.uA;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Build;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebBackForwardList;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.List;

public class Jcg extends WebViewClient {
    private final WebViewClient Sj;
    private final List<String> TKC;
    private final Sj.InterfaceC0207Sj sP;

    public Jcg(Sj.InterfaceC0207Sj interfaceC0207Sj, WebViewClient webViewClient, List<String> list) {
        this.sP = interfaceC0207Sj;
        this.Sj = webViewClient;
        this.TKC = list;
    }

    private int Sj(WebView webView) {
        try {
            WebBackForwardList webBackForwardListCopyBackForwardList = webView.copyBackForwardList();
            if (webBackForwardListCopyBackForwardList != null) {
                return webBackForwardListCopyBackForwardList.getCurrentIndex() + 1;
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    @Override
    public void onPageFinished(WebView webView, String str) {
        this.Sj.onPageFinished(webView, str);
    }

    @Override
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        Sj.InterfaceC0207Sj interfaceC0207Sj = this.sP;
        if (interfaceC0207Sj != null) {
            interfaceC0207Sj.Sj(Sj(webView));
        }
        this.Sj.onPageStarted(webView, str, bitmap);
    }

    @Override
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        this.Sj.onReceivedError(webView, webResourceRequest, webResourceError);
    }

    @Override
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        this.Sj.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
    }

    @Override
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        this.Sj.onReceivedSslError(webView, sslErrorHandler, sslError);
    }

    @Override
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return Build.VERSION.SDK_INT >= 26 ? this.Sj.onRenderProcessGone(webView, renderProcessGoneDetail) : super.onRenderProcessGone(webView, renderProcessGoneDetail);
    }

    @Override
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return this.Sj.shouldInterceptRequest(webView, str);
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Sj.InterfaceC0207Sj interfaceC0207Sj = this.sP;
        if (interfaceC0207Sj != null) {
            interfaceC0207Sj.Sj();
        }
        return this.Sj.shouldOverrideUrlLoading(webView, str);
    }

    @Override
    public void onReceivedError(WebView webView, int i10, String str, String str2) {
        this.Sj.onReceivedError(webView, i10, str, str2);
    }

    @Override
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        Sj.InterfaceC0207Sj interfaceC0207Sj;
        if (sP.Sj(this.TKC, webResourceRequest.getUrl().toString()) && (interfaceC0207Sj = this.sP) != null) {
            interfaceC0207Sj.Sj();
        }
        return this.Sj.shouldInterceptRequest(webView, webResourceRequest);
    }
}
