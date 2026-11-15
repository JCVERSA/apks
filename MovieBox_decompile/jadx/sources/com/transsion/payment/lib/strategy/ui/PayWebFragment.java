package com.transsion.payment.lib.strategy.ui;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Bundle;
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
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.u;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.payment.lib.d;
import com.transsion.payment.lib.strategy.ui.PayWebFragment;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import eh.g;
import hx.e;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import yg.l;
import yg.m;

@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 Q2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001/B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0014\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0015\u0010\u0005J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0019\u0010\u0005J\u001f\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\r\u0010!\u001a\u00020 ¢\u0006\u0004\b!\u0010\"J\u000f\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\bH\u0002¢\u0006\u0004\b&\u0010\u0005J\u0017\u0010'\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0003¢\u0006\u0004\b'\u0010(J\u001f\u0010+\u001a\u00020 2\u0006\u0010)\u001a\u00020#2\u0006\u0010*\u001a\u00020#H\u0002¢\u0006\u0004\b+\u0010,J\u0019\u0010-\u001a\u00020\b2\b\u0010)\u001a\u0004\u0018\u00010#H\u0002¢\u0006\u0004\b-\u0010.R\u0018\u00101\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u00109\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0018\u0010;\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00100R\u0016\u0010>\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010@\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010=R4\u0010F\u001a\"\u0012\u0004\u0012\u00020#\u0012\u0006\u0012\u0004\u0018\u00010B0Aj\u0010\u0012\u0004\u0012\u00020#\u0012\u0006\u0012\u0004\u0018\u00010B`C8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010ER\u0016\u0010H\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010=R\u0016\u0010L\u001a\u00020I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0016\u0010P\u001a\u00020M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010O¨\u0006R"}, d2 = {"Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lxm/b;", "Lyg/m;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "n0", "(Landroid/view/LayoutInflater;)Lxm/b;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "onDestroyView", "onDestroy", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "onDisconnected", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "", "s0", "()Z", "", "getClassTag", "()Ljava/lang/String;", "initViewModel", "r0", "(Landroid/view/View;)V", "url", "from", "m0", "(Ljava/lang/String;Ljava/lang/String;)Z", "t0", "(Ljava/lang/String;)V", "a", "Ljava/lang/String;", "strTitle", "Landroid/view/ViewGroup;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/view/ViewGroup;", "webLoading", "Landroid/webkit/WebView;", "c", "Landroid/webkit/WebView;", "mCustomWebView", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "mUrl", "e", "Z", "isError", "f", "isPayCancel", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "g", "Ljava/util/HashMap;", "timer", "h", "isTriggerFinishPage", "Landroid/webkit/WebChromeClient;", "i", "Landroid/webkit/WebChromeClient;", "mWebChromeClient", "Landroid/webkit/WebViewClient;", "j", "Landroid/webkit/WebViewClient;", "mWebViewClient", CampaignEx.JSON_KEY_AD_K, "LibPayment_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PayWebFragment extends BaseFragment<xm.b> implements m {

    public static final Companion INSTANCE = new Companion(null);

    private static final String f45958l = "https://api.paynicorn.com/sp-gateway/redirect/mock";

    private ViewGroup webLoading;

    private WebView mCustomWebView;

    private String mUrl;

    private boolean isError;

    private boolean isPayCancel;

    private boolean isTriggerFinishPage;

    private String strTitle = "";

    private final HashMap timer = new HashMap();

    private WebChromeClient mWebChromeClient = new b();

    private WebViewClient mWebViewClient = new c();

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PayWebFragment a() {
            return new PayWebFragment();
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
            xm.b mViewBinding;
            AppCompatTextView appCompatTextView;
            Intrinsics.h(view, "view");
            Intrinsics.h(title, "title");
            super.onReceivedTitle(view, title);
            PayWebFragment.this.strTitle = title;
            String str = PayWebFragment.this.strTitle;
            if (str == null || (mViewBinding = PayWebFragment.this.getMViewBinding()) == null || (appCompatTextView = mViewBinding.f75364i) == null) {
                return;
            }
            appCompatTextView.setText(str);
        }
    }

    public static final class c extends WebViewClient {
        c() {
        }

        @Override
        public void onPageFinished(WebView view, String url) {
            Intrinsics.h(view, "view");
            Intrinsics.h(url, "url");
            super.onPageFinished(view, url);
            if (PayWebFragment.this.isError) {
                return;
            }
            PayWebFragment.this.t0(url);
        }

        @Override
        public void onPageStarted(WebView view, String url, Bitmap bitmap) {
            HashMap mapG;
            ProgressBar progressBar;
            Intrinsics.h(view, "view");
            Intrinsics.h(url, "url");
            super.onPageStarted(view, url, bitmap);
            if (PayWebFragment.this.m0(url, "onPageStarted()")) {
                return;
            }
            ViewGroup viewGroup = PayWebFragment.this.webLoading;
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
            }
            xm.b mViewBinding = PayWebFragment.this.getMViewBinding();
            if (mViewBinding != null && (progressBar = mViewBinding.f75361f) != null) {
                progressBar.setVisibility(8);
            }
            if (PayWebFragment.this.timer.get(url) == null) {
                PayWebFragment.this.timer.put(url, Long.valueOf(System.currentTimeMillis()));
            }
            qi.b logViewConfig = PayWebFragment.this.getLogViewConfig();
            if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
                mapG.put("url", url);
            }
            PayWebFragment.this.isError = false;
        }

        @Override
        public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
            Intrinsics.h(view, "view");
            Intrinsics.h(request, "request");
            Intrinsics.h(error, "error");
            super.onReceivedError(view, request, error);
            d.f45901a.b(PayWebFragment.this.getClassTag() + " --> mWebViewClient --> onReceivedError() --> url = " + request.getUrl() + " --> error = " + error);
            PayWebFragment.this.isError = true;
        }

        @Override
        public void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
            Intrinsics.h(view, "view");
            Intrinsics.h(request, "request");
            Intrinsics.h(errorResponse, "errorResponse");
            super.onReceivedHttpError(view, request, errorResponse);
            d.f45901a.b(PayWebFragment.this.getClassTag() + " --> mWebViewClient --> onReceivedHttpError() --> url = " + request.getUrl() + " --> errorResponse = " + errorResponse);
        }

        @Override
        public WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
            Intrinsics.h(view, "view");
            Intrinsics.h(request, "request");
            PayWebFragment payWebFragment = PayWebFragment.this;
            String string = request.getUrl().toString();
            Intrinsics.g(string, "toString(...)");
            payWebFragment.m0(string, "shouldInterceptRequest()");
            return super.shouldInterceptRequest(view, request);
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            Uri url;
            String string;
            Context context;
            if (webResourceRequest != null && (url = webResourceRequest.getUrl()) != null && (string = url.toString()) != null) {
                PayWebFragment payWebFragment = PayWebFragment.this;
                if (StringsKt.W(string, "tel:", false, 2, null)) {
                    d.f45901a.b(payWebFragment.getClassTag() + " --> mWebViewClient --> shouldOverrideUrlLoading() --> 使用Intent来处理拨号请求 --> url = " + string);
                    Intent intent = new Intent("android.intent.action.DIAL");
                    intent.setData(Uri.parse(string));
                    if (webView != null && (context = webView.getContext()) != null) {
                        context.startActivity(intent);
                    }
                    return true;
                }
                if (payWebFragment.m0(string, "shouldOverrideUrlLoading()")) {
                    return true;
                }
            }
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }
    }

    public final String getClassTag() {
        String simpleName = PayWebFragment.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final void initViewModel() {
        String string;
        xm.b mViewBinding;
        AppCompatTextView appCompatTextView;
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString(PayWebActivity.INSTANCE.a())) == null) {
            string = "";
        }
        this.mUrl = string;
        String[] strArrA = u.a(string, "\\/");
        if (strArrA != null) {
            if (strArrA.length == 0) {
                return;
            }
            String str = strArrA[strArrA.length - 1];
            this.strTitle = str;
            if (str == null || (mViewBinding = getMViewBinding()) == null || (appCompatTextView = mViewBinding.f75364i) == null) {
                return;
            }
            appCompatTextView.setText(str);
        }
    }

    public final boolean m0(String url, String from) {
        if (this.isTriggerFinishPage) {
            return true;
        }
        if (!StringsKt.c0(url, f45958l, false, 2, null)) {
            if (!StringsKt.c0(url, "https://cashier-serverweb.paynicorn.com/api/cancelPay", false, 2, null)) {
                return false;
            }
            this.isTriggerFinishPage = true;
            d.f45901a.b(getClassTag() + " --> mWebViewClient --> checkUrl() --> from = " + from + " --> url = " + url);
            this.isPayCancel = true;
            FragmentActivity activity = getActivity();
            if (activity == null) {
                return true;
            }
            activity.finish();
            return true;
        }
        this.isTriggerFinishPage = true;
        d.f45901a.b(getClassTag() + " --> mWebViewClient --> checkUrl() --> from = " + from + " --> url = " + url);
        e eVar = new e(0);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = e.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, eVar, 0L);
        FragmentActivity activity2 = getActivity();
        if (activity2 == null) {
            return true;
        }
        activity2.finish();
        return true;
    }

    public static final void o0(PayWebFragment payWebFragment, View view) {
        WebView webView = payWebFragment.mCustomWebView;
        if (webView != null) {
            webView.reload();
        }
    }

    public static final void p0(PayWebFragment payWebFragment, View view) {
        FragmentActivity activity = payWebFragment.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    public static final void q0(PayWebFragment payWebFragment, View view) {
        FragmentActivity activity = payWebFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    private final void r0(View view) {
        ProgressBar progressBar;
        HashMap mapG;
        HashMap mapG2;
        FrameLayout frameLayout;
        Context context = view.getContext();
        WebView webView = new WebView(context);
        xm.b mViewBinding = getMViewBinding();
        if (mViewBinding != null && (frameLayout = mViewBinding.f75357b) != null) {
            frameLayout.addView(webView, 0, new FrameLayout.LayoutParams(-1, -1));
        }
        webView.setLayerType(2, null);
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(false);
        settings.setSavePassword(false);
        l lVar = l.f76264a;
        Intrinsics.e(context);
        settings.setCacheMode(lVar.j(context) ? -1 : 1);
        settings.setMixedContentMode(0);
        settings.setTextZoom(100);
        settings.setDatabaseEnabled(true);
        settings.setLoadsImagesAutomatically(true);
        settings.setSupportMultipleWindows(false);
        settings.setBlockNetworkImage(false);
        settings.setAllowFileAccess(true);
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
            qi.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG2 = logViewConfig.g()) != null) {
                mapG2.put("url", this.mUrl);
            }
            qi.b logViewConfig2 = getLogViewConfig();
            if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
                mapG.put("loading", "1");
            }
            xm.b mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (progressBar = mViewBinding2.f75361f) != null) {
                progressBar.setVisibility(0);
            }
            d.f45901a.a(getClassTag() + " --> initWeb() --> WebView初始化完成 --> mCustomWebView?.loadUrl(it) 开始加载收银台 -- url = " + this.mUrl);
            WebView webView2 = this.mCustomWebView;
            if (webView2 != null) {
                webView2.loadUrl(str);
            }
        }
    }

    public final void t0(String url) {
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        HashMap mapG4;
        if (this.timer.get(url) != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Long l10 = (Long) this.timer.get(url);
            long jLongValue = jCurrentTimeMillis - (l10 != null ? l10.longValue() : jCurrentTimeMillis);
            d.f45901a.a(getClassTag() + " --> pageFinish() --> mUrl = " + this.mUrl + " -- used time = " + jLongValue);
            qi.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG4 = logViewConfig.g()) != null) {
                mapG4.put("load_h5_time", String.valueOf(jLongValue));
            }
            if (this.timer.get("on_create") != null) {
                Object obj = this.timer.get("on_create");
                Intrinsics.e(obj);
                long jLongValue2 = jCurrentTimeMillis - ((Number) obj).longValue();
                qi.b logViewConfig2 = getLogViewConfig();
                if (logViewConfig2 != null && (mapG3 = logViewConfig2.g()) != null) {
                    mapG3.put("load_time", String.valueOf(jLongValue2));
                }
                this.timer.put("on_create", null);
            }
            qi.b logViewConfig3 = getLogViewConfig();
            if (logViewConfig3 != null && (mapG2 = logViewConfig3.g()) != null) {
                mapG2.put("load_h5_time", String.valueOf(jLongValue));
            }
        }
        qi.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null && (mapG = logViewConfig4.g()) != null) {
            PayWebActivity.Companion aVar = PayWebActivity.INSTANCE;
            String strB = aVar.b();
            Bundle arguments = getArguments();
            mapG.put(strB, arguments != null ? arguments.getString(aVar.b()) : null);
        }
        qi.b logViewConfig5 = getLogViewConfig();
        if (logViewConfig5 != null) {
            logViewConfig5.k(true);
        }
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        g gVar;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        AppCompatImageView appCompatImageView3;
        Intrinsics.h(view, "view");
        xm.b mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            ConstraintLayout toolBar = mViewBinding.f75363h;
            Intrinsics.g(toolBar, "toolBar");
            uf.c.k(toolBar);
        }
        this.timer.put("on_create", Long.valueOf(System.currentTimeMillis()));
        xm.b mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatImageView3 = mViewBinding2.f75360e) != null) {
            appCompatImageView3.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    PayWebFragment.o0(this.f76275a, view2);
                }
            });
        }
        xm.b mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (appCompatImageView2 = mViewBinding3.f75358c) != null) {
            appCompatImageView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    PayWebFragment.p0(this.f76276a, view2);
                }
            });
        }
        xm.b mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (appCompatImageView = mViewBinding4.f75359d) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    PayWebFragment.q0(this.f76277a, view2);
                }
            });
        }
        xm.b mViewBinding5 = getMViewBinding();
        this.webLoading = (mViewBinding5 == null || (gVar = mViewBinding5.f75365j) == null) ? null : gVar.f59700b;
        initViewModel();
        r0(view);
        l.f76264a.l(this);
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public xm.b getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        xm.b bVarC = xm.b.c(inflater);
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("snifferh5page", false, 2, null);
    }

    @Override
    public void onConnected() {
        m.a.a(this);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        d.f45901a.a(getClassTag() + " --> onCreate() --> 聚合支付收银台容器初始化");
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        l.f76264a.m(this);
        if (this.isPayCancel) {
            e eVar = new e(-1);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = e.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, eVar, 0L);
            return;
        }
        e eVar2 = new e(0);
        FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = e.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.postEvent(name2, eVar2, 0L);
    }

    @Override
    public void onDestroyView() {
        WebView webView = this.mCustomWebView;
        if (webView != null) {
            webView.destroy();
        }
        super.onDestroyView();
    }

    @Override
    public void onDisconnected() {
    }

    public final boolean s0() {
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
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        WebView webView;
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        qi.b logViewConfig = getLogViewConfig();
        if ((logViewConfig == null || !logViewConfig.i()) && this.isError && (webView = this.mCustomWebView) != null) {
            webView.reload();
        }
    }
}
