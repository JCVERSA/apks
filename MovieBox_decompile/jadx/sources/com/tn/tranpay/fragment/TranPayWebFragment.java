package com.tn.tranpay.fragment;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.NetworkUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.u;
import com.cloud.tmc.integration.bridge.NetworkBridge;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.tranpay.TranPayConfiguration;
import com.tn.tranpay.event.AppScopeVMlProvider;
import com.tn.tranpay.event.FlowEventBus;
import com.tn.tranpay.helper.PayUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 W2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001XB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0014\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0015\u0010\u0005J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0019\u0010\u0005J\u0019\u0010\u001c\u001a\u00020\b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\r\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\bH\u0002¢\u0006\u0004\b$\u0010\u0005J\u0017\u0010%\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0003¢\u0006\u0004\b%\u0010&J\u001f\u0010)\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020!2\u0006\u0010(\u001a\u00020!H\u0002¢\u0006\u0004\b)\u0010*J\u0017\u0010,\u001a\u00020\b2\u0006\u0010+\u001a\u00020\u001eH\u0002¢\u0006\u0004\b,\u0010-J\u0019\u0010.\u001a\u00020\b2\b\u0010'\u001a\u0004\u0018\u00010!H\u0002¢\u0006\u0004\b.\u0010/R\u0018\u00102\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010<\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u00101R\u0018\u0010>\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u00101R\u0016\u0010A\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010C\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010@R\u0016\u0010D\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010@R4\u0010J\u001a\"\u0012\u0004\u0012\u00020!\u0012\u0006\u0012\u0004\u0018\u00010F0Ej\u0010\u0012\u0004\u0012\u00020!\u0012\u0006\u0012\u0004\u0018\u00010F`G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010L\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010@R\u0016\u0010P\u001a\u00020M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0016\u0010T\u001a\u00020Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u0014\u0010V\u001a\u00020!8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bU\u0010#¨\u0006Y"}, d2 = {"Lcom/tn/tranpay/fragment/TranPayWebFragment;", "Lcom/tn/tranpay/fragment/BaseFragment;", "Lrg/c;", "Lcom/blankj/utilcode/util/NetworkUtils$a;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "o0", "(Landroid/view/LayoutInflater;)Lrg/c;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "onDestroyView", "onDestroy", "Lcom/tn/tranpay/report/c;", "V", "()Lcom/tn/tranpay/report/c;", "onDisconnected", "Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;", NetworkBridge.KEY_NETWORK_TYPE, CampaignEx.JSON_KEY_AD_K, "(Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;)V", "", "u0", "()Z", "", "getClassTag", "()Ljava/lang/String;", "initViewModel", "t0", "(Landroid/view/View;)V", "url", "from", "l0", "(Ljava/lang/String;Ljava/lang/String;)Z", "isBackPressed", "p0", "(Z)V", "v0", "(Ljava/lang/String;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "strTitle", "Landroid/view/ViewGroup;", "e", "Landroid/view/ViewGroup;", "webLoading", "Landroid/webkit/WebView;", "f", "Landroid/webkit/WebView;", "mCustomWebView", "g", "mUrl", "h", "mCpFontPage", "i", "Z", "mShouldOpenCpFrontPage", "j", "isError", "isPayCancel", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "l", "Ljava/util/HashMap;", "timer", "m", "isTriggerFinishPage", "Landroid/webkit/WebChromeClient;", "n", "Landroid/webkit/WebChromeClient;", "mWebChromeClient", "Landroid/webkit/WebViewClient;", "o", "Landroid/webkit/WebViewClient;", "mWebViewClient", "n0", "resultPageUrl", TtmlNode.TAG_P, "a", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TranPayWebFragment extends BaseFragment<rg.c> implements NetworkUtils.a {

    public static final Companion INSTANCE = new Companion(null);

    private static final String f40603q;

    private static final String f40604r;

    private ViewGroup webLoading;

    private WebView mCustomWebView;

    private String mUrl;

    private String mCpFontPage;

    private boolean isError;

    private boolean isPayCancel;

    private boolean isTriggerFinishPage;

    private String strTitle = "";

    private boolean mShouldOpenCpFrontPage = true;

    private final HashMap timer = new HashMap();

    private WebChromeClient mWebChromeClient = new b();

    private WebViewClient mWebViewClient = new c();

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TranPayWebFragment a() {
            return new TranPayWebFragment();
        }

        private Companion() {
        }
    }

    public static final class b extends WebChromeClient {
        b() {
        }

        @Override
        public void onProgressChanged(WebView view, int i10) {
            Intrinsics.h(view, "view");
            super.onProgressChanged(view, i10);
        }

        @Override
        public void onReceivedTitle(WebView view, String title) {
            rg.c cVar;
            AppCompatTextView appCompatTextView;
            Intrinsics.h(view, "view");
            Intrinsics.h(title, "title");
            super.onReceivedTitle(view, title);
            TranPayWebFragment.this.strTitle = title;
            String str = TranPayWebFragment.this.strTitle;
            if (str == null || (cVar = (rg.c) TranPayWebFragment.this.getMViewBinding()) == null || (appCompatTextView = cVar.f71222i) == null) {
                return;
            }
            appCompatTextView.setText(str);
        }
    }

    public static final class c extends WebViewClient {
        c() {
        }

        private final boolean a(Uri uri) {
            WebView webView;
            try {
                Intent uri2 = Intent.parseUri(uri.toString(), 1);
                if (uri2 != null) {
                    FragmentActivity activity = TranPayWebFragment.this.getActivity();
                    PackageManager packageManager = activity != null ? activity.getPackageManager() : null;
                    if ((packageManager != null ? packageManager.resolveActivity(uri2, 0) : null) != null) {
                        FragmentActivity activity2 = TranPayWebFragment.this.getActivity();
                        if (activity2 != null) {
                            activity2.startActivity(uri2);
                        }
                        return true;
                    }
                    String stringExtra = uri2.getStringExtra("browser_fallback_url");
                    if (!TextUtils.isEmpty(stringExtra)) {
                        if (stringExtra != null && StringsKt.W(stringExtra, "market://", false, 2, null)) {
                            String str = uri2.getPackage();
                            if (str != null) {
                                return PayUtils.r(PayUtils.f40634a, str, false, 2, null);
                            }
                        } else if (stringExtra != null && (webView = TranPayWebFragment.this.mCustomWebView) != null) {
                            webView.loadUrl(stringExtra);
                        }
                        return true;
                    }
                }
            } catch (Exception e10) {
                lh.a.e(lh.a.f65699a, TranPayWebFragment.this.getClassTag() + " --> handleIntentScheme() --> 处理失败: " + e10, null, 2, null);
            }
            return false;
        }

        private final boolean b(WebView webView, String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            try {
                Uri uri = Uri.parse(str);
                if (uri != null) {
                    if (Intrinsics.c("intent", uri.getScheme())) {
                        return a(uri);
                    }
                    if (!CollectionsKt.b0(CollectionsKt.o("http", "https"), uri.getScheme())) {
                        PayUtils payUtils = PayUtils.f40634a;
                        String string = uri.toString();
                        Intrinsics.g(string, "uri.toString()");
                        if (!payUtils.s(string, true)) {
                            lh.a.k(lh.a.f65699a, TranPayWebFragment.this.getClassTag() + " --> shouldOverrideUrlLoadingInner() --> 无法处理自定义协议: " + uri.getScheme() + "，已阻止 WebView 加载", null, 2, null);
                        }
                        return true;
                    }
                }
                return false;
            } catch (Exception e10) {
                lh.a.e(lh.a.f65699a, TranPayWebFragment.this.getClassTag() + " --> shouldOverrideUrlLoadingInner() --> 解析失败: " + e10, null, 2, null);
                return true;
            }
        }

        @Override
        public void onPageFinished(WebView view, String url) {
            HashMap mapG;
            Intrinsics.h(view, "view");
            Intrinsics.h(url, "url");
            super.onPageFinished(view, url);
            lh.a aVar = lh.a.f65699a;
            lh.a.c(aVar, TranPayWebFragment.this.getClassTag() + " --> mWebViewClient --> onPageFinished() --> url = " + url, null, 2, null);
            if (!TranPayWebFragment.this.isError) {
                TranPayWebFragment.this.v0(url);
                return;
            }
            com.tn.tranpay.report.c logViewConfig = TranPayWebFragment.this.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.j(false);
            }
            if (TranPayWebFragment.this.timer.get(url) == null) {
                lh.a.e(aVar, TranPayWebFragment.this.getClassTag() + " --> mWebViewClient --> onPageFinished() --> 未记录请求加载的耗时 --> url = " + url, null, 2, null);
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            Object obj = TranPayWebFragment.this.timer.get(url);
            Intrinsics.e(obj);
            long jLongValue = jCurrentTimeMillis - ((Number) obj).longValue();
            com.tn.tranpay.report.c logViewConfig2 = TranPayWebFragment.this.getLogViewConfig();
            if (logViewConfig2 == null || (mapG = logViewConfig2.g()) == null) {
                return;
            }
            mapG.put("duration", String.valueOf(jLongValue));
        }

        @Override
        public void onPageStarted(WebView view, String url, Bitmap bitmap) {
            HashMap mapG;
            Intrinsics.h(view, "view");
            Intrinsics.h(url, "url");
            super.onPageStarted(view, url, bitmap);
            if (TranPayWebFragment.this.l0(url, "onPageStarted()")) {
                return;
            }
            ViewGroup viewGroup = TranPayWebFragment.this.webLoading;
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
            }
            rg.c cVar = (rg.c) TranPayWebFragment.this.getMViewBinding();
            ProgressBar progressBar = cVar != null ? cVar.f71219f : null;
            if (progressBar != null) {
                progressBar.setVisibility(8);
            }
            if (TranPayWebFragment.this.timer.get(url) == null) {
                TranPayWebFragment.this.timer.put(url, Long.valueOf(System.currentTimeMillis()));
            }
            com.tn.tranpay.report.c logViewConfig = TranPayWebFragment.this.getLogViewConfig();
            if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
                mapG.put("url", url);
            }
            TranPayWebFragment.this.isError = false;
        }

        @Override
        public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
            Intrinsics.h(view, "view");
            Intrinsics.h(request, "request");
            Intrinsics.h(error, "error");
            super.onReceivedError(view, request, error);
            lh.a.e(lh.a.f65699a, TranPayWebFragment.this.getClassTag() + " --> mWebViewClient --> onReceivedError() --> url = " + request.getUrl() + " --> error = " + error, null, 2, null);
            TranPayWebFragment.this.isError = true;
        }

        @Override
        public void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
            Intrinsics.h(view, "view");
            Intrinsics.h(request, "request");
            Intrinsics.h(errorResponse, "errorResponse");
            super.onReceivedHttpError(view, request, errorResponse);
            lh.a.e(lh.a.f65699a, TranPayWebFragment.this.getClassTag() + " --> mWebViewClient --> onReceivedHttpError() --> url = " + request.getUrl() + " --> errorResponse = " + errorResponse, null, 2, null);
        }

        @Override
        public WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
            Intrinsics.h(view, "view");
            Intrinsics.h(request, "request");
            TranPayWebFragment tranPayWebFragment = TranPayWebFragment.this;
            String string = request.getUrl().toString();
            Intrinsics.g(string, "request.url.toString()");
            tranPayWebFragment.l0(string, "shouldInterceptRequest()");
            return super.shouldInterceptRequest(view, request);
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            Uri url;
            String string;
            if (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null || (string = url.toString()) == null) {
                return false;
            }
            lh.a.c(lh.a.f65699a, TranPayWebFragment.this.getClassTag() + " --> mWebViewClient --> shouldOverrideUrlLoading() --> url = " + string, null, 2, null);
            if (b(webView, string)) {
                return true;
            }
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }
    }

    static {
        TranPayConfiguration tranPayConfiguration = TranPayConfiguration.f40495a;
        f40603q = tranPayConfiguration.u() ? "https://cashier-serverweb.paynicorn.com/result" : "https://cashier-serverweb-test.paynicorn.com/result";
        f40604r = tranPayConfiguration.u() ? "https://cashier-serverweb.paynicorn.com/api/cancelPay" : "https://cashier-serverweb-test.paynicorn.com/api/cancelPay";
    }

    public final String getClassTag() {
        String simpleName = TranPayWebFragment.class.getSimpleName();
        Intrinsics.g(simpleName, "javaClass.simpleName");
        return simpleName;
    }

    private final void initViewModel() {
        String string;
        rg.c cVar;
        AppCompatTextView appCompatTextView;
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("url")) == null) {
            string = "";
        }
        this.mUrl = string;
        Bundle arguments2 = getArguments();
        this.mCpFontPage = arguments2 != null ? arguments2.getString("cpFrontPage") : null;
        Bundle arguments3 = getArguments();
        this.mShouldOpenCpFrontPage = arguments3 != null ? arguments3.getBoolean("shouldOpenCpFrontPage") : true;
        String[] strArrA = u.a(this.mUrl, "\\/");
        if (strArrA != null) {
            if (strArrA.length == 0) {
                return;
            }
            String str = strArrA[strArrA.length - 1];
            this.strTitle = str;
            if (str == null || (cVar = (rg.c) getMViewBinding()) == null || (appCompatTextView = cVar.f71222i) == null) {
                return;
            }
            appCompatTextView.setText(str);
        }
    }

    public final boolean l0(String url, String from) {
        lh.a aVar = lh.a.f65699a;
        lh.a.g(aVar, getClassTag() + " --> mWebViewClient --> checkUrl() --> from = " + from + " --> url = " + url + " --> resultPageUrl = " + n0(), null, 2, null);
        if (this.isTriggerFinishPage) {
            lh.a.c(aVar, getClassTag() + " --> mWebViewClient --> isTriggerFinishPage = " + from + " --> url = " + url + " --> resultPageUrl = " + n0(), null, 2, null);
            return true;
        }
        if (!StringsKt.c0(url, n0(), false, 2, null)) {
            if (!StringsKt.c0(url, f40604r, false, 2, null)) {
                return false;
            }
            this.isTriggerFinishPage = true;
            lh.a.g(aVar, getClassTag() + " --> mWebViewClient --> checkUrl() --> cancel --> from = " + from + " --> url = " + url, null, 2, null);
            this.isPayCancel = true;
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.finish();
            }
            return true;
        }
        if (this.mShouldOpenCpFrontPage) {
            this.isTriggerFinishPage = true;
            lh.a.g(aVar, getClassTag() + " --> mWebViewClient --> checkUrl() -- shouldOpenCpFrontPage --> result --> from = " + from + " --> url = " + url, null, 2, null);
            com.tn.tranpay.event.b bVar = new com.tn.tranpay.event.b(0);
            if (com.tn.tranpay.event.a.f40551a.c()) {
                FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name = com.tn.tranpay.event.b.class.getName();
                Intrinsics.g(name, "T::class.java.name");
                flowEventBus.postEvent(name, bVar, 0L);
            } else {
                lh.a.e(aVar, "TranPay SDK not initialized, cannot post event. Please call TranPay.configure() in Application.onCreate()", null, 2, null);
            }
            return false;
        }
        this.isTriggerFinishPage = true;
        lh.a.g(aVar, getClassTag() + " --> mWebViewClient --> checkUrl() -- shouldNotOpenCpFrontPage --> result --> from = " + from + " --> url = " + url, null, 2, null);
        com.tn.tranpay.event.b bVar2 = new com.tn.tranpay.event.b(0);
        if (com.tn.tranpay.event.a.f40551a.c()) {
            FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name2 = com.tn.tranpay.event.b.class.getName();
            Intrinsics.g(name2, "T::class.java.name");
            flowEventBus2.postEvent(name2, bVar2, 0L);
        } else {
            lh.a.e(aVar, "TranPay SDK not initialized, cannot post event. Please call TranPay.configure() in Application.onCreate()", null, 2, null);
        }
        ThreadUtils.f().postDelayed(new Runnable() {
            @Override
            public final void run() {
                TranPayWebFragment.m0(this.f40629a);
            }
        }, 400L);
        return true;
    }

    public static final void m0(TranPayWebFragment this$0) {
        Intrinsics.h(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    private final String n0() {
        String str = this.mCpFontPage;
        if (str == null || StringsKt.q0(str)) {
            str = null;
        }
        return str == null ? f40603q : str;
    }

    private final void p0(boolean isBackPressed) {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            lh.a.c(lh.a.f65699a, "用户关闭了 TranPayWebFragment", null, 2, null);
            if (isBackPressed) {
                activity.onBackPressed();
            } else {
                activity.finish();
            }
        }
    }

    public static final void q0(TranPayWebFragment this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        WebView webView = this$0.mCustomWebView;
        if (webView != null) {
            webView.reload();
        }
    }

    public static final void r0(TranPayWebFragment this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        this$0.p0(true);
    }

    public static final void s0(TranPayWebFragment this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        this$0.p0(false);
    }

    private final void t0(View view) {
        HashMap mapG;
        FrameLayout frameLayout;
        WebView webView = new WebView(view.getContext());
        rg.c cVar = (rg.c) getMViewBinding();
        if (cVar != null && (frameLayout = cVar.f71215b) != null) {
            frameLayout.addView(webView, 0, new FrameLayout.LayoutParams(-1, -1));
        }
        webView.setLayerType(2, null);
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(false);
        settings.setSavePassword(false);
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new TranPayWebFragment$initWeb$1$1$1(settings, null), 3, null);
        settings.setMixedContentMode(0);
        settings.setTextZoom(100);
        settings.setDatabaseEnabled(true);
        settings.setLoadsImagesAutomatically(true);
        settings.setSupportMultipleWindows(false);
        settings.setBlockNetworkImage(false);
        settings.setAllowFileAccess(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
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
        webView.setWebChromeClient(this.mWebChromeClient);
        webView.setWebViewClient(this.mWebViewClient);
        webView.setOverScrollMode(2);
        this.mCustomWebView = webView;
        String str = this.mUrl;
        if (str != null) {
            this.timer.put(str, Long.valueOf(System.currentTimeMillis()));
            com.tn.tranpay.report.c logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
                mapG.put("url", this.mUrl);
            }
            rg.c cVar2 = (rg.c) getMViewBinding();
            ProgressBar progressBar = cVar2 != null ? cVar2.f71219f : null;
            if (progressBar != null) {
                progressBar.setVisibility(0);
            }
            lh.a.g(lh.a.f65699a, getClassTag() + " --> initWeb() --> WebView初始化完成 --> mCustomWebView?.loadUrl(it) 开始加载收银台 -- url = " + this.mUrl, null, 2, null);
            WebView webView2 = this.mCustomWebView;
            if (webView2 != null) {
                webView2.loadUrl(str);
            }
        }
    }

    public final void v0(String url) {
        HashMap mapG;
        HashMap mapG2;
        if (this.timer.get(url) != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Long l10 = (Long) this.timer.get(url);
            long jLongValue = jCurrentTimeMillis - (l10 != null ? l10.longValue() : jCurrentTimeMillis);
            lh.a.g(lh.a.f65699a, getClassTag() + " --> pageFinish() --> mUrl = " + this.mUrl + " -- used time = " + jLongValue, null, 2, null);
            com.tn.tranpay.report.c logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG2 = logViewConfig.g()) != null) {
                mapG2.put("duration", String.valueOf(jLongValue));
            }
            if (this.timer.get("on_create") != null) {
                Object obj = this.timer.get("on_create");
                Intrinsics.e(obj);
                long jLongValue2 = jCurrentTimeMillis - ((Number) obj).longValue();
                com.tn.tranpay.report.c logViewConfig2 = getLogViewConfig();
                if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
                    mapG.put("duration", String.valueOf(jLongValue2));
                }
                this.timer.put("on_create", null);
            }
        }
        com.tn.tranpay.report.c logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 == null) {
            return;
        }
        logViewConfig3.j(true);
    }

    @Override
    public com.tn.tranpay.report.c V() {
        return new com.tn.tranpay.report.c("web_page", false, 2, null);
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        ProgressBar progressBar;
        rg.d dVar;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        AppCompatImageView appCompatImageView3;
        Intrinsics.h(view, "view");
        rg.c cVar = (rg.c) getMViewBinding();
        if (cVar != null) {
            cVar.f71221h.setVisibility(0);
        }
        this.timer.put("on_create", Long.valueOf(System.currentTimeMillis()));
        rg.c cVar2 = (rg.c) getMViewBinding();
        if (cVar2 != null && (appCompatImageView3 = cVar2.f71218e) != null) {
            appCompatImageView3.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    TranPayWebFragment.q0(this.f40626a, view2);
                }
            });
        }
        rg.c cVar3 = (rg.c) getMViewBinding();
        if (cVar3 != null && (appCompatImageView2 = cVar3.f71216c) != null) {
            appCompatImageView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    TranPayWebFragment.r0(this.f40627a, view2);
                }
            });
        }
        rg.c cVar4 = (rg.c) getMViewBinding();
        if (cVar4 != null && (appCompatImageView = cVar4.f71217d) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    TranPayWebFragment.s0(this.f40628a, view2);
                }
            });
        }
        rg.c cVar5 = (rg.c) getMViewBinding();
        this.webLoading = (cVar5 == null || (dVar = cVar5.f71223j) == null) ? null : dVar.f71225b;
        rg.c cVar6 = (rg.c) getMViewBinding();
        if (cVar6 != null && (progressBar = cVar6.f71219f) != null) {
            progressBar.setIndeterminateTintList(ColorStateList.valueOf(com.tn.tranpay.e.f40541c.b().d()));
        }
        initViewModel();
        t0(view);
        NetworkUtils.w(this);
    }

    @Override
    public void k(NetworkUtils.NetworkType networkType) {
        WebView webView;
        com.tn.tranpay.report.c logViewConfig = getLogViewConfig();
        if ((logViewConfig == null || !logViewConfig.i()) && this.isError && (webView = this.mCustomWebView) != null) {
            webView.reload();
        }
    }

    @Override
    public rg.c getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        rg.c cVarC = rg.c.c(inflater);
        Intrinsics.g(cVarC, "inflate(inflater)");
        return cVarC;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        lh.a.g(lh.a.f65699a, getClassTag() + " --> onCreate()", null, 2, null);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        NetworkUtils.A(this);
        if (this.isPayCancel) {
            com.tn.tranpay.event.b bVar = new com.tn.tranpay.event.b(-1);
            if (!com.tn.tranpay.event.a.f40551a.c()) {
                lh.a.e(lh.a.f65699a, "TranPay SDK not initialized, cannot post event. Please call TranPay.configure() in Application.onCreate()", null, 2, null);
                return;
            }
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = com.tn.tranpay.event.b.class.getName();
            Intrinsics.g(name, "T::class.java.name");
            flowEventBus.postEvent(name, bVar, 0L);
            return;
        }
        com.tn.tranpay.event.b bVar2 = new com.tn.tranpay.event.b(0);
        if (!com.tn.tranpay.event.a.f40551a.c()) {
            lh.a.e(lh.a.f65699a, "TranPay SDK not initialized, cannot post event. Please call TranPay.configure() in Application.onCreate()", null, 2, null);
            return;
        }
        FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = com.tn.tranpay.event.b.class.getName();
        Intrinsics.g(name2, "T::class.java.name");
        flowEventBus2.postEvent(name2, bVar2, 0L);
    }

    @Override
    public void onDestroyView() {
        WebView webView = this.mCustomWebView;
        if (webView != null) {
            webView.destroy();
        }
        super.onDestroyView();
    }

    public final boolean u0() {
        WebView webView = this.mCustomWebView;
        if (webView == null || !webView.canGoBack()) {
            return false;
        }
        WebView webView2 = this.mCustomWebView;
        if (webView2 == null) {
            return true;
        }
        webView2.goBack();
        return true;
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public void onDisconnected() {
    }
}
