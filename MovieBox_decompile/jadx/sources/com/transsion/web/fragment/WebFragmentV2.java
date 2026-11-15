package com.transsion.web.fragment;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewParent;
import android.webkit.JavascriptInterface;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import com.cloud.hisavana.sdk.bridge.HisavanaAdJsBridge;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.github.lzyzsd.jsbridge.BridgeWebView;
import com.hisavana.mediation.bridge.MediationJsBridge;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.view.NoNetworkBigView;
import com.transsion.athena.jsbridge.AthenaJsInterface;
import com.transsion.lib_web.BaseLibWebFragment;
import com.transsion.web.api.WebConstants;
import com.transsion.web.api.WebJavascriptNavigator;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000Ä\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 s2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001tB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\t2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001e\u0010\u0005J\u000f\u0010\u001f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001f\u0010\u0005J\u000f\u0010 \u001a\u00020\u0006H\u0016¢\u0006\u0004\b \u0010\u0005J\u000f\u0010!\u001a\u00020\u0006H\u0016¢\u0006\u0004\b!\u0010\u0005J\u0017\u0010$\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%JC\u0010-\u001a\u00020\u00062\u0006\u0010'\u001a\u00020&2\u0006\u0010(\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010)\u001a\u0004\u0018\u00010\f2\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020\fH\u0016¢\u0006\u0004\b-\u0010.J\u001f\u00100\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020/2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b0\u00101J\u001f\u00106\u001a\u00020\u00062\u0006\u00103\u001a\u0002022\u0006\u00105\u001a\u000204H\u0016¢\u0006\u0004\b6\u00107J)\u0010:\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020/2\u0006\u0010\r\u001a\u00020\f2\b\u00109\u001a\u0004\u0018\u000108H\u0016¢\u0006\u0004\b:\u0010;J)\u0010@\u001a\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010/2\u0006\u0010=\u001a\u00020<2\u0006\u0010?\u001a\u00020>H\u0016¢\u0006\u0004\b@\u0010AJ5\u0010D\u001a\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010/2\u0006\u0010=\u001a\u00020B2\b\u0010?\u001a\u0004\u0018\u00010\f2\b\u0010C\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\bD\u0010EJ\u0015\u0010H\u001a\b\u0012\u0004\u0012\u00020G0FH\u0016¢\u0006\u0004\bH\u0010IJ+\u0010L\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010J\u001a\u00020B2\b\u0010K\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\bL\u0010MJ\r\u0010N\u001a\u00020\u0017¢\u0006\u0004\bN\u0010OR\u0018\u0010S\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0019\u0010Y\u001a\u0004\u0018\u00010T8\u0006¢\u0006\f\n\u0004\bU\u0010V\u001a\u0004\bW\u0010XR\u0016\u0010\\\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u001d\u0010b\u001a\u0004\u0018\u00010]8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b^\u0010_\u001a\u0004\b`\u0010aR\u001b\u0010g\u001a\u00020c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bd\u0010_\u001a\u0004\be\u0010fR\u0018\u0010k\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010jR\u001a\u0010o\u001a\u00020\u001b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\bl\u0010m\u001a\u0004\bn\u0010\u001dR\u001b\u0010r\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bp\u0010_\u001a\u0004\bq\u0010\u000b¨\u0006u"}, d2 = {"Lcom/transsion/web/fragment/WebFragmentV2;", "Lcom/transsion/lib_web/BaseLibWebFragment;", "Lqx/b;", "Lcom/transsion/baselib/report/g;", "<init>", "()V", "", "k1", "d1", "Landroid/view/View;", "Z0", "()Landroid/view/View;", "", "url", "j1", "(Ljava/lang/String;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "hidden", "onHiddenChanged", "(Z)V", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "onResume", "onPause", "onDestroyView", "onDestroy", "Lcom/github/lzyzsd/jsbridge/BridgeWebView;", "bridgeWebView", "b0", "(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V", "Landroidx/fragment/app/FragmentActivity;", "requireActivity", "tag", CampaignEx.JSON_KEY_TITLE, "", "contentLength", "originalUrl", "a0", "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V", "Landroid/webkit/WebView;", "E0", "(Landroid/webkit/WebView;Ljava/lang/String;)V", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "Landroid/graphics/Bitmap;", "favicon", "F0", "(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V", "Landroid/webkit/WebResourceRequest;", "request", "Landroid/webkit/WebResourceError;", "error", "H0", "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V", "", "failingUrl", "G0", "(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V", "", "Lcom/transsion/lib_web/zip/loader/c;", "e0", "()Ljava/util/List;", "errorCode", "errorMsg", "O0", "(Ljava/lang/String;ILjava/lang/String;)V", "h1", "()Z", "Lcom/transsion/web/share/k;", "o", "Lcom/transsion/web/share/k;", "mWebShareUtil", "Lqx/a;", TtmlNode.TAG_P, "Lqx/a;", "getMLoginApi", "()Lqx/a;", "mLoginApi", CampaignEx.JSON_KEY_AD_Q, "Z", "isError", "Lck/a;", CampaignEx.JSON_KEY_AD_R, "Lkotlin/Lazy;", "getIDownloadApiProvider", "()Lck/a;", "iDownloadApiProvider", "Lkw/a;", "s", "c1", "()Lkw/a;", "iWebApi", "Lcom/hisavana/mediation/bridge/MediationJsBridge;", "t", "Lcom/hisavana/mediation/bridge/MediationJsBridge;", "mediationJsBridge", TmcStartParams.KEY_URL_SHORT, "Lqi/b;", "getLogViewConfig", "logViewConfig", "v", "getNoNetworkView", "noNetworkView", "w", "a", "Web_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class WebFragmentV2 extends BaseLibWebFragment implements qx.b, com.transsion.baselib.report.g {

    public static final Companion INSTANCE = new Companion(null);

    private static final String f55891x = WebFragmentV2.class.getSimpleName();

    private com.transsion.web.share.k mWebShareUtil;

    private boolean isError;

    private MediationJsBridge mediationJsBridge;

    private final qx.a mLoginApi = (qx.a) TheRouter.d(qx.a.class, new Object[0]);

    private final Lazy iDownloadApiProvider = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return WebFragmentV2.e1();
        }
    });

    private final Lazy iWebApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return WebFragmentV2.f1();
        }
    });

    private final qi.b logViewConfig = newLogViewConfig();

    private final Lazy noNetworkView = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return WebFragmentV2.g1(this.f55906a);
        }
    });

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return WebFragmentV2.f55891x;
        }

        public final WebFragmentV2 b() {
            return new WebFragmentV2();
        }

        private Companion() {
        }
    }

    public static final class b extends AthenaJsInterface {
        b(Context context) {
            super(context);
        }

        public static final void b() {
        }

        @Override
        @JavascriptInterface
        public void track(int i10, String str, String str2) {
            super.track(i10, str, str2);
            WebFragmentV2.this.d0().getRoot().post(new Runnable() {
                @Override
                public final void run() {
                    WebFragmentV2.b.b();
                }
            });
        }
    }

    public static final class c implements com.transsion.lib_web.zip.loader.c {

        final MediationJsBridge f55905b;

        c(MediationJsBridge mediationJsBridge) {
            this.f55905b = mediationJsBridge;
        }

        @Override
        public WebResourceResponse a(WebResourceRequest webResourceRequest) {
            Uri url;
            String string;
            WebResourceResponse webResourceResponseShouldInterceptRequest;
            if (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null || (string = url.toString()) == null || (webResourceResponseShouldInterceptRequest = this.f55905b.shouldInterceptRequest(string)) == null) {
                return null;
            }
            return webResourceResponseShouldInterceptRequest;
        }
    }

    private final View Z0() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        NoNetworkBigView noNetworkBigView = new NoNetworkBigView(contextRequireContext, false);
        noNetworkBigView.retry(new Function0() {
            @Override
            public final Object invoke() {
                return WebFragmentV2.a1(this.f55908a);
            }
        });
        noNetworkBigView.goToSetting(new Function0() {
            @Override
            public final Object invoke() {
                return WebFragmentV2.b1();
            }
        });
        return noNetworkBigView;
    }

    public static final Unit a1(WebFragmentV2 webFragmentV2) {
        webFragmentV2.k0().reload();
        return Unit.f64096a;
    }

    public static final Unit b1() {
        return Unit.f64096a;
    }

    public final kw.a c1() {
        return (kw.a) this.iWebApi.getValue();
    }

    private final void d1() {
        ViewParent parent = d0().f71264i.getParent();
        Intrinsics.f(parent, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout");
        ConstraintLayout constraintLayout = (ConstraintLayout) parent;
        if (getNoNetworkView().getParent() != null) {
            constraintLayout.removeView(getNoNetworkView());
        }
    }

    public static final ck.a e1() {
        return (ck.a) TheRouter.d(ck.a.class, new Object[0]);
    }

    public static final kw.a f1() {
        return (kw.a) kg.c.f63982e.a().h(kw.a.class);
    }

    public static final View g1(WebFragmentV2 webFragmentV2) {
        return webFragmentV2.Z0();
    }

    private final View getNoNetworkView() {
        return (View) this.noNetworkView.getValue();
    }

    public static final Unit i1(WebFragmentV2 webFragmentV2, String str, String resultCode) {
        Intrinsics.h(resultCode, "resultCode");
        if (!TextUtils.isEmpty(str)) {
            webFragmentV2.k0().sendResponse(resultCode, str);
        }
        return Unit.f64096a;
    }

    private final void j1(String url) {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = f55891x;
        Intrinsics.g(TAG, "TAG");
        c0922a.c(TAG, "mUrl:" + url + " onPageFinished  target:" + j0(), true);
        HashMap mapG = getLogViewConfig().g();
        Bundle arguments = getArguments();
        mapG.put(WebConstants.PAGE_FROM, arguments != null ? arguments.getString(WebConstants.PAGE_FROM) : null);
        getLogViewConfig().k(getLoadInfoStats().getIsLoadSuccess());
        getLogViewConfig().g().put("load_time", String.valueOf(getLoadInfoStats().getLoad_time()));
        getLogViewConfig().g().put("error_code", String.valueOf(getLoadInfoStats().getError_code()));
        getLogViewConfig().g().put(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, getLoadInfoStats().getError_msg());
    }

    private final void k1() {
        if (getNoNetworkView().getParent() == null) {
            ViewParent parent = d0().f71264i.getParent();
            Intrinsics.f(parent, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout");
            ((ConstraintLayout) parent).addView(getNoNetworkView(), d0().f71264i.getLayoutParams());
        }
    }

    @Override
    public void E0(WebView view, String url) {
        Intrinsics.h(view, "view");
        Intrinsics.h(url, "url");
        super.E0(view, url);
        j1(url);
    }

    @Override
    public void F0(WebView view, String url, Bitmap favicon) {
        Intrinsics.h(view, "view");
        Intrinsics.h(url, "url");
        super.F0(view, url, favicon);
        getLogViewConfig().g().put("url", url);
        this.isError = false;
    }

    @Override
    public void G0(WebView view, int request, String error, String failingUrl) {
        super.G0(view, request, error, failingUrl);
        this.isError = true;
    }

    @Override
    public void H0(WebView view, WebResourceRequest request, WebResourceError error) {
        Intrinsics.h(request, "request");
        Intrinsics.h(error, "error");
        super.H0(view, request, error);
        this.isError = true;
    }

    @Override
    public void O0(String url, int errorCode, String errorMsg) {
        super.O0(url, errorCode, errorMsg);
        if (getLogViewConfig().i() || yg.l.f76264a.e()) {
            return;
        }
        k1();
    }

    @Override
    public void a0(FragmentActivity requireActivity, String tag, String url, String title, long contentLength, String originalUrl) {
        Intrinsics.h(requireActivity, "requireActivity");
        Intrinsics.h(tag, "tag");
        Intrinsics.h(originalUrl, "originalUrl");
    }

    @Override
    public void b0(BridgeWebView bridgeWebView) {
        Intrinsics.h(bridgeWebView, "bridgeWebView");
        bridgeWebView.addJavascriptInterface(new b(getContext()), "AthenaNative");
        bridgeWebView.addJavascriptInterface(new WebJavascriptNavigator(), "yy_navigator");
        bridgeWebView.addJavascriptInterface(new WebFragmentV2$addJsInterface$2(this, k0()), "WebViewJavascriptBridge");
        MediationJsBridge mediationJsBridge = new MediationJsBridge(bridgeWebView);
        this.mediationJsBridge = mediationJsBridge;
        bridgeWebView.addJavascriptInterface(mediationJsBridge, HisavanaAdJsBridge.INTERFACE_NAME);
    }

    @Override
    public List e0() {
        List listE;
        MediationJsBridge mediationJsBridge = this.mediationJsBridge;
        return (mediationJsBridge == null || (listE = CollectionsKt.e(new c(mediationJsBridge))) == null) ? CollectionsKt.l() : listE;
    }

    @Override
    public qi.b getLogViewConfig() {
        return this.logViewConfig;
    }

    public final boolean h1() {
        if (!k0().canGoBack()) {
            return false;
        }
        k0().goBack();
        return true;
    }

    public qi.b newLogViewConfig() {
        return new qi.b("snifferh5page", false, 2, null);
    }

    @Override
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        if (getLogViewConfig().i() || !this.isError) {
            return;
        }
        k0().reload();
        d1();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        try {
            super.onCreate(savedInstanceState);
        } catch (Throwable unused) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
        getLogViewConfig().g().put("original_url", j0());
        Bundle arguments = getArguments();
        getLogViewConfig().g().put(WebConstants.TAB_CODE, arguments != null ? arguments.getString(WebConstants.TAB_CODE) : null);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        qx.a aVar = this.mLoginApi;
        if (aVar != null) {
            aVar.j(this);
        }
    }

    @Override
    public void onDestroyView() {
        try {
            Result.Companion companion = Result.INSTANCE;
            super.onDestroyView();
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                com.transsion.baselib.report.g.a.b(this);
            } else {
                com.transsion.baselib.report.g.a.c(this);
            }
        }
    }

    @Override
    public void onLogin(UserInfo userInfo) {
        qx.b.a.a(this, userInfo);
    }

    @Override
    public void onLogout() {
        qx.b.a.b(this);
    }

    @Override
    public void onPause() {
        super.onPause();
        if (isHidden()) {
            return;
        }
        HashMap mapG = getLogViewConfig().g();
        com.transsion.lib_web.zip.loader.d dVarI0 = getMWebViewLoaderManager();
        mapG.put("is_from_cache", String.valueOf(dVarI0 != null ? Boolean.valueOf(dVarI0.b()) : null));
        getLogViewConfig().g().put("dom", com.blankj.utilcode.util.o.j(getLoadInfoStats().getDom_performance()));
        com.transsion.baselib.report.g.a.b(this);
    }

    @Override
    public void onResume() {
        super.onResume();
        com.transsion.baselib.report.g.a.c(this);
    }

    @Override
    public void onUpdateUserInfo(UserInfo userInfo) {
        qx.b.a.c(this, userInfo);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        try {
            super.onViewCreated(view, savedInstanceState);
        } catch (Throwable unused) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
        this.mWebShareUtil = new com.transsion.web.share.k(this, new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return WebFragmentV2.i1(this.f55907a, (String) obj, (String) obj2);
            }
        });
        qx.a aVar = this.mLoginApi;
        if (aVar != null) {
            aVar.e(this);
        }
    }
}
