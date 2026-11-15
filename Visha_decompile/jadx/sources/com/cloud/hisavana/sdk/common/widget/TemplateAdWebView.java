package com.cloud.hisavana.sdk.common.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.sdk.bridge.HisavanaAdJsBridge;
import com.cloud.hisavana.sdk.bridge.HisavanaTemplateJSBridge;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.lzy.okgo.model.Progress;
import defpackage.ikd;
import defpackage.jm4;
import defpackage.ujd;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u0000 .2\u00020\u0001:\u0001\u001dB'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0006¢\u0006\u0004\b\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u000e¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u001a\u0010\u0019J\u0017\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eR\u0014\u0010 \u001a\u00020\u00118\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001a\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010'\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010-\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010*¨\u0006/"}, d2 = {"Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;", "Landroid/webkit/WebView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "adsDTO", "Lujd;", "callback", "Lzfb;", "setup", "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lujd;)V", "", "htmlContent", "loadTemplate", "(Ljava/lang/String;)V", "type", "notifyLifecycle", "(I)V", "destroyWebView", "()V", "b", "Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;", "error", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V", "Ljava/lang/String;", Progress.TAG, "Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;", "c", "Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;", "jsBridge", "d", "Lujd;", "eventCallback", "", "e", "Z", "isLoadFinish", "f", "hasReportedError", "Companion", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TemplateAdWebView extends WebView {
    public static final int LIFECYCLE_ON_BACK_PRESS = 5;
    public static final int LIFECYCLE_ON_PAUSE = 3;
    public static final int LIFECYCLE_ON_RESUME = 2;
    public static final int LIFECYCLE_ON_START = 1;
    public static final int LIFECYCLE_ON_STOP = 4;

    public final String tag;

    public HisavanaTemplateJSBridge jsBridge;

    public ujd eventCallback;

    public boolean isLoadFinish;

    public boolean hasReportedError;

    public static final class b extends jm4 {
        public b() {
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if ((webView != null ? webView.getProgress() : 0) == 100) {
                TemplateAdWebView.this.isLoadFinish = true;
            }
        }

        @Override
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (TemplateAdWebView.this.isLoadFinish || webResourceRequest == null || !webResourceRequest.isForMainFrame()) {
                return;
            }
            TemplateAdWebView templateAdWebView = TemplateAdWebView.this;
            TaErrorCode taErrorCode = TaErrorCode.ERROR_SHOW_TEMPLATE_WEBVIEW_LOAD_ERROR;
            y45.i(taErrorCode, "ERROR_SHOW_TEMPLATE_WEBVIEW_LOAD_ERROR");
            templateAdWebView.a(taErrorCode);
        }

        @Override
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            ikd.b().w(TemplateAdWebView.this.tag, "onRenderProcessGone");
            TemplateAdWebView templateAdWebView = TemplateAdWebView.this;
            TaErrorCode taErrorCode = TaErrorCode.ERROR_SHOW_TEMPLATE_WEBVIEW_RENDER_GONE;
            y45.i(taErrorCode, "ERROR_SHOW_TEMPLATE_WEBVIEW_RENDER_GONE");
            templateAdWebView.a(taErrorCode);
            return true;
        }

        @Override
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            y45.j(webView, "view");
            y45.j(webResourceRequest, Progress.REQUEST);
            HisavanaTemplateJSBridge hisavanaTemplateJSBridge = TemplateAdWebView.this.jsBridge;
            WebResourceResponse webResourceResponseShouldInterceptRequest = hisavanaTemplateJSBridge != null ? hisavanaTemplateJSBridge.shouldInterceptRequest(webResourceRequest.getUrl().toString()) : null;
            return webResourceResponseShouldInterceptRequest == null ? super.shouldInterceptRequest(webView, webResourceRequest) : webResourceResponseShouldInterceptRequest;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TemplateAdWebView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public final void a(TaErrorCode error) {
        if (this.hasReportedError) {
            return;
        }
        this.hasReportedError = true;
        try {
            ujd ujdVar = this.eventCallback;
            if (ujdVar != null) {
                ujdVar.c(error);
            }
        } catch (Throwable th) {
            ikd.b().w(this.tag, "dispatchLoadError error: " + th.getMessage());
        }
    }

    public final void b() {
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setSupportZoom(true);
        settings.setUseWideViewPort(true);
        settings.setDisplayZoomControls(false);
        settings.setLoadWithOverviewMode(true);
        settings.setDomStorageEnabled(true);
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        settings.setCacheMode(-1);
        setWebChromeClient(new WebChromeClient());
    }

    public final void destroyWebView() {
        try {
            stopLoading();
            removeJavascriptInterface(HisavanaAdJsBridge.INTERFACE_NAME);
            clearHistory();
            removeAllViews();
            destroy();
            this.eventCallback = null;
            this.jsBridge = null;
        } catch (Throwable th) {
            ikd.b().w(this.tag, "destroyWebView error: " + th.getMessage());
        }
    }

    public final void loadTemplate(String htmlContent) {
        y45.j(htmlContent, "htmlContent");
        loadDataWithBaseURL(null, htmlContent, "text/html; charset=UTF-8", "UTF-8", null);
    }

    public final void notifyLifecycle(int type) {
        try {
            ikd.b().d(this.tag, "notifyLifecycle type is " + type);
            evaluateJavascript("HisavanaLifecycleCallback('" + type + "');", null);
        } catch (Throwable th) {
            ikd.b().w(this.tag, "notifyLifecycle error: " + th.getMessage());
        }
    }

    public final void setup(AdsDTO adsDTO, ujd callback) {
        y45.j(adsDTO, "adsDTO");
        y45.j(callback, "callback");
        this.eventCallback = callback;
        HisavanaTemplateJSBridge hisavanaTemplateJSBridge = new HisavanaTemplateJSBridge(this, adsDTO, callback);
        this.jsBridge = hisavanaTemplateJSBridge;
        y45.g(hisavanaTemplateJSBridge);
        addJavascriptInterface(hisavanaTemplateJSBridge, HisavanaAdJsBridge.INTERFACE_NAME);
        setWebViewClient(new b());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TemplateAdWebView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public TemplateAdWebView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TemplateAdWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.tag = "TemplateAdWebView";
        b();
    }
}
