package com.cloud.hisavana.sdk;

import android.net.Uri;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import kotlin.jvm.internal.Intrinsics;

public final class t4 extends WebViewClient {

    private final q.a f22335a;

    private final String f22336b;

    private boolean f22337c;

    public t4(q.a admHandlerListener) {
        Intrinsics.h(admHandlerListener, "admHandlerListener");
        this.f22335a = admHandlerListener;
        this.f22336b = "AdmWebClient";
    }

    @Override
    public void onPageFinished(WebView webView, String str) {
        b4.b().d(this.f22336b, "onPageFinished");
        if ((webView != null ? webView.getProgress() : 0) == 100) {
            this.f22337c = true;
        }
    }

    @Override
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        String string;
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (this.f22337c || webResourceRequest == null || !webResourceRequest.isForMainFrame()) {
            return;
        }
        Uri url = webResourceRequest.getUrl();
        if (url == null || (string = url.toString()) == null) {
            string = "";
        }
        this.f22335a.a(string, webResourceError != null ? webResourceError.getErrorCode() : TaErrorCode.CODE_ADM_LOAD_FAILED);
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url;
        String string = (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null) ? null : url.toString();
        return string != null ? this.f22335a.a(string) : super.shouldOverrideUrlLoading(webView, webResourceRequest);
    }
}
