package com.cloud.hisavana.sdk.internal.agentpage;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.cloud.hisavana.sdk.J0;
import com.cloud.hisavana.sdk.O;
import com.cloud.hisavana.sdk.Y;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.bridge.HisavanaAdJsBridge;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.internal.agentpage.bean.AgentPageCurrentAd;
import com.cloud.hisavana.sdk.p;
import com.cloud.hisavana.sdk.p3;
import com.cloud.hisavana.sdk.q2;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 W2\u00020\u0001:\u0003XYZB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J1\u0010\r\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ'\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0019\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010!\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b!\u0010\"J\u0015\u0010#\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b#\u0010$J\u0017\u0010%\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0007H\u0007¢\u0006\u0004\b%\u0010&J\u0017\u0010'\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0007H\u0007¢\u0006\u0004\b'\u0010&J/\u0010,\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\u00072\u0006\u0010+\u001a\u00020(H\u0007¢\u0006\u0004\b,\u0010-J/\u0010.\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\u00072\u0006\u0010+\u001a\u00020(H\u0007¢\u0006\u0004\b.\u0010-J\u001f\u00101\u001a\u00020\u00122\u0006\u0010/\u001a\u00020\u00072\u0006\u00100\u001a\u00020(H\u0007¢\u0006\u0004\b1\u00102J\u0017\u00103\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u0007H\u0007¢\u0006\u0004\b3\u00104J\u001f\u00106\u001a\u00020\u00042\u0006\u00105\u001a\u00020(2\u0006\u0010/\u001a\u00020\u0007H\u0007¢\u0006\u0004\b6\u00107J\u001f\u00109\u001a\u00020\u00042\u0006\u00108\u001a\u00020(2\u0006\u0010/\u001a\u00020\u0007H\u0007¢\u0006\u0004\b9\u00107J1\u0010<\u001a\u00020\u00042\u0006\u0010:\u001a\u00020(2\u0006\u0010;\u001a\u00020(2\b\u00108\u001a\u0004\u0018\u00010(2\u0006\u0010/\u001a\u00020\u0007H\u0007¢\u0006\u0004\b<\u0010=J3\u0010A\u001a\u00020\u0012*\u00020\u001b2\u0006\u0010>\u001a\u00020\u00072\u0018\b\u0002\u0010@\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u0012\u0018\u00010?¢\u0006\u0004\bA\u0010BR\u0014\u0010E\u001a\u00020\u00078\u0002X\u0082D¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010H\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u0018\u0010 \u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR$\u0010R\u001a\u0004\u0018\u00010K8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bL\u0010M\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR\u001e\u0010V\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010U¨\u0006["}, d2 = {"Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;", "Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;", "<init>", "()V", "", CampaignEx.JSON_KEY_AD_R, "()Z", "", "apiName", "callbackId", NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "Lorg/json/JSONObject;", "data", "o", "(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;", "Lcom/cloud/hisavana/sdk/internal/agentpage/b;", "agentPageAd", "methodName", "", TtmlNode.TAG_P, "(Lcom/cloud/hisavana/sdk/internal/agentpage/b;Ljava/lang/String;Ljava/lang/String;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "adsDTO", "s", "(Landroid/view/View;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z", "Landroid/webkit/WebView;", "webview", "setWebview", "(Landroid/webkit/WebView;)V", "Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;", "agentPageCurrentAd", "setCurrentAdInfo", "(Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;)V", "setCurrentAd", "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V", "getCurrentAdInfo", "(Ljava/lang/String;)V", "getCurrentAd", "", "codeSeatType", "codeSeatId", "adCount", "loadAds", "(Ljava/lang/String;ILjava/lang/String;I)V", "loadNormalAds", "adInfo", "closeType", "closeAd", "(Ljava/lang/String;I)V", "openLandingPage", "(Ljava/lang/String;)Z", "trackType", "trackAd", "(ILjava/lang/String;)Z", "errorCode", "trackWarning", "lifeCycle", TrackingKey.PLATFORM, "trackContainerLifeCycle", "(IILjava/lang/Integer;Ljava/lang/String;)Z", "jsScript", "Lkotlin/Function1;", "onComplete", "executeJavascript", "(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "i", "Ljava/lang/String;", "TAG", "j", "Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;", "agentPageCurrentAdInfo", CampaignEx.JSON_KEY_AD_K, "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;", "l", "Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;", "getAdActionListener", "()Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;", "setAdActionListener", "(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;)V", "adActionListener", "Ljava/lang/ref/WeakReference;", "m", "Ljava/lang/ref/WeakReference;", "webviewRefer", "Companion", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AgentPageJsBridge extends HisavanaAdJsBridge {
    public static final String AGENT_PAGE_INFO = "ssplocalhost=true";
    public static final String AGENT_PAGE_START_URL = "https://ssplocalhost/";
    public static final String HTML_FROM_LOCAL = "htmlfromlocal=true";
    public static final String HTTPS = "https://";
    public static final String INTERFACE_NAME = "AgentPageJsBridge";
    public static final int MAX_FETCH_NUM = 100;
    public static final int TRACK_LIFE_CYCLE_CLICK = 2;
    public static final int TRACK_LIFE_CYCLE_OPEN = 0;
    public static final int TRACK_LIFE_CYCLE_SHOW = 1;
    public static final int TYPE_TRACK_AD_CLICK = 2;
    public static final int TYPE_TRACK_AD_SHOW = 1;

    private final String TAG = INTERFACE_NAME;

    private AgentPageCurrentAd agentPageCurrentAdInfo;

    private AdsDTO agentPageCurrentAd;

    private a adActionListener;

    private WeakReference webviewRefer;

    public static final Companion INSTANCE = new Companion(null);

    private static float f21912n = -1.0f;

    private static float f21913o = -1.0f;

    private static float f21914p = -1.0f;

    private static float f21915q = -1.0f;

    public interface a {
        void a();

        void a(int i10);

        void onClick();
    }

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private static final class c implements View.OnTouchListener {
        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            Intrinsics.h(v10, "v");
            Intrinsics.h(event, "event");
            int action = event.getAction();
            if (action == 0) {
                Companion companion = AgentPageJsBridge.INSTANCE;
                AgentPageJsBridge.f21912n = event.getX();
                AgentPageJsBridge.f21913o = event.getY();
                return false;
            }
            if (action != 1) {
                return false;
            }
            Companion companion2 = AgentPageJsBridge.INSTANCE;
            AgentPageJsBridge.f21914p = event.getX();
            AgentPageJsBridge.f21915q = event.getY();
            return false;
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()V"}, k = 3, mv = {1, 9, 0})
    static final class d extends Lambda implements Function0<Unit> {

        final String f21921a;

        final AgentPageJsBridge f21922b;

        final WebView f21923c;

        final Function1<String, Unit> f21924d;

        public static final class a implements ValueCallback {

            final Function1 f21925a;

            a(Function1 function1) {
                this.f21925a = function1;
            }

            @Override
            public void onReceiveValue(String str) {
                Function1 function1 = this.f21925a;
                if (function1 != null) {
                    function1.invoke(str);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        d(String str, AgentPageJsBridge agentPageJsBridge, WebView webView, Function1<? super String, Unit> function1) {
            super(0);
            this.f21921a = str;
            this.f21922b = agentPageJsBridge;
            this.f21923c = webView;
            this.f21924d = function1;
        }

        public final void a() {
            String str = this.f21921a;
            if (!StringsKt.W(str, "javascript", false, 2, null)) {
                str = "javascript:" + this.f21921a;
            }
            b4.b().d(this.f21922b.TAG, "nativeSendToRender DefaultRenderBridge= " + str);
            try {
                this.f21923c.evaluateJavascript(str, new a(this.f21924d));
            } catch (Exception e10) {
                b4.b().e(this.f21922b.TAG, "evaluateJavascript error = " + e10);
                this.f21923c.loadUrl(str);
            }
        }

        @Override
        public Object invoke() {
            a();
            return Unit.f64096a;
        }
    }

    public static final class e implements b.a {

        final String f21927b;

        final String f21928c;

        e(String str, String str2) {
            this.f21927b = str;
            this.f21928c = str2;
        }

        @Override
        public void a(List ads) {
            WebView webView;
            Intrinsics.h(ads, "ads");
            try {
                String strO = AgentPageJsBridge.this.o(this.f21927b, this.f21928c, true, new JSONObject().put(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, new JSONArray(GsonUtil.d(ads))));
                WeakReference weakReference = AgentPageJsBridge.this.webviewRefer;
                if (weakReference == null || (webView = (WebView) weakReference.get()) == null) {
                    return;
                }
                AgentPageJsBridge.this.executeJavascript(webView, "javascript:window.HisavanaAdJsBridgeCallback(" + strO + ')', null);
            } catch (Throwable th2) {
                b4.b().e(AgentPageJsBridge.this.TAG, Log.getStackTraceString(th2));
            }
        }
    }

    public static final class f extends AdCallback {

        final b f21929a;

        f(b bVar) {
            this.f21929a = bVar;
        }

        @Override
        public com.cloud.hisavana.sdk.api.listener.d d() {
            return new a(this.f21929a);
        }

        @Override
        public String e() {
            return "";
        }

        @Override
        public String g() {
            return "";
        }

        public static final class a extends com.cloud.hisavana.sdk.api.listener.d {

            final b f21930b;

            a(b bVar) {
                this.f21930b = bVar;
            }

            @Override
            public void onAdLoaded() {
                super.onAdLoaded();
                this.f21930b.m();
            }

            @Override
            public void onError(TaErrorCode taErrorCode) {
                super.onError(taErrorCode);
                this.f21930b.m();
            }

            @Override
            public void onAdLoaded(List list) {
                super.onAdLoaded(list);
                this.f21930b.m();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void executeJavascript$default(AgentPageJsBridge agentPageJsBridge, WebView webView, String str, Function1 function1, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function1 = null;
        }
        agentPageJsBridge.executeJavascript(webView, str, function1);
    }

    public final String o(String apiName, String callbackId, boolean success, JSONObject data) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("apiName", apiName);
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, success);
            jSONObject.put("callbackId", callbackId);
            if (data != null) {
                jSONObject.put(NativeComponentConstants.KEY_COMPONENT_EVENT_ARGS, data);
            }
            String string = new JSONObject().put("data", jSONObject).toString();
            Intrinsics.g(string, "toString(...)");
            return string;
        } catch (Throwable th2) {
            b4.b().e(this.TAG, Log.getStackTraceString(th2));
            return "";
        }
    }

    private final void p(b agentPageAd, String callbackId, String methodName) {
        agentPageAd.F(new e(methodName, callbackId));
        agentPageAd.g(new f(agentPageAd));
    }

    public static final void q(Function0 runnable) {
        Intrinsics.h(runnable, "$runnable");
        runnable.invoke();
    }

    private final boolean r() {
        return this.agentPageCurrentAd != null;
    }

    private final boolean s(View view, AdsDTO adsDTO) {
        if (view == null) {
            return false;
        }
        try {
            J0.b(view.getContext(), adsDTO, new DownUpPointBean(f21912n, f21913o, f21914p, f21915q, view.getMeasuredHeight(), view.getMeasuredWidth()), true);
            return true;
        } catch (Throwable th2) {
            b4.b().e("ssp", Log.getStackTraceString(th2));
            return false;
        }
    }

    @JavascriptInterface
    public final void closeAd(String adInfo, int closeType) {
        Intrinsics.h(adInfo, "adInfo");
        WeakReference weakReference = this.webviewRefer;
        if ((weakReference != null ? (WebView) weakReference.get() : null) == null) {
            b4.b().w(this.TAG, "close Ad webviewRefer == null");
            return;
        }
        a aVar = this.adActionListener;
        if (aVar != null) {
            aVar.a(closeType);
        }
    }

    public final void executeJavascript(WebView webView, String jsScript, Function1<? super String, Unit> function1) {
        Intrinsics.h(webView, "<this>");
        Intrinsics.h(jsScript, "jsScript");
        if (jsScript.length() == 0) {
            return;
        }
        final d dVar = new d(jsScript, this, webView, function1);
        if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
            dVar.invoke();
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                @Override
                public final void run() {
                    AgentPageJsBridge.q(dVar);
                }
            });
        }
    }

    public final a getAdActionListener() {
        return this.adActionListener;
    }

    @JavascriptInterface
    public final void getCurrentAd(String callbackId) {
        WebView webView;
        Intrinsics.h(callbackId, "callbackId");
        try {
            String strO = o("getCurrentAd", callbackId, true, new JSONObject().put("currentAd", GsonUtil.d(this.agentPageCurrentAd)));
            WeakReference weakReference = this.webviewRefer;
            if (weakReference == null || (webView = (WebView) weakReference.get()) == null) {
                return;
            }
            executeJavascript(webView, "javascript:window.HisavanaAdJsBridgeCallback(" + strO + ')', null);
        } catch (Throwable th2) {
            b4.b().e(this.TAG, Log.getStackTraceString(th2));
        }
    }

    @JavascriptInterface
    public final void getCurrentAdInfo(String callbackId) {
        WebView webView;
        Intrinsics.h(callbackId, "callbackId");
        try {
            String strO = o("getCurrentAdInfo", callbackId, true, new JSONObject().put("currentAdInfo", GsonUtil.d(this.agentPageCurrentAdInfo)));
            WeakReference weakReference = this.webviewRefer;
            if (weakReference == null || (webView = (WebView) weakReference.get()) == null) {
                return;
            }
            executeJavascript(webView, "javascript:window.HisavanaAdJsBridgeCallback(" + strO + ')', null);
        } catch (Throwable th2) {
            b4.b().e(this.TAG, Log.getStackTraceString(th2));
        }
    }

    @JavascriptInterface
    public final void loadAds(String callbackId, int codeSeatType, String codeSeatId, int adCount) {
        Intrinsics.h(callbackId, "callbackId");
        Intrinsics.h(codeSeatId, "codeSeatId");
        if (1 > adCount || adCount >= 101) {
            adCount = 1;
        }
        p3 p3VarG = new p3.b().i(codeSeatType).e(codeSeatId).v(true).a(adCount).g();
        Intrinsics.e(p3VarG);
        b bVar = new b(p3VarG);
        p(bVar, callbackId, "loadAds");
        bVar.E();
    }

    @JavascriptInterface
    public final void loadNormalAds(String callbackId, int codeSeatType, String codeSeatId, int adCount) {
        Intrinsics.h(callbackId, "callbackId");
        Intrinsics.h(codeSeatId, "codeSeatId");
        if (1 > adCount || adCount >= 101) {
            adCount = 1;
        }
        p3 p3VarG = new p3.b().i(codeSeatType).e(codeSeatId).v(false).a(adCount).g();
        Intrinsics.e(p3VarG);
        b bVar = new b(p3VarG);
        p(bVar, callbackId, "loadNormalAds");
        bVar.E();
    }

    @JavascriptInterface
    public final boolean openLandingPage(String adInfo) {
        Intrinsics.h(adInfo, "adInfo");
        try {
            AdsDTO adsDTO = (AdsDTO) GsonUtil.a(adInfo, AdsDTO.class);
            if (adsDTO == null) {
                return false;
            }
            a aVar = this.adActionListener;
            if (aVar != null) {
                aVar.onClick();
            }
            WeakReference weakReference = this.webviewRefer;
            return s(weakReference != null ? (WebView) weakReference.get() : null, adsDTO);
        } catch (Throwable th2) {
            b4.b().d(this.TAG, Log.getStackTraceString(th2));
            return false;
        }
    }

    public final void setAdActionListener(a aVar) {
        this.adActionListener = aVar;
    }

    public final void setCurrentAd(AdsDTO adsDTO) {
        Intrinsics.h(adsDTO, "adsDTO");
        this.agentPageCurrentAd = adsDTO;
    }

    public final void setCurrentAdInfo(AgentPageCurrentAd agentPageCurrentAd) {
        Intrinsics.h(agentPageCurrentAd, "agentPageCurrentAd");
        this.agentPageCurrentAdInfo = agentPageCurrentAd;
    }

    public final void setWebview(WebView webview) {
        Intrinsics.h(webview, "webview");
        webview.setOnTouchListener(new c());
        this.webviewRefer = new WeakReference(webview);
    }

    @JavascriptInterface
    public final boolean trackAd(int trackType, String adInfo) {
        Intrinsics.h(adInfo, "adInfo");
        try {
            AdsDTO adsDTO = (AdsDTO) GsonUtil.a(adInfo, AdsDTO.class);
            if (adsDTO == null) {
                return false;
            }
            if (trackType != 1) {
                if (trackType != 2) {
                    return false;
                }
                AthenaTracker.W(adsDTO);
            } else if (r()) {
                a aVar = this.adActionListener;
                if (aVar != null) {
                    aVar.a();
                }
            } else {
                if (adsDTO.getImpBeanRequest() != null) {
                    O.g().k(adsDTO.getImpBeanRequest().pmid);
                    if (adsDTO.getSource() == 4) {
                        Y y10 = Y.f20925a;
                        String adCreativeId = adsDTO.getAdCreativeId();
                        Intrinsics.g(adCreativeId, "getAdCreativeId(...)");
                        String codeSeatId = adsDTO.getCodeSeatId();
                        Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
                        y10.q(adCreativeId, codeSeatId);
                    } else if (adsDTO.isOfflineAd()) {
                        adsDTO.setShowNum(Integer.valueOf(adsDTO.getShowNum().intValue() + 1));
                        p.F().q(adsDTO);
                    }
                }
                q2.b(adsDTO);
            }
            return true;
        } catch (Throwable th2) {
            b4.b().d(this.TAG, Log.getStackTraceString(th2));
            return false;
        }
    }

    @JavascriptInterface
    public final boolean trackContainerLifeCycle(int lifeCycle, int platform, Integer errorCode, String adInfo) {
        AdsDTO adsDTO;
        Intrinsics.h(adInfo, "adInfo");
        try {
            if (TextUtils.isEmpty(adInfo) || (adsDTO = (AdsDTO) GsonUtil.a(adInfo, AdsDTO.class)) == null) {
                return false;
            }
            AthenaTracker.z(lifeCycle, Integer.valueOf(platform), errorCode, adsDTO);
            return true;
        } catch (Throwable th2) {
            b4.b().d(this.TAG, Log.getStackTraceString(th2));
            return false;
        }
    }

    @JavascriptInterface
    public final boolean trackWarning(int errorCode, String adInfo) {
        Intrinsics.h(adInfo, "adInfo");
        try {
            if (TextUtils.isEmpty(adInfo)) {
                AthenaTracker.C("", "", errorCode);
                return true;
            }
            AdsDTO adsDTO = (AdsDTO) GsonUtil.a(adInfo, AdsDTO.class);
            if (adsDTO == null) {
                return false;
            }
            AthenaTracker.C(adsDTO.getCodeSeatId(), adsDTO.getUuid(), errorCode);
            return true;
        } catch (Throwable th2) {
            b4.b().d(this.TAG, Log.getStackTraceString(th2));
            return false;
        }
    }
}
