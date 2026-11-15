package com.cloud.hisavana.sdk;

import android.net.Uri;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import defpackage.ikd;
import defpackage.y45;

public final class d0 extends WebViewClient {
    public final C0521r.a a;
    public final String b;
    public boolean c;

    public d0(C0521r.a aVar) {
        y45.j(aVar, "admHandlerListener");
        this.a = aVar;
        this.b = "AdmWebClient";
    }

    @Override
    public void onPageFinished(WebView webView, String str) {
        ikd.b().d(this.b, "onPageFinished");
        if ((webView != null ? webView.getProgress() : 0) == 100) {
            this.c = true;
        }
    }

    @Override
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        String string;
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (this.c || webResourceRequest == null || !webResourceRequest.isForMainFrame()) {
            return;
        }
        Uri url = webResourceRequest.getUrl();
        if (url == null || (string = url.toString()) == null) {
            string = "";
        }
        this.a.a(string, webResourceError != null ? webResourceError.getErrorCode() : TaErrorCode.CODE_ADM_LOAD_FAILED);
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url;
        String string = (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null) ? null : url.toString();
        return string != null ? this.a.a(string) : super.shouldOverrideUrlLoading(webView, webResourceRequest);
    }
}
