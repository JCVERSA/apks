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
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.bridge.HisavanaAdJsBridge;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageJsBridge;
import com.cloud.hisavana.sdk.internal.agentpage.bean.AgentPageCurrentAd;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.c2d;
import defpackage.c74;
import defpackage.e74;
import defpackage.g1a;
import defpackage.ied;
import defpackage.ikd;
import defpackage.n6;
import defpackage.y45;
import defpackage.zfb;
import java.lang.ref.WeakReference;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;
import org.json.JSONArray;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 W2\u00020\u0001:\u0003XYZB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0015\u0010\u0014J/\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0016H\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ/\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0016H\u0007¢\u0006\u0004\b\u001c\u0010\u001bJ\u001f\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u0016H\u0007¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020!2\u0006\u0010\u001d\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\"\u0010#J\u001f\u0010%\u001a\u00020!2\u0006\u0010$\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u0011H\u0007¢\u0006\u0004\b%\u0010&J\u001f\u0010(\u001a\u00020!2\u0006\u0010'\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u0011H\u0007¢\u0006\u0004\b(\u0010&J1\u0010+\u001a\u00020!2\u0006\u0010)\u001a\u00020\u00162\u0006\u0010*\u001a\u00020\u00162\b\u0010'\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u001d\u001a\u00020\u0011H\u0007¢\u0006\u0004\b+\u0010,J3\u00100\u001a\u00020\u0006*\u00020\u00042\u0006\u0010-\u001a\u00020\u00112\u0018\b\u0002\u0010/\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0012\u0004\u0012\u00020\u0006\u0018\u00010.¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020!H\u0002¢\u0006\u0004\b2\u00103J1\u00108\u001a\u00020\u00112\u0006\u00104\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u00105\u001a\u00020!2\b\u00107\u001a\u0004\u0018\u000106H\u0002¢\u0006\u0004\b8\u00109J'\u0010=\u001a\u00020\u00062\u0006\u0010;\u001a\u00020:2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010<\u001a\u00020\u0011H\u0002¢\u0006\u0004\b=\u0010>J!\u0010A\u001a\u00020!2\b\u0010@\u001a\u0004\u0018\u00010?2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\bA\u0010BR\u0014\u0010E\u001a\u00020\u00118\u0002X\u0082D¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010H\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u0018\u0010\n\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR$\u0010R\u001a\u0004\u0018\u00010K8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bL\u0010M\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR\u001e\u0010V\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010U¨\u0006["}, d2 = {"Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;", "Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;", MethodDecl.initName, "()V", "Landroid/webkit/WebView;", "webview", "Lzfb;", "setWebview", "(Landroid/webkit/WebView;)V", "Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;", "agentPageCurrentAd", "setCurrentAdInfo", "(Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;)V", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "adsDTO", "setCurrentAd", "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V", "", "callbackId", "getCurrentAdInfo", "(Ljava/lang/String;)V", "getCurrentAd", "", "codeSeatType", "codeSeatId", "adCount", "loadAds", "(Ljava/lang/String;ILjava/lang/String;I)V", "loadNormalAds", "adInfo", "closeType", "closeAd", "(Ljava/lang/String;I)V", "", "openLandingPage", "(Ljava/lang/String;)Z", "trackType", "trackAd", "(ILjava/lang/String;)Z", "errorCode", "trackWarning", "lifeCycle", "platform", "trackContainerLifeCycle", "(IILjava/lang/Integer;Ljava/lang/String;)Z", "jsScript", "Lkotlin/Function1;", "onComplete", "executeJavascript", "(Landroid/webkit/WebView;Ljava/lang/String;Le74;)V", "r", "()Z", "apiName", "success", "Lorg/json/JSONObject;", "data", "o", "(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;", "Lcom/cloud/hisavana/sdk/internal/agentpage/a;", "agentPageAd", "methodName", "q", "(Lcom/cloud/hisavana/sdk/internal/agentpage/a;Ljava/lang/String;Ljava/lang/String;)V", "Landroid/view/View;", "view", "s", "(Landroid/view/View;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z", "f", "Ljava/lang/String;", AbstractID3v1Tag.TAG, GslbInterceptor.HEADER_KEY_GSLB, "Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;", "agentPageCurrentAdInfo", CmcdData.STREAMING_FORMAT_HLS, "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;", "getAdActionListener", "()Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;", "setAdActionListener", "(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;)V", "adActionListener", "Ljava/lang/ref/WeakReference;", "j", "Ljava/lang/ref/WeakReference;", "webviewRefer", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "c", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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

    public final String TAG = INTERFACE_NAME;

    public AgentPageCurrentAd agentPageCurrentAdInfo;

    public AdsDTO agentPageCurrentAd;

    public a adActionListener;

    public WeakReference webviewRefer;

    public static final Companion INSTANCE = new Companion(null);
    public static float k = -1.0f;
    public static float l = -1.0f;
    public static float m = -1.0f;
    public static float n = -1.0f;

    public interface a {
        void a();

        void a(int i);

        void onClick();
    }

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public static final class c implements View.OnTouchListener {
        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            y45.j(view, "v");
            y45.j(motionEvent, NotificationCompat.CATEGORY_EVENT);
            int action = motionEvent.getAction();
            if (action == 0) {
                Companion companion = AgentPageJsBridge.INSTANCE;
                AgentPageJsBridge.k = motionEvent.getX();
                AgentPageJsBridge.l = motionEvent.getY();
                return false;
            }
            if (action != 1) {
                return false;
            }
            Companion companion2 = AgentPageJsBridge.INSTANCE;
            AgentPageJsBridge.m = motionEvent.getX();
            AgentPageJsBridge.n = motionEvent.getY();
            return false;
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lzfb;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()V"}, k = 3, mv = {1, 9, 0})
    public static final class d extends Lambda implements c74 {
        final String a;
        final AgentPageJsBridge b;
        final WebView c;
        final e74 d;

        public static final class a implements ValueCallback {
            public final e74 a;

            public a(e74 e74Var) {
                this.a = e74Var;
            }

            @Override
            public void onReceiveValue(String str) {
                e74 e74Var = this.a;
                if (e74Var != null) {
                    e74Var.invoke(str);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, AgentPageJsBridge agentPageJsBridge, WebView webView, e74 e74Var) {
            super(0);
            this.a = str;
            this.b = agentPageJsBridge;
            this.c = webView;
            this.d = e74Var;
        }

        public final void a() {
            String str = this.a;
            if (!g1a.R(str, "javascript", false, 2, null)) {
                str = "javascript:" + this.a;
            }
            ikd.b().d(this.b.TAG, "nativeSendToRender DefaultRenderBridge= " + str);
            try {
                this.c.evaluateJavascript(str, new a(this.d));
            } catch (Exception e) {
                ikd.b().e(this.b.TAG, "evaluateJavascript error = " + e);
                this.c.loadUrl(str);
            }
        }

        @Override
        public Object invoke() {
            a();
            return zfb.a;
        }
    }

    public static final class e implements com.cloud.hisavana.sdk.internal.agentpage.a.InterfaceC0049a {
        public final String b;
        public final String c;

        public e(String str, String str2) {
            this.b = str;
            this.c = str2;
        }

        @Override
        public void a(List list) {
            WebView webView;
            y45.j(list, "ads");
            try {
                String strO = AgentPageJsBridge.this.o(this.b, this.c, true, new JSONObject().put("ads", new JSONArray(GsonUtil.d(list))));
                WeakReference weakReference = AgentPageJsBridge.this.webviewRefer;
                if (weakReference == null || (webView = (WebView) weakReference.get()) == null) {
                    return;
                }
                AgentPageJsBridge.this.executeJavascript(webView, "javascript:window.HisavanaAdJsBridgeCallback(" + strO + ')', null);
            } catch (Throwable th) {
                ikd.b().e(AgentPageJsBridge.this.TAG, Log.getStackTraceString(th));
            }
        }
    }

    public static final class f extends AdCallback {
        public final com.cloud.hisavana.sdk.internal.agentpage.a a;

        public f(com.cloud.hisavana.sdk.internal.agentpage.a aVar) {
            this.a = aVar;
        }

        @Override
        public n6 d() {
            return new a(this.a);
        }

        @Override
        public String e() {
            return "";
        }

        @Override
        public String g() {
            return "";
        }

        public static final class a extends n6 {
            public final com.cloud.hisavana.sdk.internal.agentpage.a b;

            public a(com.cloud.hisavana.sdk.internal.agentpage.a aVar) {
                this.b = aVar;
            }

            @Override
            public void onAdLoaded() {
                super.onAdLoaded();
                this.b.m();
            }

            @Override
            public void onError(TaErrorCode taErrorCode) {
                super.onError(taErrorCode);
                this.b.m();
            }

            @Override
            public void onAdLoaded(List list) {
                super.onAdLoaded(list);
                this.b.m();
            }
        }
    }

    public static void executeJavascript$default(AgentPageJsBridge agentPageJsBridge, WebView webView, String str, e74 e74Var, int i, Object obj) {
        if ((i & 2) != 0) {
            e74Var = null;
        }
        agentPageJsBridge.executeJavascript(webView, str, e74Var);
    }

    public static final void p(c74 c74Var) {
        y45.j(c74Var, "$runnable");
        c74Var.invoke();
    }

    @JavascriptInterface
    public final void closeAd(String adInfo, int closeType) {
        y45.j(adInfo, "adInfo");
        WeakReference weakReference = this.webviewRefer;
        if ((weakReference != null ? (WebView) weakReference.get() : null) == null) {
            ikd.b().w(this.TAG, "close Ad webviewRefer == null");
            return;
        }
        a aVar = this.adActionListener;
        if (aVar != null) {
            aVar.a(closeType);
        }
    }

    public final void executeJavascript(WebView webView, String str, e74 e74Var) {
        y45.j(webView, "<this>");
        y45.j(str, "jsScript");
        if (str.length() == 0) {
            return;
        }
        final d dVar = new d(str, this, webView, e74Var);
        if (y45.e(Looper.myLooper(), Looper.getMainLooper())) {
            dVar.invoke();
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                @Override
                public final void run() {
                    AgentPageJsBridge.p(dVar);
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
        y45.j(callbackId, "callbackId");
        try {
            String strO = o("getCurrentAd", callbackId, true, new JSONObject().put("currentAd", GsonUtil.d(this.agentPageCurrentAd)));
            WeakReference weakReference = this.webviewRefer;
            if (weakReference == null || (webView = (WebView) weakReference.get()) == null) {
                return;
            }
            executeJavascript(webView, "javascript:window.HisavanaAdJsBridgeCallback(" + strO + ')', null);
        } catch (Throwable th) {
            ikd.b().e(this.TAG, Log.getStackTraceString(th));
        }
    }

    @JavascriptInterface
    public final void getCurrentAdInfo(String callbackId) {
        WebView webView;
        y45.j(callbackId, "callbackId");
        try {
            String strO = o("getCurrentAdInfo", callbackId, true, new JSONObject().put("currentAdInfo", GsonUtil.d(this.agentPageCurrentAdInfo)));
            WeakReference weakReference = this.webviewRefer;
            if (weakReference == null || (webView = (WebView) weakReference.get()) == null) {
                return;
            }
            executeJavascript(webView, "javascript:window.HisavanaAdJsBridgeCallback(" + strO + ')', null);
        } catch (Throwable th) {
            ikd.b().e(this.TAG, Log.getStackTraceString(th));
        }
    }

    @JavascriptInterface
    public final void loadAds(String callbackId, int codeSeatType, String codeSeatId, int adCount) {
        y45.j(callbackId, "callbackId");
        y45.j(codeSeatId, "codeSeatId");
        if (1 > adCount || adCount >= 101) {
            adCount = 1;
        }
        ied iedVarG = new ied.b().i(codeSeatType).e(codeSeatId).w(true).a(adCount).g();
        y45.g(iedVarG);
        com.cloud.hisavana.sdk.internal.agentpage.a aVar = new com.cloud.hisavana.sdk.internal.agentpage.a(iedVarG);
        q(aVar, callbackId, "loadAds");
        aVar.E();
    }

    @JavascriptInterface
    public final void loadNormalAds(String callbackId, int codeSeatType, String codeSeatId, int adCount) {
        y45.j(callbackId, "callbackId");
        y45.j(codeSeatId, "codeSeatId");
        if (1 > adCount || adCount >= 101) {
            adCount = 1;
        }
        ied iedVarG = new ied.b().i(codeSeatType).e(codeSeatId).w(false).a(adCount).g();
        y45.g(iedVarG);
        com.cloud.hisavana.sdk.internal.agentpage.a aVar = new com.cloud.hisavana.sdk.internal.agentpage.a(iedVarG);
        q(aVar, callbackId, "loadNormalAds");
        aVar.E();
    }

    public final String o(String apiName, String callbackId, boolean success, JSONObject data) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("apiName", apiName);
            jSONObject.put("success", success);
            jSONObject.put("callbackId", callbackId);
            if (data != null) {
                jSONObject.put("args", data);
            }
            String string = new JSONObject().put("data", jSONObject).toString();
            y45.i(string, "toString(...)");
            return string;
        } catch (Throwable th) {
            ikd.b().e(this.TAG, Log.getStackTraceString(th));
            return "";
        }
    }

    @JavascriptInterface
    public final boolean openLandingPage(String adInfo) {
        y45.j(adInfo, "adInfo");
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
        } catch (Throwable th) {
            ikd.b().d(this.TAG, Log.getStackTraceString(th));
            return false;
        }
    }

    public final void q(com.cloud.hisavana.sdk.internal.agentpage.a agentPageAd, String callbackId, String methodName) {
        agentPageAd.F(new e(methodName, callbackId));
        agentPageAd.g(new f(agentPageAd));
    }

    public final boolean r() {
        return this.agentPageCurrentAd != null;
    }

    public final boolean s(View view, AdsDTO adsDTO) {
        if (view == null) {
            return false;
        }
        try {
            U0.b(view.getContext(), adsDTO, new DownUpPointBean(k, l, m, n, view.getMeasuredHeight(), view.getMeasuredWidth()), true);
            return true;
        } catch (Throwable th) {
            ikd.b().e("ssp", Log.getStackTraceString(th));
            return false;
        }
    }

    public final void setAdActionListener(a aVar) {
        this.adActionListener = aVar;
    }

    public final void setCurrentAd(AdsDTO adsDTO) {
        y45.j(adsDTO, "adsDTO");
        this.agentPageCurrentAd = adsDTO;
    }

    public final void setCurrentAdInfo(AgentPageCurrentAd agentPageCurrentAd) {
        y45.j(agentPageCurrentAd, "agentPageCurrentAd");
        this.agentPageCurrentAdInfo = agentPageCurrentAd;
    }

    public final void setWebview(WebView webview) {
        y45.j(webview, "webview");
        webview.setOnTouchListener(new c());
        this.webviewRefer = new WeakReference(webview);
    }

    @JavascriptInterface
    public final boolean trackAd(int trackType, String adInfo) {
        y45.j(adInfo, "adInfo");
        try {
            AdsDTO adsDTO = (AdsDTO) GsonUtil.a(adInfo, AdsDTO.class);
            if (adsDTO == null) {
                return false;
            }
            if (trackType != 1) {
                if (trackType != 2) {
                    return false;
                }
                AthenaTracker.b0(adsDTO);
            } else if (r()) {
                a aVar = this.adActionListener;
                if (aVar != null) {
                    aVar.a();
                }
            } else {
                HSCommonUtils.a.x(adsDTO);
                c2d.b(adsDTO);
            }
            return true;
        } catch (Throwable th) {
            ikd.b().d(this.TAG, Log.getStackTraceString(th));
            return false;
        }
    }

    @JavascriptInterface
    public final boolean trackContainerLifeCycle(int lifeCycle, int platform, Integer errorCode, String adInfo) {
        AdsDTO adsDTO;
        y45.j(adInfo, "adInfo");
        try {
            if (TextUtils.isEmpty(adInfo) || (adsDTO = (AdsDTO) GsonUtil.a(adInfo, AdsDTO.class)) == null) {
                return false;
            }
            AthenaTracker.C(lifeCycle, Integer.valueOf(platform), errorCode, adsDTO);
            return true;
        } catch (Throwable th) {
            ikd.b().d(this.TAG, Log.getStackTraceString(th));
            return false;
        }
    }

    @JavascriptInterface
    public final boolean trackWarning(int errorCode, String adInfo) {
        y45.j(adInfo, "adInfo");
        try {
            if (TextUtils.isEmpty(adInfo)) {
                AthenaTracker.F("", "", errorCode);
                return true;
            }
            AdsDTO adsDTO = (AdsDTO) GsonUtil.a(adInfo, AdsDTO.class);
            if (adsDTO == null) {
                return false;
            }
            AthenaTracker.F(adsDTO.getCodeSeatId(), adsDTO.getUuid(), errorCode);
            return true;
        } catch (Throwable th) {
            ikd.b().d(this.TAG, Log.getStackTraceString(th));
            return false;
        }
    }
}
