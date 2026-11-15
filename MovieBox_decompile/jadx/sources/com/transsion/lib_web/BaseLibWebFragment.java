package com.transsion.lib_web;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.u;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.a0;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.github.lzyzsd.jsbridge.BridgeWebView;
import com.gyf.immersionbar.BarHide;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.lib_web.BaseLibWebFragment;
import com.transsion.lib_web.domain.DomPerformance;
import com.transsion.lib_web.domain.LoadInfoStats;
import com.transsion.lib_web.domain.LoadStatus;
import com.transsion.lib_web.download_render.FileDownloadTaskManager;
import com.transsion.lib_web.download_render.utils.RenderSource;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.json.JSONObject;
import pl.g;
import pl.h;
import yg.l;
import yg.m;

@Metadata(d1 = {"\u0000Ü\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\u00020\u00012\u00020\u0002:\u0001yB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0003¢\u0006\u0004\b\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u0019\u0010\u000f\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0011\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u0011\u0010\u0010J\u0019\u0010\u0012\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u0012\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u0013\u0010\u0010J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0017\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0003¢\u0006\u0004\b\u0017\u0010\u0010J\u0017\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ!\u0010\u001f\u001a\u00020\u00052\b\u0010\u001c\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0019\u0010#\u001a\u00020\u00052\b\u0010\"\u001a\u0004\u0018\u00010!H\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0005H\u0002¢\u0006\u0004\b%\u0010\u0004J\u0019\u0010'\u001a\u00020\b2\b\u0010&\u001a\u0004\u0018\u00010\u0018H\u0002¢\u0006\u0004\b'\u0010(J\r\u0010)\u001a\u00020\u0018¢\u0006\u0004\b)\u0010*J\r\u0010+\u001a\u00020\r¢\u0006\u0004\b+\u0010,J\u0019\u0010/\u001a\u00020\u00052\b\u0010.\u001a\u0004\u0018\u00010-H\u0016¢\u0006\u0004\b/\u00100J-\u00106\u001a\u0004\u0018\u0001052\u0006\u00102\u001a\u0002012\b\u00104\u001a\u0004\u0018\u0001032\b\u0010.\u001a\u0004\u0018\u00010-H\u0016¢\u0006\u0004\b6\u00107J!\u00109\u001a\u00020\u00052\u0006\u00108\u001a\u0002052\b\u0010.\u001a\u0004\u0018\u00010-H\u0016¢\u0006\u0004\b9\u0010:J\u000f\u0010;\u001a\u00020\u0005H\u0016¢\u0006\u0004\b;\u0010\u0004J\u000f\u0010<\u001a\u00020\u0005H\u0016¢\u0006\u0004\b<\u0010\u0004J\u001f\u0010A\u001a\u00020\u00052\u0006\u0010>\u001a\u00020=2\u0006\u0010@\u001a\u00020?H\u0016¢\u0006\u0004\bA\u0010BJ\u000f\u0010C\u001a\u00020\u0005H\u0016¢\u0006\u0004\bC\u0010\u0004J\u0017\u0010E\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\rH&¢\u0006\u0004\bE\u0010\u0010JC\u0010M\u001a\u00020\u00052\u0006\u0010G\u001a\u00020F2\u0006\u0010H\u001a\u00020\u00182\b\u0010&\u001a\u0004\u0018\u00010\u00182\b\u0010I\u001a\u0004\u0018\u00010\u00182\u0006\u0010K\u001a\u00020J2\u0006\u0010L\u001a\u00020\u0018H\u0016¢\u0006\u0004\bM\u0010NJ\u000f\u0010O\u001a\u00020\u0018H\u0016¢\u0006\u0004\bO\u0010*J)\u0010R\u001a\u00020\u00052\u0006\u00108\u001a\u00020!2\u0006\u0010&\u001a\u00020\u00182\b\u0010Q\u001a\u0004\u0018\u00010PH\u0016¢\u0006\u0004\bR\u0010SJ\u001f\u0010T\u001a\u00020\u00052\u0006\u00108\u001a\u00020!2\u0006\u0010&\u001a\u00020\u0018H\u0016¢\u0006\u0004\bT\u0010UJ'\u0010Z\u001a\u00020\u00052\u0006\u00108\u001a\u00020!2\u0006\u0010W\u001a\u00020V2\u0006\u0010Y\u001a\u00020XH\u0016¢\u0006\u0004\bZ\u0010[J5\u0010^\u001a\u00020\u00052\b\u00108\u001a\u0004\u0018\u00010!2\u0006\u0010W\u001a\u00020\u001d2\b\u0010\\\u001a\u0004\u0018\u00010\u00182\b\u0010]\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b^\u0010_J)\u0010a\u001a\u00020\u00052\b\u00108\u001a\u0004\u0018\u00010!2\u0006\u0010W\u001a\u00020V2\u0006\u0010\\\u001a\u00020`H\u0016¢\u0006\u0004\ba\u0010bJ\u001f\u0010c\u001a\u00020\u00052\u0006\u00108\u001a\u00020!2\u0006\u0010I\u001a\u00020\u0018H\u0016¢\u0006\u0004\bc\u0010UJ\u001f\u0010e\u001a\u00020\u00052\u0006\u00108\u001a\u00020!2\u0006\u0010d\u001a\u00020\u001dH\u0016¢\u0006\u0004\be\u0010fJ#\u0010i\u001a\u00020\u00052\b\u00108\u001a\u0004\u0018\u0001052\b\u0010h\u001a\u0004\u0018\u00010gH\u0016¢\u0006\u0004\bi\u0010jJ\u000f\u0010k\u001a\u00020\u0005H\u0016¢\u0006\u0004\bk\u0010\u0004J!\u0010m\u001a\u00020\u00052\b\u0010&\u001a\u0004\u0018\u00010\u00182\u0006\u0010l\u001a\u00020JH\u0016¢\u0006\u0004\bm\u0010nJ+\u0010o\u001a\u00020\u00052\b\u0010&\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001e\u001a\u00020\u001d2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\bo\u0010pJ\u0015\u0010s\u001a\b\u0012\u0004\u0012\u00020r0qH\u0016¢\u0006\u0004\bs\u0010tJ\u000f\u0010u\u001a\u00020\u0005H\u0016¢\u0006\u0004\bu\u0010\u0004J\u0017\u0010w\u001a\u00020\u00052\u0006\u0010v\u001a\u00020\bH\u0016¢\u0006\u0004\bw\u0010\u000bR\u0018\u0010{\u001a\u0004\u0018\u00010x8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010zR&\u0010\u0083\u0001\u001a\u00020|8\u0006@\u0006X\u0086.¢\u0006\u0015\n\u0004\b}\u0010~\u001a\u0005\b\u007f\u0010\u0080\u0001\"\u0006\b\u0081\u0001\u0010\u0082\u0001R,\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0085\u0001\u0010\u0086\u0001\u001a\u0006\b\u0087\u0001\u0010\u0088\u0001\"\u0006\b\u0089\u0001\u0010\u008a\u0001R)\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0006\b\u008c\u0001\u0010\u008d\u0001\u001a\u0005\b\u008e\u0001\u0010*\"\u0005\b\u008f\u0001\u0010\u001bR*\u0010\u0098\u0001\u001a\u00030\u0091\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0092\u0001\u0010\u0093\u0001\u001a\u0006\b\u0094\u0001\u0010\u0095\u0001\"\u0006\b\u0096\u0001\u0010\u0097\u0001R\u001d\u0010\u009e\u0001\u001a\u00030\u0099\u00018\u0006¢\u0006\u0010\n\u0006\b\u009a\u0001\u0010\u009b\u0001\u001a\u0006\b\u009c\u0001\u0010\u009d\u0001R\u001b\u0010¡\u0001\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009f\u0001\u0010 \u0001R\u0019\u0010¤\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¢\u0001\u0010£\u0001R\u001b\u0010§\u0001\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010¦\u0001R\u0019\u0010©\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¨\u0001\u0010£\u0001R'\u0010®\u0001\u001a\u00020\r8\u0006@\u0006X\u0086.¢\u0006\u0016\n\u0006\bª\u0001\u0010«\u0001\u001a\u0005\b¬\u0001\u0010,\"\u0005\b\u00ad\u0001\u0010\u0010R)\u0010µ\u0001\u001a\u00020J8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¯\u0001\u0010°\u0001\u001a\u0006\b±\u0001\u0010²\u0001\"\u0006\b³\u0001\u0010´\u0001R\u001d\u0010»\u0001\u001a\u00030¶\u00018\u0006¢\u0006\u0010\n\u0006\b·\u0001\u0010¸\u0001\u001a\u0006\b¹\u0001\u0010º\u0001R\u0018\u0010½\u0001\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¼\u0001\u0010\u0013¨\u0006¾\u0001"}, d2 = {"Lcom/transsion/lib_web/BaseLibWebFragment;", "Landroidx/fragment/app/Fragment;", "Lyg/m;", "<init>", "()V", "", "initListener", "n0", "", "isHideToolBar", "m0", "(Z)V", "t0", "Lcom/github/lzyzsd/jsbridge/BridgeWebView;", "webView", "r0", "(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V", "u0", "K0", "Z", "v0", "z0", "()Z", "s0", "", "string", "c0", "(Ljava/lang/String;)V", "errorMsg", "", "errorCode", "l0", "(Ljava/lang/String;I)V", "Landroid/webkit/WebView;", "view1", "w0", "(Landroid/webkit/WebView;)V", "y0", "url", "x0", "(Ljava/lang/String;)Z", "getClassTag", "()Ljava/lang/String;", "k0", "()Lcom/github/lzyzsd/jsbridge/BridgeWebView;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "onDestroy", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "onDisconnected", "bridgeWebView", "b0", "Landroidx/fragment/app/FragmentActivity;", "requireActivity", "tag", CampaignEx.JSON_KEY_TITLE, "", "contentLength", "originalUrl", "a0", "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V", "j0", "Landroid/graphics/Bitmap;", "favicon", "F0", "(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V", "E0", "(Landroid/webkit/WebView;Ljava/lang/String;)V", "Landroid/webkit/WebResourceRequest;", "request", "Landroid/webkit/WebResourceResponse;", "errorResponse", "I0", "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V", "error", "failingUrl", "G0", "(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V", "Landroid/webkit/WebResourceError;", "H0", "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V", "C0", "newProgress", "B0", "(Landroid/webkit/WebView;I)V", "Landroid/webkit/WebChromeClient$CustomViewCallback;", "callback", "D0", "(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V", "A0", "loadTime", "P0", "(Ljava/lang/String;J)V", "O0", "(Ljava/lang/String;ILjava/lang/String;)V", "", "Lcom/transsion/lib_web/zip/loader/c;", "e0", "()Ljava/util/List;", "onResume", "hidden", "onHiddenChanged", "Landroid/widget/FrameLayout;", "a", "Landroid/widget/FrameLayout;", "fullscreenContainer", "Lrl/a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lrl/a;", "d0", "()Lrl/a;", "J0", "(Lrl/a;)V", "binding", "Lcom/transsion/lib_web/zip/loader/d;", "c", "Lcom/transsion/lib_web/zip/loader/d;", "i0", "()Lcom/transsion/lib_web/zip/loader/d;", "setMWebViewLoaderManager", "(Lcom/transsion/lib_web/zip/loader/d;)V", "mWebViewLoaderManager", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "getStrTitle", "N0", "strTitle", "Lcom/transsion/lib_web/domain/LoadStatus;", "e", "Lcom/transsion/lib_web/domain/LoadStatus;", "getCurrentState", "()Lcom/transsion/lib_web/domain/LoadStatus;", "setCurrentState", "(Lcom/transsion/lib_web/domain/LoadStatus;)V", "currentState", "Lcom/transsion/lib_web/LoadUrlData;", "f", "Lcom/transsion/lib_web/LoadUrlData;", "g0", "()Lcom/transsion/lib_web/LoadUrlData;", "loadUrlData", "g", "Landroid/view/View;", "webCustomView", "h", "I", "originalSystemUiVisibility", "i", "Landroid/webkit/WebChromeClient$CustomViewCallback;", "customViewCallback", "j", "originalOrientation", CampaignEx.JSON_KEY_AD_K, "Lcom/github/lzyzsd/jsbridge/BridgeWebView;", "h0", "M0", "mWebView", "l", "J", "getFirstLoadStartTime", "()J", "setFirstLoadStartTime", "(J)V", "firstLoadStartTime", "Lcom/transsion/lib_web/domain/LoadInfoStats;", "m", "Lcom/transsion/lib_web/domain/LoadInfoStats;", "f0", "()Lcom/transsion/lib_web/domain/LoadInfoStats;", "loadInfoStats", "n", "isAlreadyLoadUrl", "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class BaseLibWebFragment extends Fragment implements m {

    private FrameLayout fullscreenContainer;

    public rl.a binding;

    private com.transsion.lib_web.zip.loader.d mWebViewLoaderManager;

    private View webCustomView;

    private int originalSystemUiVisibility;

    private WebChromeClient.CustomViewCallback customViewCallback;

    public BridgeWebView mWebView;

    private long firstLoadStartTime;

    private boolean isAlreadyLoadUrl;

    private String strTitle = "";

    private LoadStatus currentState = LoadStatus.INIT;

    private final LoadUrlData loadUrlData = new LoadUrlData(null, RenderSource.INNER, 1, null);

    private int originalOrientation = -1;

    private final LoadInfoStats loadInfoStats = new LoadInfoStats();

    public final class a {
        public a() {
        }

        @JavascriptInterface
        public final void reportLoadError(String errorMsg) {
            Intrinsics.h(errorMsg, "errorMsg");
            h.f69205a.c("reportLoadError: " + errorMsg);
            DomPerformance domPerformance = new DomPerformance();
            domPerformance.setErrorMsg(errorMsg);
            BaseLibWebFragment.this.getLoadInfoStats().setDom_performance(domPerformance);
        }

        @JavascriptInterface
        public final void reportLoadStats(String json) {
            Intrinsics.h(json, "json");
            h.f69205a.c("reportLoadStats: " + json);
            com.transsion.lib_web.download_render.utils.a.f44818a.r(BaseLibWebFragment.this.getLoadUrlData().getOriginUrl());
            try {
                DomPerformance domPerformance = new DomPerformance();
                JSONObject jSONObject = new JSONObject(json);
                domPerformance.setDnsLookup(Long.valueOf(jSONObject.optLong("dnsLookup")));
                domPerformance.setTcpConnect(Long.valueOf(jSONObject.optLong("tcpConnect")));
                domPerformance.setRequestTime(Long.valueOf(jSONObject.optLong("requestTime")));
                domPerformance.setResponseTime(Long.valueOf(jSONObject.optLong("responseTime")));
                domPerformance.setDomLoading(Long.valueOf(jSONObject.optLong("domLoading")));
                domPerformance.setDomInteractive(Long.valueOf(jSONObject.optLong("domInteractive")));
                domPerformance.setDomComplete(Long.valueOf(jSONObject.optLong("domComplete")));
                domPerformance.setLoadEventTime(Long.valueOf(jSONObject.optLong("loadEventTime")));
                domPerformance.setTotalLoadTime(Long.valueOf(jSONObject.optLong("totalLoadTime")));
                domPerformance.setReadyState(jSONObject.optString("readyState"));
                domPerformance.setSuccess(Boolean.valueOf(jSONObject.optBoolean(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS)));
                BaseLibWebFragment.this.getLoadInfoStats().setDom_performance(domPerformance);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public static final class b extends u {

        final BridgeWebView f44768a;

        final BaseLibWebFragment f44769b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(BridgeWebView bridgeWebView, BaseLibWebFragment baseLibWebFragment) {
            super(true);
            this.f44768a = bridgeWebView;
            this.f44769b = baseLibWebFragment;
        }

        @Override
        public void handleOnBackPressed() {
            BridgeWebView bridgeWebView = this.f44768a;
            if (bridgeWebView == null || !bridgeWebView.canGoBack()) {
                this.f44769b.requireActivity().finish();
            } else {
                this.f44769b.h0().goBack();
            }
        }
    }

    public static final class c implements View.OnTouchListener {

        private float f44770a;

        private float f44771b;

        private boolean f44772c;

        private final int f44773d;

        c(BaseLibWebFragment baseLibWebFragment) {
            this.f44773d = ViewConfiguration.get(baseLibWebFragment.k0().getContext()).getScaledTouchSlop();
        }

        /* JADX WARN: Code duplicated, block: B:20:0x005b  */
        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            Intrinsics.h(v10, "v");
            Intrinsics.h(event, "event");
            int action = event.getAction();
            if (action == 0) {
                this.f44770a = event.getX();
                this.f44771b = event.getY();
                v10.getParent().requestDisallowInterceptTouchEvent(true);
                this.f44772c = false;
            } else if (action == 1) {
                v10.getParent().requestDisallowInterceptTouchEvent(false);
                this.f44772c = false;
            } else if (action == 2) {
                float fAbs = Math.abs(event.getX() - this.f44770a);
                float fAbs2 = Math.abs(event.getY() - this.f44771b);
                if (!this.f44772c) {
                    int i10 = this.f44773d;
                    if (fAbs > i10 || fAbs2 > i10) {
                        this.f44772c = true;
                        if (fAbs > fAbs2 * 1.2f) {
                            v10.getParent().requestDisallowInterceptTouchEvent(false);
                        } else {
                            v10.getParent().requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
            } else if (action == 3) {
                v10.getParent().requestDisallowInterceptTouchEvent(false);
                this.f44772c = false;
            }
            return false;
        }
    }

    public static final class d extends WebChromeClient {
        d() {
        }

        @Override
        public void onHideCustomView() {
            super.onHideCustomView();
            BaseLibWebFragment.this.A0();
        }

        @Override
        public void onProgressChanged(WebView view, int i10) {
            Intrinsics.h(view, "view");
            super.onProgressChanged(view, i10);
            BaseLibWebFragment.this.B0(view, i10);
        }

        @Override
        public void onReceivedTitle(WebView view, String title) {
            Intrinsics.h(view, "view");
            Intrinsics.h(title, "title");
            super.onReceivedTitle(view, title);
            BaseLibWebFragment.this.N0(title);
            BaseLibWebFragment.this.C0(view, title);
        }

        @Override
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            super.onShowCustomView(view, customViewCallback);
            BaseLibWebFragment.this.D0(view, customViewCallback);
        }
    }

    public static final class e extends pl.f {
        e(BridgeWebView bridgeWebView) {
            super(bridgeWebView);
        }

        @Override
        @JavascriptInterface
        public void close() {
            super.close();
            FragmentActivity activity = BaseLibWebFragment.this.getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
    }

    private final void K0(BridgeWebView webView) {
        if (webView != null) {
            webView.setDownloadListener(new DownloadListener() {
                @Override
                public final void onDownloadStart(String str, String str2, String str3, String str4, long j10) {
                    BaseLibWebFragment.L0(this.f69198a, str, str2, str3, str4, j10);
                }
            });
        }
    }

    public static final void L0(BaseLibWebFragment baseLibWebFragment, String str, String str2, String str3, String str4, long j10) {
        if (baseLibWebFragment.z0()) {
            return;
        }
        Intrinsics.e(str);
        if (!StringsKt.G(str, ".apk", false, 2, null) && !StringsKt.G(str, ".APK", false, 2, null) && !TextUtils.equals(str4, "application/vnd.android.package-archive")) {
            FragmentActivity fragmentActivityRequireActivity = baseLibWebFragment.requireActivity();
            Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
            String str5 = baseLibWebFragment.strTitle;
            String strJ0 = baseLibWebFragment.j0();
            if (strJ0 == null) {
                strJ0 = "";
            }
            baseLibWebFragment.a0(fragmentActivityRequireActivity, "web_load", str, str5, j10, strJ0);
            return;
        }
        h.f69205a.e("拦截APK下载 --> mimetype = " + str4 + " --> url = " + str + " --> contentLength = " + j10 + " --> contentDisposition = " + str3 + " --> userAgent = " + str2);
    }

    private final void Z(BridgeWebView webView) {
        requireActivity().getOnBackPressedDispatcher().i(this, new b(webView, this));
    }

    private final void c0(String string) {
        this.currentState = LoadStatus.SUCCESS;
        P0(string, System.currentTimeMillis() - this.firstLoadStartTime);
    }

    private final void initListener() {
        d0().f71257b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                BaseLibWebFragment.o0(this.f69199a, view);
            }
        });
        d0().f71258c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                BaseLibWebFragment.p0(this.f69200a, view);
            }
        });
        d0().f71259d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                BaseLibWebFragment.q0(this.f69201a, view);
            }
        });
    }

    private final void l0(String errorMsg, int errorCode) {
        this.currentState = LoadStatus.FAILED;
        O0(j0(), errorCode, errorMsg);
    }

    private final void m0(boolean isHideToolBar) {
        d0();
        if (isHideToolBar) {
            d0().f71260e.setVisibility(8);
        } else {
            d0().f71260e.setVisibility(0);
        }
    }

    private final void n0() {
        Bundle arguments = getArguments();
        boolean z10 = arguments != null ? arguments.getBoolean(WebConstants.FIELD_STATUS_BAR_HIDDEN, false) : false;
        Bundle arguments2 = getArguments();
        boolean z11 = arguments2 != null ? arguments2.getBoolean(WebConstants.FIELD_TOOL_BAR_HIDDEN, false) : false;
        Bundle arguments3 = getArguments();
        int i10 = arguments3 != null ? arguments3.getInt(WebConstants.BOTTOM_MARGIN, 0) : 0;
        Bundle arguments4 = getArguments();
        boolean z12 = arguments4 != null ? arguments4.getBoolean("nested_scroll_intercept", false) : false;
        rl.a aVarD0 = d0();
        aVarD0.getRoot().setFitsSystemWindows(!z10);
        if (i10 > 0) {
            ViewGroup.LayoutParams layoutParams = aVarD0.f71264i.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ((ViewGroup.MarginLayoutParams) bVar).bottomMargin = i10;
            aVarD0.f71264i.setLayoutParams(bVar);
        }
        if (z12) {
            k0().setOnTouchListener(new c(this));
        }
        boolean zA = pl.e.f69202a.a(j0());
        m0(z11 || zA);
        h.f69205a.c(getClassTag() + " --> initLayout() --> statusBarHide = " + z10 + " --> isFieldToolBarHidden = " + z11 + " -- bottomMargin = " + i10 + " --> hideNavigationBar = " + zA);
        Bundle arguments5 = getArguments();
        if (arguments5 != null ? arguments5.getBoolean(WebConstants.NEED_HEADER, false) : false) {
            View view = d0().f71262g;
            view.getLayoutParams().height = a0.a(80.0f);
            Bundle arguments6 = getArguments();
            int i11 = arguments6 != null ? arguments6.getInt(WebConstants.HEADER_BG) : 0;
            if (i11 != 0) {
                view.setBackgroundResource(i11);
            }
            view.setVisibility(0);
        }
    }

    public static final void o0(BaseLibWebFragment baseLibWebFragment, View view) {
        OnBackPressedDispatcher onBackPressedDispatcher;
        FragmentActivity activity = baseLibWebFragment.getActivity();
        if (activity == null || (onBackPressedDispatcher = activity.getOnBackPressedDispatcher()) == null) {
            return;
        }
        onBackPressedDispatcher.l();
    }

    public static final void p0(BaseLibWebFragment baseLibWebFragment, View view) {
        FragmentActivity activity = baseLibWebFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    public static final void q0(BaseLibWebFragment baseLibWebFragment, View view) {
        baseLibWebFragment.loadInfoStats.setReload(true);
        baseLibWebFragment.k0().reload();
    }

    private final void r0(BridgeWebView webView) {
        if (webView != null) {
            webView.setWebChromeClient(new d());
        }
    }

    private final void s0(BridgeWebView webView) {
        if (webView != null) {
            webView.addJavascriptInterface(new a(), "MBPreDownloadAndroidInterface");
        }
    }

    private final void t0() {
        s0(k0());
        r0(k0());
        u0(k0());
        K0(k0());
        b0(h0());
        Z(k0());
        v0();
        k0().addJavascriptInterface(new e(k0()), "MbOkSpinJsBridge");
        FileDownloadTaskManager.f44780a.h().a(j0());
        this.loadUrlData.setOriginUrl(j0());
        if (x0(j0())) {
            h.f69205a.e("initWebView() --> 懒加载，不执行加载数据操作");
        } else {
            y0();
        }
    }

    private final void u0(BridgeWebView webView) {
        if (webView != null) {
            webView.setWebViewClient(new f(webView));
        }
    }

    private final void v0() {
        Context context = getContext();
        if (context != null) {
            List listQ = CollectionsKt.q(new sl.b(context, this.loadUrlData), new sl.d(context, this.loadUrlData), new sl.a(context, this.loadUrlData), new sl.c(context, this.loadUrlData));
            listQ.addAll(e0());
            h.f69205a.a("DR_", "<initWebViewFileCacheLoader> loaders.size:" + listQ.size());
            this.mWebViewLoaderManager = new com.transsion.lib_web.zip.loader.d(context, listQ);
        }
    }

    private final void w0(WebView view1) {
        if (view1 != null) {
            view1.evaluateJavascript("\n              (function() {\n                window.addEventListener('load',\n                function() {\n                    try {\n                        const intervalId = setInterval(function() {\n                            var timing = window.performance.timing;\n                            if (timing.loadEventEnd <= 0) {\n                                console.log(timing.loadEventEnd);\n                                return;\n                            }\n            \n                            var stats = {\n                                // 基本加载时间\n                                dnsLookup: timing.domainLookupEnd - timing.domainLookupStart,\n                                tcpConnect: timing.connectEnd - timing.connectStart,\n                                requestTime: timing.responseStart - timing.requestStart,\n                                responseTime: timing.responseEnd - timing.responseStart,\n            \n                                // DOM相关时间\n                                domLoading: timing.domLoading - timing.navigationStart,\n                                domInteractive: timing.domInteractive - timing.navigationStart,\n                                domComplete: timing.domComplete - timing.navigationStart,\n            \n                                // 整体加载时间\n                                loadEventTime: timing.loadEventEnd - timing.loadEventStart,\n                                totalLoadTime: timing.loadEventEnd - timing.navigationStart,\n            \n                                // 加载状态\n                                readyState: document.readyState,\n                                success: document.readyState === 'complete'\n                            };\n                            clearInterval(intervalId)\n                            console.log(timing.loadEventEnd)\n                            console.warn(JSON.stringify(stats))\n                            // 如果有Android接口可用，则通过接口报告\n                            if (window.MBPreDownloadAndroidInterface) {\n                                window.MBPreDownloadAndroidInterface.reportLoadStats(JSON.stringify(stats));\n                            } else {\n                                console.warn(window.MBPreDownloadAndroidInterface);\n                                console.warn(stats);\n                            }\n            \n                        },\n                        1000);\n                    } catch(e) {\n                        if (window.MBPreDownloadAndroidInterface) {\n                            window.MBPreDownloadAndroidInterface.reportLoadError(e.message);\n                        } else {\n                            console.error('Error collecting load stats:', e);\n                        }\n                    }\n                })\n            \n            })()\n            ", null);
        }
    }

    private final boolean x0(String url) {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            boolean z10 = false;
            if (url != null && url.length() != 0) {
                Uri uri = Uri.parse(url);
                Intrinsics.g(uri, "parse(this)");
                String queryParameter = uri.getQueryParameter("is_lazy_load");
                if (queryParameter != null && StringsKt.H(queryParameter, "true", true)) {
                    z10 = true;
                }
                objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf(z10));
                if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
                    objM453constructorimpl = Boolean.FALSE;
                }
                return ((Boolean) objM453constructorimpl).booleanValue();
            }
            return false;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    private final void y0() {
        if (this.isAlreadyLoadUrl) {
            h.f69205a.e("loadUrl() --> 已经加载过了，不再重复加载");
            return;
        }
        this.isAlreadyLoadUrl = true;
        h.f69205a.e("loadUrl() --> 加载页面 --> url = " + j0());
        k0().loadUrl(j0());
    }

    private final boolean z0() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments.getBoolean(WebConstants.FIELD_LOAD_URL_ONLY, false);
        }
        return false;
    }

    public void A0() {
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
            return;
        }
        View decorView = activity.getWindow().getDecorView();
        Intrinsics.f(decorView, "null cannot be cast to non-null type android.widget.FrameLayout");
        ((FrameLayout) decorView).removeView(this.fullscreenContainer);
        this.fullscreenContainer = null;
        this.webCustomView = null;
        ImmersionBar.with(activity).hideBar(BarHide.FLAG_SHOW_BAR).init();
        activity.setRequestedOrientation(this.originalOrientation);
        WebChromeClient.CustomViewCallback customViewCallback = this.customViewCallback;
        Intrinsics.e(customViewCallback);
        customViewCallback.onCustomViewHidden();
        this.customViewCallback = null;
    }

    public void B0(WebView view, int newProgress) {
        int i10;
        Intrinsics.h(view, "view");
        ProgressBar progressBar = d0().f71261f;
        if (newProgress == 100) {
            i10 = 8;
        } else {
            d0().f71261f.setProgress(newProgress);
            i10 = 0;
        }
        progressBar.setVisibility(i10);
    }

    public void C0(WebView view, String title) {
        Intrinsics.h(view, "view");
        Intrinsics.h(title, "title");
        d0().f71263h.setText(title);
    }

    public void D0(View view, WebChromeClient.CustomViewCallback callback) {
        if (this.webCustomView != null) {
            if (callback != null) {
                callback.onCustomViewHidden();
                return;
            }
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
            return;
        }
        this.webCustomView = view;
        this.originalSystemUiVisibility = activity.getWindow().getDecorView().getSystemUiVisibility();
        this.originalOrientation = activity.getRequestedOrientation();
        this.customViewCallback = callback;
        View decorView = activity.getWindow().getDecorView();
        FrameLayout frameLayout = decorView instanceof FrameLayout ? (FrameLayout) decorView : null;
        FrameLayout frameLayout2 = new FrameLayout(activity);
        frameLayout2.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        frameLayout2.addView(this.webCustomView, new FrameLayout.LayoutParams(-1, -1));
        this.fullscreenContainer = frameLayout2;
        if (frameLayout != null) {
            frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
        }
        ImmersionBar.with(activity).hideBar(BarHide.FLAG_HIDE_BAR).init();
        activity.setRequestedOrientation(6);
    }

    public void E0(WebView view, String url) {
        Intrinsics.h(view, "view");
        Intrinsics.h(url, "url");
        h.f69205a.c("onWebViewClientPageFinished " + url);
        if (this.currentState == LoadStatus.LOADING) {
            c0(url);
        }
    }

    public void F0(WebView view, String url, Bitmap favicon) {
        Intrinsics.h(view, "view");
        Intrinsics.h(url, "url");
        h.f69205a.c("onWebViewClientPageStarted " + url);
        this.currentState = LoadStatus.LOADING;
        this.firstLoadStartTime = System.currentTimeMillis();
        w0(view);
    }

    public void G0(WebView view, int request, String error, String failingUrl) {
        if (this.currentState == LoadStatus.LOADING) {
            l0("WebResourceError: " + error, -1);
        }
    }

    public void H0(WebView view, WebResourceRequest request, WebResourceError error) {
        Intrinsics.h(request, "request");
        Intrinsics.h(error, "error");
        if (this.currentState == LoadStatus.LOADING) {
            l0(error.getDescription().toString(), error.getErrorCode());
        }
    }

    public void I0(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
        Intrinsics.h(view, "view");
        Intrinsics.h(request, "request");
        Intrinsics.h(errorResponse, "errorResponse");
        if (this.currentState == LoadStatus.LOADING && request.isForMainFrame()) {
            l0(errorResponse.getReasonPhrase(), errorResponse.getStatusCode());
        }
    }

    public final void J0(rl.a aVar) {
        Intrinsics.h(aVar, "<set-?>");
        this.binding = aVar;
    }

    public final void M0(BridgeWebView bridgeWebView) {
        Intrinsics.h(bridgeWebView, "<set-?>");
        this.mWebView = bridgeWebView;
    }

    public final void N0(String str) {
        this.strTitle = str;
    }

    public void O0(String url, int errorCode, String errorMsg) {
        h.f69205a.e("trackError --> errorCode = " + errorCode + " --> url = " + url + " --> errorMsg = " + errorMsg);
        this.loadInfoStats.setError_code(Integer.valueOf(errorCode));
        this.loadInfoStats.setError_msg(errorMsg);
    }

    public void P0(String url, long loadTime) {
        h.f69205a.e("trackEvent --> loadTime = " + loadTime + " --> url = " + url);
        this.loadInfoStats.setLoad_time(Long.valueOf(loadTime));
        if (this.currentState == LoadStatus.SUCCESS) {
            this.loadInfoStats.setLoadSuccess(true);
        }
    }

    public void a0(FragmentActivity requireActivity, String tag, String url, String title, long contentLength, String originalUrl) {
        Intrinsics.h(requireActivity, "requireActivity");
        Intrinsics.h(tag, "tag");
        Intrinsics.h(originalUrl, "originalUrl");
    }

    public abstract void b0(BridgeWebView bridgeWebView);

    public final rl.a d0() {
        rl.a aVar = this.binding;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.y("binding");
        return null;
    }

    public List e0() {
        return CollectionsKt.l();
    }

    public final LoadInfoStats getLoadInfoStats() {
        return this.loadInfoStats;
    }

    public final LoadUrlData getLoadUrlData() {
        return this.loadUrlData;
    }

    public final String getClassTag() {
        String simpleName = getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final BridgeWebView h0() {
        BridgeWebView bridgeWebView = this.mWebView;
        if (bridgeWebView != null) {
            return bridgeWebView;
        }
        Intrinsics.y("mWebView");
        return null;
    }

    public final com.transsion.lib_web.zip.loader.d getMWebViewLoaderManager() {
        return this.mWebViewLoaderManager;
    }

    public String j0() {
        String string;
        Bundle arguments = getArguments();
        return (arguments == null || (string = arguments.getString("url")) == null) ? "" : string;
    }

    public final BridgeWebView k0() {
        return h0();
    }

    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        M0(ql.a.f69892a.b(j0(), getContext()));
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.h(inflater, "inflater");
        J0(rl.a.c(inflater));
        return d0().getRoot();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        com.transsion.lib_web.download_render.utils.a.f44818a.n();
        FileDownloadTaskManager.f44780a.h().b();
        l.f76264a.m(this);
        h.f69205a.d(getClassTag() + " --> onDestroy()");
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        ql.a.f69892a.a(k0());
    }

    @Override
    public void onDisconnected() {
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            return;
        }
        y0();
    }

    @Override
    public void onResume() {
        super.onResume();
        y0();
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        d0().f71264i.addView(h0());
        n0();
        initListener();
        t0();
        l.f76264a.l(this);
    }

    public static final class f extends WebViewClient {

        final BridgeWebView f44777b;

        f(BridgeWebView bridgeWebView) {
            this.f44777b = bridgeWebView;
        }

        @Override
        public void onPageFinished(WebView view, String url) {
            Intrinsics.h(view, "view");
            Intrinsics.h(url, "url");
            super.onPageFinished(view, url);
            com.transsion.lib_web.download_render.utils.a aVar = com.transsion.lib_web.download_render.utils.a.f44818a;
            String originUrl = BaseLibWebFragment.this.getLoadUrlData().getOriginUrl();
            String originalUrl = view.getOriginalUrl();
            if (originalUrl == null) {
                originalUrl = "";
            }
            aVar.k(originUrl, originalUrl, this.f44777b.getProgress());
            BaseLibWebFragment.this.E0(view, url);
        }

        @Override
        public void onPageStarted(WebView view, String url, Bitmap bitmap) {
            Intrinsics.h(view, "view");
            Intrinsics.h(url, "url");
            super.onPageStarted(view, url, bitmap);
            BaseLibWebFragment.this.F0(view, url, bitmap);
        }

        @Override
        public void onReceivedError(WebView webView, int i10, String str, String str2) {
            super.onReceivedError(webView, i10, str, str2);
            BaseLibWebFragment.this.G0(webView, i10, str, str2);
        }

        @Override
        public void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
            Intrinsics.h(view, "view");
            Intrinsics.h(request, "request");
            Intrinsics.h(errorResponse, "errorResponse");
            super.onReceivedHttpError(view, request, errorResponse);
            BaseLibWebFragment.this.I0(view, request, errorResponse);
        }

        @Override
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            return true;
        }

        @Override
        public WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
            WebResourceResponse webResourceResponseA;
            Intrinsics.h(view, "view");
            Intrinsics.h(request, "request");
            com.transsion.lib_web.zip.loader.d mWebViewLoaderManager = BaseLibWebFragment.this.getMWebViewLoaderManager();
            return (mWebViewLoaderManager == null || (webResourceResponseA = mWebViewLoaderManager.a(request)) == null) ? super.shouldInterceptRequest(view, request) : webResourceResponseA;
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            Intrinsics.h(view, "view");
            Intrinsics.h(url, "url");
            if (!Intrinsics.c(url, "yy://__QUEUE_MESSAGE__")) {
                BaseLibWebFragment.this.getLoadUrlData().setOriginUrl(url);
            }
            if (g.f69204a.a(url, BaseLibWebFragment.this.getContext())) {
                return true;
            }
            return super.shouldOverrideUrlLoading(view, url);
        }

        @Override
        public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
            Intrinsics.h(view, "view");
            Intrinsics.h(request, "request");
            Intrinsics.h(error, "error");
            super.onReceivedError(view, request, error);
            BaseLibWebFragment.this.H0(view, request, error);
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            String string;
            Uri url;
            if (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null || (string = url.toString()) == null) {
                string = "";
            }
            if (!Intrinsics.c(string, "yy://__QUEUE_MESSAGE__")) {
                BaseLibWebFragment.this.getLoadUrlData().setOriginUrl(string);
            }
            if (g.f69204a.a(string, BaseLibWebFragment.this.getContext())) {
                return true;
            }
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }
    }

    @Override
    public void onConnected() {
        m.a.a(this);
    }
}
