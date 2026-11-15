package defpackage;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Message;
import android.view.KeyEvent;
import android.webkit.ClientCertRequest;
import android.webkit.HttpAuthHandler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SafeBrowsingResponse;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

public abstract class p4f extends WebViewClient {
    public abstract WebViewClient a();

    @Override
    public void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return;
        }
        webViewClientA.doUpdateVisitedHistory(webView, str, z);
    }

    @Override
    public void onFormResubmission(WebView webView, Message message, Message message2) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return;
        }
        webViewClientA.onFormResubmission(webView, message, message2);
    }

    @Override
    public void onLoadResource(WebView webView, String str) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return;
        }
        webViewClientA.onLoadResource(webView, str);
    }

    @Override
    @RequiresApi(api = 23)
    public void onPageCommitVisible(WebView webView, String str) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return;
        }
        webViewClientA.onPageCommitVisible(webView, str);
    }

    @Override
    public void onPageFinished(WebView webView, String str) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return;
        }
        webViewClientA.onPageFinished(webView, str);
    }

    @Override
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return;
        }
        webViewClientA.onPageStarted(webView, str, bitmap);
    }

    @Override
    public void onReceivedClientCertRequest(WebView webView, ClientCertRequest clientCertRequest) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return;
        }
        webViewClientA.onReceivedClientCertRequest(webView, clientCertRequest);
    }

    @Override
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return;
        }
        webViewClientA.onReceivedError(webView, i, str, str2);
    }

    @Override
    public void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return;
        }
        webViewClientA.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
    }

    @Override
    @RequiresApi(api = 23)
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return;
        }
        webViewClientA.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
    }

    @Override
    public void onReceivedLoginRequest(WebView webView, String str, @Nullable String str2, String str3) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return;
        }
        webViewClientA.onReceivedLoginRequest(webView, str, str2, str3);
    }

    @Override
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return;
        }
        webViewClientA.onReceivedSslError(webView, sslErrorHandler, sslError);
    }

    @Override
    @RequiresApi(api = 26)
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return false;
        }
        return webViewClientA.onRenderProcessGone(webView, renderProcessGoneDetail);
    }

    @Override
    @RequiresApi(api = 27)
    public void onSafeBrowsingHit(WebView webView, WebResourceRequest webResourceRequest, int i, SafeBrowsingResponse safeBrowsingResponse) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return;
        }
        webViewClientA.onSafeBrowsingHit(webView, webResourceRequest, i, safeBrowsingResponse);
    }

    @Override
    public void onScaleChanged(WebView webView, float f, float f2) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return;
        }
        webViewClientA.onScaleChanged(webView, f, f2);
    }

    @Override
    public void onTooManyRedirects(WebView webView, Message message, Message message2) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return;
        }
        webViewClientA.onTooManyRedirects(webView, message, message2);
    }

    @Override
    public void onUnhandledKeyEvent(WebView webView, KeyEvent keyEvent) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return;
        }
        webViewClientA.onUnhandledKeyEvent(webView, keyEvent);
    }

    @Override
    @Nullable
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return null;
        }
        return webViewClientA.shouldInterceptRequest(webView, webResourceRequest);
    }

    @Override
    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return false;
        }
        return webViewClientA.shouldOverrideKeyEvent(webView, keyEvent);
    }

    @Override
    @RequiresApi(api = 24)
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return false;
        }
        return webViewClientA.shouldOverrideUrlLoading(webView, webResourceRequest);
    }

    @Override
    @RequiresApi(api = 23)
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return;
        }
        webViewClientA.onReceivedError(webView, webResourceRequest, webResourceError);
    }

    @Override
    @Nullable
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return null;
        }
        return webViewClientA.shouldInterceptRequest(webView, str);
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        WebViewClient webViewClientA = a();
        if (webViewClientA == null) {
            return false;
        }
        return webViewClientA.shouldOverrideUrlLoading(webView, str);
    }
}
