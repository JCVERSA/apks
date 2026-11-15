package com.just.agentweb;

import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import java.util.Map;

public class UrlLoaderImpl implements IUrlLoader {
    public static final String TAG = "UrlLoaderImpl";
    private Handler mHandler;
    private HttpHeaders mHttpHeaders;
    private WebView mWebView;

    public UrlLoaderImpl(WebView webView, HttpHeaders httpHeaders) {
        this.mHandler = null;
        this.mWebView = webView;
        this.mHttpHeaders = httpHeaders;
        if (httpHeaders == null) {
            this.mHttpHeaders = HttpHeaders.create();
        }
        this.mHandler = new Handler(Looper.getMainLooper());
    }

    private void safeLoadUrl(final String str) {
        this.mHandler.post(new Runnable() {
            @Override
            public void run() {
                UrlLoaderImpl.this.loadUrl(str);
            }
        });
    }

    private void safeReload() {
        this.mHandler.post(new Runnable() {
            @Override
            public void run() {
                UrlLoaderImpl.this.reload();
            }
        });
    }

    @Override
    public HttpHeaders getHttpHeaders() {
        HttpHeaders httpHeaders = this.mHttpHeaders;
        if (httpHeaders != null) {
            return httpHeaders;
        }
        HttpHeaders httpHeadersCreate = HttpHeaders.create();
        this.mHttpHeaders = httpHeadersCreate;
        return httpHeadersCreate;
    }

    @Override
    public void loadData(final String str, final String str2, final String str3) {
        if (AgentWebUtils.isUIThread()) {
            this.mWebView.loadData(str, str2, str3);
        } else {
            this.mHandler.post(new Runnable() {
                @Override
                public void run() {
                    UrlLoaderImpl.this.loadData(str, str2, str3);
                }
            });
        }
    }

    @Override
    public void loadDataWithBaseURL(final String str, final String str2, final String str3, final String str4, final String str5) {
        if (AgentWebUtils.isUIThread()) {
            this.mWebView.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } else {
            this.mHandler.post(new Runnable() {
                @Override
                public void run() {
                    UrlLoaderImpl.this.loadDataWithBaseURL(str, str2, str3, str4, str5);
                }
            });
        }
    }

    @Override
    public void loadUrl(String str) {
        loadUrl(str, this.mHttpHeaders.getHeaders(str));
    }

    @Override
    public void postUrl(final String str, final byte[] bArr) {
        if (AgentWebUtils.isUIThread()) {
            this.mWebView.postUrl(str, bArr);
        } else {
            this.mHandler.post(new Runnable() {
                @Override
                public void run() {
                    UrlLoaderImpl.this.postUrl(str, bArr);
                }
            });
        }
    }

    @Override
    public void reload() {
        if (AgentWebUtils.isUIThread()) {
            this.mWebView.reload();
        } else {
            this.mHandler.post(new Runnable() {
                @Override
                public void run() {
                    UrlLoaderImpl.this.reload();
                }
            });
        }
    }

    @Override
    public void stopLoading() {
        if (AgentWebUtils.isUIThread()) {
            this.mWebView.stopLoading();
        } else {
            this.mHandler.post(new Runnable() {
                @Override
                public void run() {
                    UrlLoaderImpl.this.stopLoading();
                }
            });
        }
    }

    @Override
    public void loadUrl(final String str, final Map<String, String> map) {
        if (!AgentWebUtils.isUIThread()) {
            AgentWebUtils.runInUiThread(new Runnable() {
                @Override
                public void run() {
                    UrlLoaderImpl.this.loadUrl(str, map);
                }
            });
            return;
        }
        LogUtils.i(TAG, "loadUrl:" + str + " headers:" + map);
        if (map == null || map.isEmpty()) {
            this.mWebView.loadUrl(str);
        } else {
            this.mWebView.loadUrl(str, map);
        }
    }
}
