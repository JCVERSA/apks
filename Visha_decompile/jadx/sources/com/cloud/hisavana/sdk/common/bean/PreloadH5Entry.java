package com.cloud.hisavana.sdk.common.bean;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.CookieManager;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.PreloadH5Entry;
import com.cloud.hisavana.sdk.common.widget.webview.ActionWebView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.google.android.gms.ads.MobileAds;
import com.just.agentweb.DefaultWebClient;
import defpackage.atd;
import defpackage.c39;
import defpackage.g1a;
import defpackage.ikd;
import defpackage.j1a;
import defpackage.y45;
import java.lang.reflect.Method;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b*\u0018\u0000 >2\u00020\u0001:\u0002>?BS\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0018\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u0012¢\u0006\u0004\b\u001c\u0010\u001bJ\r\u0010\u001d\u001a\u00020\u0012¢\u0006\u0004\b\u001d\u0010\u001bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001e\u001a\u0004\b\u001f\u0010 R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R$\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010\u0014R$\u0010\n\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010&\u001a\u0004\b/\u0010(\"\u0004\b0\u0010*R\"\u0010\f\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R$\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\u0016\u0010;\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010+R\u0016\u0010<\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=¨\u0006@"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;", "", "Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;", "webView", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "adsDTO", "", "overrideUrl", "", "process", "title", "", "spendEndTime", "Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;", "callback", MethodDecl.initName, "(Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ILjava/lang/String;JLcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;)V", "errorCode", "Lzfb;", "handlerLoadFailed", "(I)V", "url", "", "hasGesture", "shouldOverrideUrlLoad", "(Ljava/lang/String;Z)Z", "initPAW", "()V", "load", "release", "Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;", "getWebView", "()Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "getAdsDTO", "()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "setAdsDTO", "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V", "Ljava/lang/String;", "getOverrideUrl", "()Ljava/lang/String;", "setOverrideUrl", "(Ljava/lang/String;)V", "I", "getProcess", "()I", "setProcess", "getTitle", "setTitle", "J", "getSpendEndTime", "()J", "setSpendEndTime", "(J)V", "Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;", "getCallback", "()Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;", "setCallback", "(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;)V", "sslFailCount", "isStartLoad", "Z", "Companion", "PreloadCallback", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PreloadH5Entry {
    private static final String TAG = "PreloadEntry";
    private static Method sPawRegisterMethod;
    private AdsDTO adsDTO;
    private PreloadCallback callback;
    private boolean isStartLoad;
    private String overrideUrl;
    private int process;
    private long spendEndTime;
    private int sslFailCount;
    private String title;
    private final ActionWebView webView;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH&¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u0010\u001a\u00020\u00022\b\u0010\r\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00020\u000eH&¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\tH&¢\u0006\u0004\b\u0013\u0010\f¨\u0006\u0014"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;", "", "Lzfb;", "onPageStart", "()V", "", "title", "onReceivedTitle", "(Ljava/lang/String;)V", "", "newProcess", "onProgressChanged", "(I)V", "url", "", "hasGesture", "shouldOverrideUrlLoading", "(Ljava/lang/String;Z)V", "errorCode", "onPageFailed", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface PreloadCallback {
        void onPageFailed(int errorCode);

        void onPageStart();

        void onProgressChanged(int newProcess);

        void onReceivedTitle(String title);

        void shouldOverrideUrlLoading(String url, boolean hasGesture);
    }

    public PreloadH5Entry(ActionWebView actionWebView, AdsDTO adsDTO, String str, int i, String str2, long j, PreloadCallback preloadCallback) {
        y45.j(actionWebView, "webView");
        this.webView = actionWebView;
        this.adsDTO = adsDTO;
        this.overrideUrl = str;
        this.process = i;
        this.title = str2;
        this.spendEndTime = j;
        this.callback = preloadCallback;
        actionWebView.getSettings().setJavaScriptEnabled(true);
        actionWebView.getSettings().setDomStorageEnabled(true);
        actionWebView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        actionWebView.getSettings().setSupportZoom(true);
        actionWebView.getSettings().setUseWideViewPort(true);
        actionWebView.getSettings().setLoadWithOverviewMode(true);
        actionWebView.getSettings().setDisplayZoomControls(true);
        actionWebView.setWebViewClient(new WebViewClient() {
            @Override
            public void onPageFinished(WebView view, String url) {
                super.onPageFinished(view, url);
                if ((view != null ? view.getProgress() : 0) < 100 || this.this$0.sslFailCount <= 0) {
                    return;
                }
                AthenaTracker.j0(this.this$0.getAdsDTO(), this.this$0.sslFailCount);
            }

            @Override
            public void onPageStarted(WebView view, String url, Bitmap favicon) {
                super.onPageStarted(view, url, favicon);
                if (this.this$0.isStartLoad) {
                    return;
                }
                this.this$0.isStartLoad = true;
                PreloadH5Entry.PreloadCallback callback = this.this$0.getCallback();
                if (callback != null) {
                    callback.onPageStart();
                }
            }

            @Override
            public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            }

            @Override
            public void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
                if (request == null || !request.isForMainFrame()) {
                    return;
                }
                this.this$0.handlerLoadFailed(errorResponse != null ? errorResponse.getStatusCode() : -1);
            }

            @Override
            public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
                this.this$0.sslFailCount++;
                if (handler != null) {
                    handler.cancel();
                }
            }

            @Override
            public boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
                atd atdVar = atd.a;
                AdsDTO adsDTO2 = this.this$0.getAdsDTO();
                atdVar.j(adsDTO2 != null ? adsDTO2.getUuid() : null);
                return true;
            }

            @Override
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                return url != null ? this.this$0.shouldOverrideUrlLoad(url, false) : super.shouldOverrideUrlLoading(view, url);
            }

            @Override
            public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
                if (request == null || !request.isForMainFrame()) {
                    return;
                }
                this.this$0.handlerLoadFailed(error != null ? error.getErrorCode() : -1);
            }

            @Override
            public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
                if ((request != null ? request.getUrl() : null) != null) {
                    String string = request.getUrl().toString();
                    y45.i(string, "toString(...)");
                    return this.this$0.shouldOverrideUrlLoad(string, request.hasGesture());
                }
                return super.shouldOverrideUrlLoading(view, request);
            }
        });
        actionWebView.setWebChromeClient(new WebChromeClient() {
            @Override
            public void onProgressChanged(WebView view, int newProgress) {
                super.onProgressChanged(view, newProgress);
                this.this$0.setProcess(newProgress);
                ikd.b().d(PreloadH5Entry.TAG, "onProgressChanged " + this.this$0.getProcess());
                if (newProgress >= 100) {
                    this.this$0.setSpendEndTime(System.currentTimeMillis());
                }
                PreloadH5Entry.PreloadCallback callback = this.this$0.getCallback();
                if (callback != null) {
                    callback.onProgressChanged(newProgress);
                }
            }

            @Override
            public void onReceivedTitle(WebView view, String title) {
                String url;
                super.onReceivedTitle(view, title);
                ikd.b().d(PreloadH5Entry.TAG, "onReceivedTitle " + title);
                if (title == null || title.length() == 0) {
                    return;
                }
                if (view == null || (url = view.getUrl()) == null || !j1a.X(url, title, false, 2, null)) {
                    this.this$0.setTitle(title);
                    PreloadH5Entry.PreloadCallback callback = this.this$0.getCallback();
                    if (callback != null) {
                        callback.onReceivedTitle(title);
                    }
                }
            }
        });
        initPAW();
    }

    public final void handlerLoadFailed(int errorCode) {
        AdsDTO adsDTO = this.adsDTO;
        final String uuid = adsDTO != null ? adsDTO.getUuid() : null;
        this.webView.post(new Runnable() {
            @Override
            public final void run() {
                PreloadH5Entry.handlerLoadFailed$lambda$2(uuid);
            }
        });
        PreloadCallback preloadCallback = this.callback;
        if (preloadCallback != null) {
            preloadCallback.onPageFailed(errorCode);
        }
    }

    public static final void handlerLoadFailed$lambda$2(String str) {
        atd.a.j(str);
    }

    private final void initPAW() {
        try {
            CookieManager.getInstance().setAcceptThirdPartyCookies(this.webView, true);
            if (sPawRegisterMethod == null) {
                sPawRegisterMethod = MobileAds.class.getMethod("registerWebView", WebView.class);
            }
            Method method = sPawRegisterMethod;
            if (method != null) {
                method.invoke(null, this.webView);
            }
        } catch (Exception e) {
            ikd.b().e(TAG, "initPaw error: " + e.getMessage());
        }
    }

    public final boolean shouldOverrideUrlLoad(String url, boolean hasGesture) {
        if (url != null) {
            if (!g1a.R(url, DefaultWebClient.HTTP_SCHEME, false, 2, null) && !g1a.R(url, "https://", false, 2, null)) {
                this.overrideUrl = url;
                PreloadCallback preloadCallback = this.callback;
                if (preloadCallback != null) {
                    preloadCallback.shouldOverrideUrlLoading(url, hasGesture);
                }
                return true;
            }
            if (j1a.X(url, "play.google.com", false, 2, null)) {
                this.overrideUrl = url;
                PreloadCallback preloadCallback2 = this.callback;
                if (preloadCallback2 != null) {
                    preloadCallback2.shouldOverrideUrlLoading(url, hasGesture);
                }
                return true;
            }
        }
        return false;
    }

    public final AdsDTO getAdsDTO() {
        return this.adsDTO;
    }

    public final PreloadCallback getCallback() {
        return this.callback;
    }

    public final String getOverrideUrl() {
        return this.overrideUrl;
    }

    public final int getProcess() {
        return this.process;
    }

    public final long getSpendEndTime() {
        return this.spendEndTime;
    }

    public final String getTitle() {
        return this.title;
    }

    public final ActionWebView getWebView() {
        return this.webView;
    }

    public final void load() {
        String realLandUrl;
        AdsDTO adsDTO = this.adsDTO;
        if (adsDTO == null || (realLandUrl = adsDTO.getRealLandUrl()) == null) {
            return;
        }
        this.webView.layout(0, 0, c39.f(), c39.e());
        this.webView.loadUrl(realLandUrl);
    }

    public final void release() {
        try {
            this.webView.setWebViewClient(new WebViewClient());
            this.webView.setWebChromeClient(null);
            this.webView.stopLoading();
            this.webView.clearHistory();
            this.webView.onPause();
            this.webView.destroy();
        } catch (Exception e) {
            ikd.b().e(TAG, "reset error: " + e.getMessage());
        }
        this.adsDTO = null;
        this.process = 0;
        this.title = "";
        this.overrideUrl = null;
        this.callback = null;
        this.sslFailCount = 0;
        this.isStartLoad = false;
        this.spendEndTime = 0L;
    }

    public final void setAdsDTO(AdsDTO adsDTO) {
        this.adsDTO = adsDTO;
    }

    public final void setCallback(PreloadCallback preloadCallback) {
        this.callback = preloadCallback;
    }

    public final void setOverrideUrl(String str) {
        this.overrideUrl = str;
    }

    public final void setProcess(int i) {
        this.process = i;
    }

    public final void setSpendEndTime(long j) {
        this.spendEndTime = j;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public PreloadH5Entry(ActionWebView actionWebView, AdsDTO adsDTO, String str, int i, String str2, long j, PreloadCallback preloadCallback, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(actionWebView, (i2 & 2) != 0 ? null : adsDTO, (i2 & 4) != 0 ? null : str, (i2 & 8) != 0 ? 0 : i, (i2 & 16) != 0 ? "" : str2, (i2 & 32) != 0 ? 0L : j, (i2 & 64) == 0 ? preloadCallback : null);
    }
}
