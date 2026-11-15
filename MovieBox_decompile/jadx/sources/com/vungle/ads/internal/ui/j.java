package com.vungle.ads.internal.ui;

import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
import com.aliyun.player.BuildConfig;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.EvaluateJsError;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.util.o;
import java.util.concurrent.ExecutorService;
import kotlin.Deprecated;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.s;

public final class j extends WebViewClient implements com.vungle.ads.internal.ui.view.b {
    public static final a Companion = new a(null);
    private static final String TAG = "VungleWebClient";
    private final AdPayload advertisement;
    private boolean collectConsent;
    private com.vungle.ads.internal.ui.view.b.InterfaceC0690b errorHandler;
    private String gdprAccept;
    private String gdprBody;
    private String gdprDeny;
    private String gdprTitle;
    private Boolean isViewable;
    private WebView loadedWebView;
    private com.vungle.ads.internal.ui.view.b.a mraidDelegate;
    private final ExecutorService offloadExecutor;
    private final com.vungle.ads.internal.model.g placement;
    private final com.vungle.ads.internal.platform.d platform;
    private boolean ready;
    private final SignalManager signalManager;
    private com.vungle.ads.internal.omsdk.d webViewObserver;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends WebViewRenderProcessClient {
        private com.vungle.ads.internal.ui.view.b.InterfaceC0690b errorHandler;

        public b(com.vungle.ads.internal.ui.view.b.InterfaceC0690b interfaceC0690b) {
            this.errorHandler = interfaceC0690b;
        }

        public void onRenderProcessResponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
            Intrinsics.h(webView, "webView");
        }

        public void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
            Intrinsics.h(webView, "webView");
            o.a aVar = o.Companion;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onRenderProcessUnresponsive(Title = ");
            sb2.append(webView.getTitle());
            sb2.append(", URL = ");
            sb2.append(webView.getOriginalUrl());
            sb2.append(", (webViewRenderProcess != null) = ");
            sb2.append(webViewRenderProcess != null);
            aVar.w(j.TAG, sb2.toString());
            com.vungle.ads.internal.ui.view.b.InterfaceC0690b interfaceC0690b = this.errorHandler;
            if (interfaceC0690b != null) {
                interfaceC0690b.onRenderProcessUnresponsive(webView, webViewRenderProcess);
            }
        }
    }

    public j(AdPayload adPayload, com.vungle.ads.internal.model.g gVar, ExecutorService executorService, SignalManager signalManager, com.vungle.ads.internal.platform.d dVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(adPayload, gVar, executorService, (i10 & 8) != 0 ? null : signalManager, (i10 & 16) != 0 ? null : dVar);
    }

    public static void getCollectConsent$vungle_ads_release$annotations() {
    }

    public static void getErrorHandler$vungle_ads_release$annotations() {
    }

    public static void getGdprAccept$vungle_ads_release$annotations() {
    }

    public static void getGdprBody$vungle_ads_release$annotations() {
    }

    public static void getGdprDeny$vungle_ads_release$annotations() {
    }

    public static void getGdprTitle$vungle_ads_release$annotations() {
    }

    public static void getLoadedWebView$vungle_ads_release$annotations() {
    }

    public static void getMraidDelegate$vungle_ads_release$annotations() {
    }

    public static void getReady$vungle_ads_release$annotations() {
    }

    public static void getWebViewObserver$vungle_ads_release$annotations() {
    }

    private final void handleWebViewError(String str, String str2, boolean z10) {
        String str3 = str2 + ' ' + str;
        com.vungle.ads.internal.ui.view.b.InterfaceC0690b interfaceC0690b = this.errorHandler;
        if (interfaceC0690b != null) {
            interfaceC0690b.onReceivedError(str3, z10);
        }
    }

    private final boolean isCriticalAsset(String str) {
        if (str.length() > 0) {
            return this.advertisement.isCriticalAsset(str);
        }
        return false;
    }

    public static void isViewable$vungle_ads_release$annotations() {
    }

    private final void runJavascriptOnWebView(WebView webView, String str) {
        try {
            o.Companion.w(TAG, "mraid Injecting JS " + str);
            if (webView != null) {
                webView.evaluateJavascript(str, null);
            }
        } catch (Throwable th2) {
            new EvaluateJsError("Evaluate js failed " + th2.getLocalizedMessage()).setLogEntry$vungle_ads_release(this.advertisement.getLogEntry$vungle_ads_release()).logErrorNoReturnValue$vungle_ads_release();
        }
    }

    public static final void m440shouldOverrideUrlLoading$lambda6$lambda1(final j this$0, Handler handler, final WebView webView) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(handler, "$handler");
        final String str = "window.vungle.mraidBridge.notifyReadyEvent(" + this$0.advertisement.createMRAIDArgs() + ')';
        handler.post(new Runnable() {
            @Override
            public final void run() {
                j.m441shouldOverrideUrlLoading$lambda6$lambda1$lambda0(this.f58429a, webView, str);
            }
        });
    }

    public static final void m441shouldOverrideUrlLoading$lambda6$lambda1$lambda0(j this$0, WebView webView, String injectJs) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(injectJs, "$injectJs");
        this$0.runJavascriptOnWebView(webView, injectJs);
    }

    public static final void m442shouldOverrideUrlLoading$lambda6$lambda5$lambda4(com.vungle.ads.internal.ui.view.b.a it, String command, JsonObject args, Handler handler, final j this$0, final WebView webView) {
        Intrinsics.h(it, "$it");
        Intrinsics.h(command, "$command");
        Intrinsics.h(args, "$args");
        Intrinsics.h(handler, "$handler");
        Intrinsics.h(this$0, "this$0");
        if (it.processCommand(command, args)) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    j.m443shouldOverrideUrlLoading$lambda6$lambda5$lambda4$lambda3(this.f58427a, webView);
                }
            });
        }
    }

    public static final void m443shouldOverrideUrlLoading$lambda6$lambda5$lambda4$lambda3(j this$0, WebView webView) {
        Intrinsics.h(this$0, "this$0");
        this$0.runJavascriptOnWebView(webView, "window.vungle.mraidBridge.notifyCommandComplete()");
    }

    public final boolean getCollectConsent$vungle_ads_release() {
        return this.collectConsent;
    }

    public final com.vungle.ads.internal.ui.view.b.InterfaceC0690b getErrorHandler$vungle_ads_release() {
        return this.errorHandler;
    }

    public final String getGdprAccept$vungle_ads_release() {
        return this.gdprAccept;
    }

    public final String getGdprBody$vungle_ads_release() {
        return this.gdprBody;
    }

    public final String getGdprDeny$vungle_ads_release() {
        return this.gdprDeny;
    }

    public final String getGdprTitle$vungle_ads_release() {
        return this.gdprTitle;
    }

    public final WebView getLoadedWebView$vungle_ads_release() {
        return this.loadedWebView;
    }

    public final com.vungle.ads.internal.ui.view.b.a getMraidDelegate$vungle_ads_release() {
        return this.mraidDelegate;
    }

    public final boolean getReady$vungle_ads_release() {
        return this.ready;
    }

    public final com.vungle.ads.internal.omsdk.d getWebViewObserver$vungle_ads_release() {
        return this.webViewObserver;
    }

    public final Boolean isViewable$vungle_ads_release() {
        return this.isViewable;
    }

    public final void notifyDiskAvailableSize(long j10) {
        WebView webView = this.loadedWebView;
        if (webView != null) {
            runJavascriptOnWebView(webView, "window.vungle.mraidBridgeExt.notifyAvailableDiskSpace(" + j10 + ')');
        }
    }

    @Override
    public void notifyPropertiesChange(boolean z10) {
        WebView webView = this.loadedWebView;
        if (webView != null) {
            s sVar = new s();
            s sVar2 = new s();
            kotlinx.serialization.json.i.b(sVar2, "width", Integer.valueOf(webView.getWidth()));
            kotlinx.serialization.json.i.b(sVar2, "height", Integer.valueOf(webView.getHeight()));
            JsonObject jsonObjectA = sVar2.a();
            s sVar3 = new s();
            kotlinx.serialization.json.i.b(sVar3, "x", 0);
            kotlinx.serialization.json.i.b(sVar3, "y", 0);
            kotlinx.serialization.json.i.b(sVar3, "width", Integer.valueOf(webView.getWidth()));
            kotlinx.serialization.json.i.b(sVar3, "height", Integer.valueOf(webView.getHeight()));
            JsonObject jsonObjectA2 = sVar3.a();
            s sVar4 = new s();
            Boolean bool = Boolean.FALSE;
            kotlinx.serialization.json.i.a(sVar4, "sms", bool);
            kotlinx.serialization.json.i.a(sVar4, "tel", bool);
            kotlinx.serialization.json.i.a(sVar4, "calendar", bool);
            kotlinx.serialization.json.i.a(sVar4, "storePicture", bool);
            kotlinx.serialization.json.i.a(sVar4, "inlineVideo", bool);
            JsonObject jsonObjectA3 = sVar4.a();
            sVar.b("maxSize", jsonObjectA);
            sVar.b("screenSize", jsonObjectA);
            sVar.b("defaultPosition", jsonObjectA2);
            sVar.b("currentPosition", jsonObjectA2);
            sVar.b("supports", jsonObjectA3);
            kotlinx.serialization.json.i.c(sVar, "placementType", this.advertisement.templateType());
            Boolean bool2 = this.isViewable;
            if (bool2 != null) {
                kotlinx.serialization.json.i.a(sVar, "isViewable", bool2);
            }
            kotlinx.serialization.json.i.c(sVar, "os", "android");
            kotlinx.serialization.json.i.c(sVar, "osVersion", String.valueOf(Build.VERSION.SDK_INT));
            kotlinx.serialization.json.i.a(sVar, "incentivized", Boolean.valueOf(this.placement.isRewardedVideo()));
            kotlinx.serialization.json.i.c(sVar, "version", BuildConfig.VERSION_NAME);
            com.vungle.ads.internal.platform.d dVar = this.platform;
            if (dVar != null) {
                kotlinx.serialization.json.i.a(sVar, "isSilent", Boolean.valueOf(dVar.isSilentModeEnabled()));
            }
            if (this.collectConsent) {
                kotlinx.serialization.json.i.a(sVar, "consentRequired", Boolean.TRUE);
                kotlinx.serialization.json.i.c(sVar, "consentTitleText", this.gdprTitle);
                kotlinx.serialization.json.i.c(sVar, "consentBodyText", this.gdprBody);
                kotlinx.serialization.json.i.c(sVar, "consentAcceptButtonText", this.gdprAccept);
                kotlinx.serialization.json.i.c(sVar, "consentDenyButtonText", this.gdprDeny);
            } else {
                kotlinx.serialization.json.i.a(sVar, "consentRequired", bool);
            }
            if (!ConfigManager.INSTANCE.signalsDisabled()) {
                SignalManager signalManager = this.signalManager;
                String uuid = signalManager != null ? signalManager.getUuid() : null;
                if (uuid != null && uuid.length() != 0) {
                    SignalManager signalManager2 = this.signalManager;
                    kotlinx.serialization.json.i.c(sVar, "sessionId", signalManager2 != null ? signalManager2.getUuid() : null);
                }
            }
            kotlinx.serialization.json.i.c(sVar, "sdkVersion", "7.5.0");
            runJavascriptOnWebView(webView, "window.vungle.mraidBridge.notifyPropertiesChange(" + sVar.a() + ',' + z10 + ')');
        }
    }

    public final void notifySilentModeChange(boolean z10) {
        WebView webView = this.loadedWebView;
        if (webView != null) {
            s sVar = new s();
            kotlinx.serialization.json.i.a(sVar, "isSilent", Boolean.valueOf(z10));
            runJavascriptOnWebView(webView, "window.vungle.mraidBridge.notifyPropertiesChange(" + sVar.a() + ')');
        }
    }

    @Override
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        if (webView == null) {
            return;
        }
        this.loadedWebView = webView;
        webView.setVisibility(0);
        notifyPropertiesChange(true);
        if (Build.VERSION.SDK_INT >= 29) {
            webView.setWebViewRenderProcessClient(d.a(new b(this.errorHandler)));
        }
        com.vungle.ads.internal.omsdk.d dVar = this.webViewObserver;
        if (dVar != null) {
            dVar.onPageFinished(webView);
        }
    }

    @Override
    @Deprecated
    public void onReceivedError(WebView webView, int i10, String description, String failingUrl) {
        Intrinsics.h(description, "description");
        Intrinsics.h(failingUrl, "failingUrl");
        super.onReceivedError(webView, i10, description, failingUrl);
    }

    @Override
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        String strValueOf = String.valueOf(webResourceResponse != null ? Integer.valueOf(webResourceResponse.getStatusCode()) : null);
        String strValueOf2 = String.valueOf(webResourceRequest != null ? webResourceRequest.getUrl() : null);
        boolean z10 = false;
        boolean z11 = webResourceRequest != null && webResourceRequest.isForMainFrame();
        o.Companion.e(TAG, "Http Error desc " + strValueOf + ' ' + z11 + " for URL " + strValueOf2);
        if (isCriticalAsset(strValueOf2) && z11) {
            z10 = true;
        }
        handleWebViewError(strValueOf, strValueOf2, z10);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        this.loadedWebView = null;
        if (Build.VERSION.SDK_INT < 26) {
            o.a aVar = o.Companion;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onRenderProcessGone url: ");
            sb2.append(webView != null ? webView.getUrl() : null);
            aVar.w(TAG, sb2.toString());
            com.vungle.ads.internal.ui.view.b.InterfaceC0690b interfaceC0690b = this.errorHandler;
            if (interfaceC0690b != null) {
                return interfaceC0690b.onWebRenderingProcessGone(webView, Boolean.TRUE);
            }
            return true;
        }
        o.a aVar2 = o.Companion;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("onRenderProcessGone url: ");
        sb3.append(webView != null ? webView.getUrl() : null);
        sb3.append(", did crash: ");
        sb3.append(renderProcessGoneDetail != null ? Boolean.valueOf(renderProcessGoneDetail.didCrash()) : null);
        aVar2.w(TAG, sb3.toString());
        com.vungle.ads.internal.ui.view.b.InterfaceC0690b interfaceC0690b2 = this.errorHandler;
        if (interfaceC0690b2 != null) {
            return interfaceC0690b2.onWebRenderingProcessGone(webView, renderProcessGoneDetail != null ? Boolean.valueOf(renderProcessGoneDetail.didCrash()) : null);
        }
        return super.onRenderProcessGone(webView, renderProcessGoneDetail);
    }

    @Override
    public void setAdVisibility(boolean z10) {
        this.isViewable = Boolean.valueOf(z10);
        notifyPropertiesChange(false);
    }

    public final void setCollectConsent$vungle_ads_release(boolean z10) {
        this.collectConsent = z10;
    }

    @Override
    public void setConsentStatus(boolean z10, String str, String str2, String str3, String str4) {
        this.collectConsent = z10;
        this.gdprTitle = str;
        this.gdprBody = str2;
        this.gdprAccept = str3;
        this.gdprDeny = str4;
    }

    @Override
    public void setErrorHandler(com.vungle.ads.internal.ui.view.b.InterfaceC0690b errorHandler) {
        Intrinsics.h(errorHandler, "errorHandler");
        this.errorHandler = errorHandler;
    }

    public final void setErrorHandler$vungle_ads_release(com.vungle.ads.internal.ui.view.b.InterfaceC0690b interfaceC0690b) {
        this.errorHandler = interfaceC0690b;
    }

    public final void setGdprAccept$vungle_ads_release(String str) {
        this.gdprAccept = str;
    }

    public final void setGdprBody$vungle_ads_release(String str) {
        this.gdprBody = str;
    }

    public final void setGdprDeny$vungle_ads_release(String str) {
        this.gdprDeny = str;
    }

    public final void setGdprTitle$vungle_ads_release(String str) {
        this.gdprTitle = str;
    }

    public final void setLoadedWebView$vungle_ads_release(WebView webView) {
        this.loadedWebView = webView;
    }

    @Override
    public void setMraidDelegate(com.vungle.ads.internal.ui.view.b.a aVar) {
        this.mraidDelegate = aVar;
    }

    public final void setMraidDelegate$vungle_ads_release(com.vungle.ads.internal.ui.view.b.a aVar) {
        this.mraidDelegate = aVar;
    }

    public final void setReady$vungle_ads_release(boolean z10) {
        this.ready = z10;
    }

    public final void setViewable$vungle_ads_release(Boolean bool) {
        this.isViewable = bool;
    }

    @Override
    public void setWebViewObserver(com.vungle.ads.internal.omsdk.d dVar) {
        this.webViewObserver = dVar;
    }

    public final void setWebViewObserver$vungle_ads_release(com.vungle.ads.internal.omsdk.d dVar) {
        this.webViewObserver = dVar;
    }

    @Override
    @Deprecated
    public boolean shouldOverrideUrlLoading(final WebView webView, String str) {
        o.a aVar = o.Companion;
        aVar.d(TAG, "MRAID Command " + str);
        if (str == null || str.length() == 0) {
            aVar.e(TAG, "Invalid URL ");
            return false;
        }
        Uri uri = Uri.parse(str);
        if (uri == null || uri.getScheme() == null) {
            return false;
        }
        String scheme = uri.getScheme();
        if (Intrinsics.c(scheme, CampaignEx.JSON_KEY_MRAID)) {
            final String host = uri.getHost();
            if (host != null) {
                if (!Intrinsics.c("propertiesChangeCompleted", host)) {
                    final com.vungle.ads.internal.ui.view.b.a aVar2 = this.mraidDelegate;
                    if (aVar2 != null) {
                        s sVar = new s();
                        for (String param : uri.getQueryParameterNames()) {
                            Intrinsics.g(param, "param");
                            kotlinx.serialization.json.i.c(sVar, param, uri.getQueryParameter(param));
                        }
                        final JsonObject jsonObjectA = sVar.a();
                        final Handler handler = new Handler(Looper.getMainLooper());
                        this.offloadExecutor.submit(new Runnable() {
                            @Override
                            public final void run() {
                                j.m442shouldOverrideUrlLoading$lambda6$lambda5$lambda4(aVar2, host, jsonObjectA, handler, this, webView);
                            }
                        });
                    }
                } else if (!this.ready) {
                    this.ready = true;
                    final Handler handler2 = new Handler(Looper.getMainLooper());
                    this.offloadExecutor.submit(new Runnable() {
                        @Override
                        public final void run() {
                            j.m440shouldOverrideUrlLoading$lambda6$lambda1(this.f58432a, handler2, webView);
                        }
                    });
                }
                return true;
            }
        } else if (StringsKt.H("http", scheme, true) || StringsKt.H("https", scheme, true)) {
            aVar.d(TAG, "Open URL" + str);
            com.vungle.ads.internal.ui.view.b.a aVar3 = this.mraidDelegate;
            if (aVar3 != null) {
                s sVar2 = new s();
                kotlinx.serialization.json.i.c(sVar2, "url", str);
                aVar3.processCommand("openNonMraid", sVar2.a());
            }
            return true;
        }
        return false;
    }

    public j(AdPayload advertisement, com.vungle.ads.internal.model.g placement, ExecutorService offloadExecutor, SignalManager signalManager, com.vungle.ads.internal.platform.d dVar) {
        Intrinsics.h(advertisement, "advertisement");
        Intrinsics.h(placement, "placement");
        Intrinsics.h(offloadExecutor, "offloadExecutor");
        this.advertisement = advertisement;
        this.placement = placement;
        this.offloadExecutor = offloadExecutor;
        this.signalManager = signalManager;
        this.platform = dVar;
    }

    @Override
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        String strValueOf = String.valueOf(webResourceError != null ? webResourceError.getDescription() : null);
        String strValueOf2 = String.valueOf(webResourceRequest != null ? webResourceRequest.getUrl() : null);
        boolean z10 = false;
        boolean z11 = webResourceRequest != null && webResourceRequest.isForMainFrame();
        o.Companion.e(TAG, "Error desc " + strValueOf + ' ' + z11 + " for URL " + strValueOf2);
        if (isCriticalAsset(strValueOf2) && z11) {
            z10 = true;
        }
        handleWebViewError(strValueOf, strValueOf2, z10);
    }
}
