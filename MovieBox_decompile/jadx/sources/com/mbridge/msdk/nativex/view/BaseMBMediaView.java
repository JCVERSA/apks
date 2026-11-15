package com.mbridge.msdk.nativex.view;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.URLUtil;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.mmadbridge.adsession.media.InteractionType;
import com.iab.omid.library.mmadbridge.adsession.media.PlayerState;
import com.iab.omid.library.mmadbridge.adsession.media.Position;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.download.download.HTMLResourceManager;
import com.mbridge.msdk.foundation.download.download.ResourceManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.nativex.view.mbfullview.BaseView;
import com.mbridge.msdk.nativex.view.mbfullview.MBridgeFullView;
import com.mbridge.msdk.nativex.view.mbfullview.MBridgeTopFullView;
import com.mbridge.msdk.out.BaseTrackingListener;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.out.OnMBMediaViewListener;
import com.mbridge.msdk.out.OnMBMediaViewListenerPlus;
import com.mbridge.msdk.playercommon.VideoPlayerStatusListener;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.video.signal.communication.IRewardCommunication;
import com.mbridge.msdk.videocommon.view.MyImageView;
import com.mbridge.msdk.widget.MBAdChoice;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class BaseMBMediaView extends LinearLayout implements VideoPlayerStatusListener, IRewardCommunication {
    public static final int OPEN_FULLSCREEN_ON_VIDEO_TYPE_1_LANDING_PAGE = 1;
    public static final int OPEN_FULLSCREEN_ON_VIDEO_TYPE_2_NORMAL_FULLSCREEN = 2;
    public static final int OPEN_FULLSCREEN_ON_VIDEO_TYPE_3_NORMAL_FULLSCREEN_ENDCARD = 3;
    public static final int OPEN_FULLSCREEN_ON_VIDEO_TYPE_4_NORMAL_FULLSCREEN_LP = 4;
    public static final int OPEN_FULLSCREEN_ON_VIDEO_TYPE_6_SMALLVIDEO = 6;
    public static final String TAG = "BaseMBMediaView";
    public static final int WHAT_VIEW_FULL_SCREEN = 2;
    public static final int WHAT_VIEW_SMALL_SCREEN = 1;

    private static int f35752n0 = 2;

    private static int f35753o0 = 1;
    private WindVaneWebViewForNV A;
    private MyImageView B;
    private ProgressBar C;
    private View D;
    private BaseView E;
    private RelativeLayout F;
    private RelativeLayout G;
    private TextView H;
    private ProgressBar I;
    private RelativeLayout J;
    private int K;
    private Handler L;
    private CampaignEx M;
    private int N;
    private int O;
    private double P;
    private double Q;
    private int R;
    private int S;
    private w T;
    private SensorManager U;
    private Sensor V;
    private com.mbridge.msdk.videocommon.download.a W;

    private boolean f35754a;

    private s f35755a0;

    private boolean f35756b;

    private OnMBMediaViewListener f35757b0;

    private boolean f35758c;

    private OnMBMediaViewListenerPlus f35759c0;

    private boolean f35760d;

    private int f35761d0;

    private boolean f35762e;

    private boolean f35763e0;

    private boolean f35764f;

    private boolean f35765f0;

    private boolean f35766g;

    private RelativeLayout f35767g0;

    private boolean f35768h;

    private ImageView f35769h0;

    private volatile boolean f35770i;

    private int f35771i0;

    private volatile boolean f35772j;

    private boolean f35773j0;

    private boolean f35774k;

    private Context f35775k0;

    private boolean f35776l;

    private boolean f35777l0;

    private ArrayList<String> f35778m;

    private Runnable f35779m0;

    private ArrayList<String> f35780n;

    private boolean f35781o;

    private boolean f35782p;

    private com.iab.omid.library.mmadbridge.adsession.b f35783q;

    private com.iab.omid.library.mmadbridge.adsession.a f35784r;

    private com.iab.omid.library.mmadbridge.adsession.media.a f35785s;

    private int f35786t;

    protected boolean f35787u;

    private MediaViewPlayerView f35788v;

    private RelativeLayout f35789w;

    private RelativeLayout f35790x;

    private RelativeLayout f35791y;

    private WindVaneWebViewForNV f35792z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            BaseMBMediaView.this.l();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override
        public void onClick(View view) {
            BaseMBMediaView.this.g();
        }
    }

    class c extends com.mbridge.msdk.widget.a {
        c() {
        }

        @Override
        protected void a(View view) {
            try {
                BaseMBMediaView.this.a(view.getContext());
                if (BaseMBMediaView.this.f35785s != null) {
                    try {
                        BaseMBMediaView.this.f35785s.a(InteractionType.CLICK);
                        o0.a("omsdk", "bmnv adUserInteraction click");
                    } catch (Exception e10) {
                        o0.b("omsdk", e10.getMessage());
                    }
                }
            } catch (Exception e11) {
                o0.b(BaseMBMediaView.TAG, e11.getMessage());
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override
        public void run() {
            BaseMBMediaView.this.f35782p = true;
            if (BaseMBMediaView.this.f35768h) {
                TextView unused = BaseMBMediaView.this.H;
            }
        }
    }

    class e extends com.mbridge.msdk.nativex.listener.b {
        e() {
        }

        @Override
        public void a() {
            BaseMBMediaView.this.exitFullScreen();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override
        public void run() {
            try {
                com.mbridge.msdk.nativex.view.mbfullview.a.a(BaseMBMediaView.this.getContext()).a(BaseMBMediaView.this.E, BaseMBMediaView.this.f35770i);
                if (BaseMBMediaView.this.f35771i0 == 0) {
                    BaseMBMediaView.this.O();
                } else {
                    BaseMBMediaView.this.P();
                }
                BaseMBMediaView.this.u();
                BaseMBMediaView.this.o();
                BaseMBMediaView.this.x();
                if (BaseMBMediaView.this.A != null) {
                    BaseMBMediaView.this.A.orientation(BaseMBMediaView.this.f35770i);
                }
            } catch (Exception e10) {
                o0.b(BaseMBMediaView.TAG, e10.getMessage());
            }
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override
        public void run() {
            try {
                if (!BaseMBMediaView.this.f35768h) {
                    BaseMBMediaView baseMBMediaView = BaseMBMediaView.this;
                    if (baseMBMediaView.a((View) baseMBMediaView)) {
                        BaseMBMediaView.this.a0();
                    } else {
                        BaseMBMediaView.this.A();
                    }
                }
                BaseMBMediaView.this.L.postDelayed(this, 300L);
            } catch (Exception e10) {
                o0.b(BaseMBMediaView.TAG, e10.getMessage());
            }
        }
    }

    static class i {

        static final int[] f35801a;

        static {
            int[] iArr = new int[BaseView.a.values().length];
            f35801a = iArr;
            try {
                iArr[BaseView.a.FULL_MIDDLE_VIEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35801a[BaseView.a.FULL_TOP_VIEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    class j extends Handler {
        j() {
        }

        @Override
        public void handleMessage(Message message) {
            Object obj;
            if (message != null) {
                try {
                    int i10 = message.what;
                    if (i10 == 1) {
                        BaseMBMediaView.this.S();
                    } else if (i10 == 3 && (obj = message.obj) != null && (obj instanceof View)) {
                        if (BaseMBMediaView.this.a((View) obj)) {
                            BaseMBMediaView.this.E();
                        }
                    }
                } catch (Exception e10) {
                    o0.b(BaseMBMediaView.TAG, e10.getMessage());
                }
            }
        }
    }

    class k extends com.mbridge.msdk.widget.a {
        k() {
        }

        @Override
        protected void a(View view) {
            try {
                if (!BaseMBMediaView.this.f35768h) {
                    BaseMBMediaView.this.L();
                }
                BaseMBMediaView.this.f35788v.showSoundIndicator(true);
                BaseMBMediaView.this.f35788v.showProgressView(true);
                if (BaseMBMediaView.this.f35760d && !BaseMBMediaView.this.f35768h && (BaseMBMediaView.this.D == null || BaseMBMediaView.this.D.getParent() == null)) {
                    if (!BaseMBMediaView.this.f35788v.halfLoadingViewisVisible() && BaseMBMediaView.this.f35788v.isPlaying()) {
                        BaseMBMediaView.this.a();
                        return;
                    }
                    o0.c(BaseMBMediaView.TAG, "is loading or no playing return;");
                    return;
                }
                if (BaseMBMediaView.this.f35768h) {
                    o0.c(BaseMBMediaView.TAG, "fullScreenShowUI");
                    BaseMBMediaView.this.l();
                    return;
                }
                if (BaseMBMediaView.this.f35775k0 != null) {
                    BaseMBMediaView baseMBMediaView = BaseMBMediaView.this;
                    baseMBMediaView.a(baseMBMediaView.f35775k0);
                } else {
                    BaseMBMediaView.this.a(view.getContext());
                }
                if (BaseMBMediaView.this.f35785s != null) {
                    try {
                        BaseMBMediaView.this.f35785s.a(InteractionType.CLICK);
                        o0.a("omsdk", "mnv adUserInteraction click");
                    } catch (Exception e10) {
                        o0.b("omsdk", e10.getMessage());
                    }
                }
            } catch (Throwable th2) {
                o0.b(BaseMBMediaView.TAG, th2.getMessage(), th2);
            }
        }
    }

    class l implements com.mbridge.msdk.foundation.same.image.c {

        class a extends com.mbridge.msdk.widget.a {
            a() {
            }

            @Override
            protected void a(View view) {
                if (BaseMBMediaView.this.f35775k0 == null) {
                    BaseMBMediaView.this.a(view.getContext());
                } else {
                    BaseMBMediaView baseMBMediaView = BaseMBMediaView.this;
                    baseMBMediaView.a(baseMBMediaView.f35775k0);
                }
            }
        }

        l() {
        }

        @Override
        public void onFailedLoad(String str, String str2) {
        }

        @Override
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (BaseMBMediaView.this.B == null || BaseMBMediaView.this.f35755a0 != s.BIG_IMAGE) {
                return;
            }
            if (bitmap != null) {
                BaseMBMediaView.this.R = bitmap.getWidth();
                BaseMBMediaView.this.S = bitmap.getHeight();
                BaseMBMediaView.this.B.setImageUrl(str);
                BaseMBMediaView.this.B.setImageBitmap(bitmap);
            }
            BaseMBMediaView.this.B.setOnClickListener(new a());
        }
    }

    class m extends com.mbridge.msdk.widget.a {
        m() {
        }

        @Override
        protected void a(View view) {
            if (BaseMBMediaView.this.f35775k0 != null) {
                BaseMBMediaView baseMBMediaView = BaseMBMediaView.this;
                baseMBMediaView.a(baseMBMediaView.f35775k0);
            } else {
                BaseMBMediaView.this.a(view.getContext());
            }
            o0.c(BaseMBMediaView.TAG, "CLICK WEBVIEW LAYOUT ");
        }
    }

    class n implements NativeListener.NativeTrackingListener {
        n() {
        }

        @Override
        public void onDismissLoading(Campaign campaign) {
        }

        @Override
        public void onDownloadFinish(Campaign campaign) {
        }

        @Override
        public void onDownloadProgress(int i10) {
        }

        @Override
        public void onDownloadStart(Campaign campaign) {
        }

        @Override
        public void onFinishRedirection(Campaign campaign, String str) {
            try {
                BaseMBMediaView.this.n();
                BaseMBMediaView.this.m();
                BaseMBMediaView.this.a(campaign, str);
            } catch (Exception e10) {
                o0.b(BaseMBMediaView.TAG, e10.getMessage());
            }
        }

        @Override
        public boolean onInterceptDefaultLoadingDialog() {
            return true;
        }

        @Override
        public void onRedirectionFailed(Campaign campaign, String str) {
            try {
                BaseMBMediaView.this.n();
                BaseMBMediaView.this.m();
                BaseMBMediaView.this.b(campaign, str);
            } catch (Exception e10) {
                o0.b(BaseMBMediaView.TAG, e10.getMessage());
            }
        }

        @Override
        public void onShowLoading(Campaign campaign) {
        }

        @Override
        public void onStartRedirection(Campaign campaign, String str) {
            try {
                BaseMBMediaView.this.Y();
                BaseMBMediaView.this.W();
                BaseMBMediaView.this.c(campaign, str);
            } catch (Exception e10) {
                o0.b(BaseMBMediaView.TAG, e10.getMessage());
            }
        }
    }

    class o implements Runnable {

        final String f35808a;

        o(String str) {
            this.f35808a = str;
        }

        @Override
        public void run() {
            try {
                BaseMBMediaView.this.I();
                BaseMBMediaView.this.c(this.f35808a);
                t0.a(BaseMBMediaView.this.M.getCampaignUnitId(), BaseMBMediaView.this.M, com.mbridge.msdk.foundation.same.a.f34520x);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b(BaseMBMediaView.TAG, e10.getMessage());
                }
            }
        }
    }

    class p extends MediaViewPlayerView.h {
        p(MediaViewPlayerView mediaViewPlayerView) {
            super(mediaViewPlayerView);
        }

        @Override
        public void a() {
            int nvT2 = BaseMBMediaView.this.M.getNvT2();
            if (!BaseMBMediaView.this.f35768h || (nvT2 != 3 && nvT2 != 4)) {
                super.a();
                return;
            }
            WindVaneWebViewForNV endCardWebview = BaseMBMediaView.this.getEndCardWebview();
            if (endCardWebview == null) {
                super.a();
                return;
            }
            View viewQ = BaseMBMediaView.this.q();
            if (viewQ == null) {
                super.a();
                return;
            }
            if (nvT2 == 3 && BaseMBMediaView.this.f35763e0) {
                com.mbridge.msdk.nativex.view.mbfullview.a.a(BaseMBMediaView.this.getContext()).a(viewQ, BaseMBMediaView.this.E);
                com.mbridge.msdk.mbnative.report.a.a(BaseMBMediaView.this.getContext(), BaseMBMediaView.this.M, BaseMBMediaView.this.M.getCampaignUnitId());
            } else {
                if (nvT2 != 4) {
                    super.a();
                    return;
                }
                com.mbridge.msdk.nativex.view.mbfullview.a.a(BaseMBMediaView.this.getContext()).a(viewQ, BaseMBMediaView.this.E);
                String clickURL = BaseMBMediaView.this.M.getClickURL();
                if (!TextUtils.isEmpty(clickURL)) {
                    com.mbridge.msdk.click.a.a(BaseMBMediaView.this.getContext(), BaseMBMediaView.this.M, BaseMBMediaView.this.getUnitId(), BaseMBMediaView.this.getAddNVT2ToNoticeURL(), true, false, com.mbridge.msdk.click.retry.a.f33588o);
                    BaseMBMediaView.this.A.loadUrl(clickURL);
                }
            }
            endCardWebview.webViewShow(BaseMBMediaView.this.M, BaseMBMediaView.this.getUnitId());
            endCardWebview.orientation(BaseMBMediaView.this.f35770i);
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override
        public void onClick(View view) {
            BaseMBMediaView.this.exitFullScreen();
        }
    }

    class r implements View.OnKeyListener {
        r() {
        }

        @Override
        public boolean onKey(View view, int i10, KeyEvent keyEvent) {
            try {
                if (keyEvent.getKeyCode() != 4) {
                    return false;
                }
                BaseMBMediaView.this.g();
                return true;
            } catch (Throwable th2) {
                o0.b(BaseMBMediaView.TAG, th2.getMessage());
                return false;
            }
        }
    }

    private enum s {
        BIG_IMAGE,
        VIDEO,
        GIF
    }

    private static final class t implements Runnable {

        WeakReference<BaseMBMediaView> f35817a;

        public t(BaseMBMediaView baseMBMediaView) {
            this.f35817a = new WeakReference<>(baseMBMediaView);
        }

        @Override
        public void run() {
            BaseMBMediaView baseMBMediaView = this.f35817a.get();
            if (baseMBMediaView != null) {
                try {
                    if (baseMBMediaView.f35755a0 == null || baseMBMediaView.f35755a0 != s.BIG_IMAGE) {
                        return;
                    }
                    baseMBMediaView.U();
                    baseMBMediaView.f35755a0 = s.VIDEO;
                    baseMBMediaView.changeNoticeURL();
                } catch (Throwable th2) {
                    o0.b(BaseMBMediaView.TAG, th2.getMessage(), th2);
                }
            }
        }
    }

    private static final class v implements com.mbridge.msdk.mbsignalcommon.base.a {
        private v() {
        }

        @Override
        public boolean a(String str) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    if (s0.a.b(str)) {
                        s0.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, (NativeListener.NativeTrackingListener) null);
                        return true;
                    }
                    if (URLUtil.isNetworkUrl(str)) {
                        return false;
                    }
                    s0.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, (BaseTrackingListener) null);
                    return true;
                }
            } catch (Exception e10) {
                o0.b(BaseMBMediaView.TAG, e10.getMessage());
            }
            return false;
        }

        v(j jVar) {
            this();
        }
    }

    private class w implements SensorEventListener {

        class a implements Runnable {
            a() {
            }

            @Override
            public void run() {
                try {
                    com.mbridge.msdk.nativex.view.mbfullview.a.a(BaseMBMediaView.this.getContext()).a(BaseMBMediaView.this.E, BaseMBMediaView.this.f35770i);
                    BaseMBMediaView.this.O();
                    BaseMBMediaView.this.u();
                    BaseMBMediaView.this.o();
                    BaseMBMediaView.this.x();
                    if (BaseMBMediaView.this.A != null) {
                        BaseMBMediaView.this.A.orientation(BaseMBMediaView.this.f35770i);
                    }
                } catch (Exception e10) {
                    o0.b(BaseMBMediaView.TAG, e10.getMessage());
                }
            }
        }

        class b implements Runnable {
            b() {
            }

            @Override
            public void run() {
                try {
                    com.mbridge.msdk.nativex.view.mbfullview.a.a(BaseMBMediaView.this.getContext()).a(BaseMBMediaView.this.E, BaseMBMediaView.this.f35770i);
                    BaseMBMediaView.this.P();
                    BaseMBMediaView.this.u();
                    BaseMBMediaView.this.o();
                    BaseMBMediaView.this.x();
                    if (BaseMBMediaView.this.A != null) {
                        BaseMBMediaView.this.A.orientation(BaseMBMediaView.this.f35770i);
                    }
                } catch (Exception e10) {
                    o0.b(BaseMBMediaView.TAG, e10.getMessage());
                }
            }
        }

        private w() {
        }

        @Override
        public void onAccuracyChanged(Sensor sensor, int i10) {
        }

        @Override
        public void onSensorChanged(SensorEvent sensorEvent) {
            int iRound;
            if (BaseMBMediaView.this.f35773j0) {
                return;
            }
            try {
                float[] fArr = sensorEvent.values;
                float f10 = -fArr[0];
                float f11 = -fArr[1];
                float f12 = -fArr[2];
                if (((f10 * f10) + (f11 * f11)) * 4.0f >= f12 * f12) {
                    iRound = 90 - Math.round(((float) Math.atan2(-f11, f10)) * 57.29578f);
                    while (iRound >= 360) {
                        iRound -= 360;
                    }
                    while (iRound < 0) {
                        iRound += 360;
                    }
                } else {
                    iRound = -1;
                }
                float allScreenWidth = BaseMBMediaView.this.getAllScreenWidth();
                int iH = t0.h(BaseMBMediaView.this.getContext());
                if ((iRound > 45 && iRound < 135) || (iRound > 225 && iRound < 315)) {
                    if (allScreenWidth < iH || BaseMBMediaView.this.f35772j) {
                        return;
                    }
                    BaseMBMediaView.this.f35770i = true;
                    BaseMBMediaView.this.f35772j = true;
                    BaseMBMediaView.this.L.postDelayed(new a(), 200L);
                    return;
                }
                if (((iRound <= 135 || iRound >= 225) && ((iRound <= 315 || iRound >= 360) && ((iRound < 0 || iRound > 45) && iRound != -1))) || allScreenWidth > iH || !BaseMBMediaView.this.f35772j) {
                    return;
                }
                BaseMBMediaView.this.f35770i = false;
                BaseMBMediaView.this.f35772j = false;
                BaseMBMediaView.this.L.postDelayed(new b(), 200L);
            } catch (Throwable th2) {
                o0.b(BaseMBMediaView.TAG, th2.getMessage(), th2);
            }
        }

        w(BaseMBMediaView baseMBMediaView, j jVar) {
            this();
        }
    }

    private static final class x implements com.mbridge.msdk.videocommon.listener.a {

        WeakReference<BaseMBMediaView> f35822a;

        public x(BaseMBMediaView baseMBMediaView) {
            this.f35822a = new WeakReference<>(baseMBMediaView);
        }

        @Override
        public void a(String str, String str2) {
        }

        @Override
        public void a(String str) {
            BaseMBMediaView baseMBMediaView = this.f35822a.get();
            if (baseMBMediaView != null) {
                baseMBMediaView.L.post(new t(baseMBMediaView));
            }
        }
    }

    private static final class y extends WebViewClient {

        WeakReference<BaseMBMediaView> f35823a;

        public y(BaseMBMediaView baseMBMediaView) {
            this.f35823a = new WeakReference<>(baseMBMediaView);
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            try {
                BaseMBMediaView baseMBMediaView = this.f35823a.get();
                if (baseMBMediaView == null || baseMBMediaView.f35755a0 == null || baseMBMediaView.f35755a0 != s.BIG_IMAGE) {
                    return;
                }
                baseMBMediaView.R();
                baseMBMediaView.f35755a0 = s.GIF;
                baseMBMediaView.changeNoticeURL();
            } catch (Exception e10) {
                o0.b(BaseMBMediaView.TAG, e10.getMessage());
            }
        }

        @Override
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            o0.b(BaseMBMediaView.TAG, "WebView called onRenderProcessGone");
            if (webView != null) {
                try {
                    ViewGroup viewGroup = (ViewGroup) webView.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(webView);
                    }
                    if (webView instanceof WindVaneWebView) {
                        ((WindVaneWebView) webView).release();
                    } else {
                        webView.destroy();
                    }
                } catch (Throwable th2) {
                    o0.b(BaseMBMediaView.TAG, th2.getMessage());
                }
            }
            return true;
        }
    }

    public BaseMBMediaView(Context context) {
        super(context);
        this.f35754a = true;
        this.f35756b = true;
        this.f35758c = true;
        this.f35760d = true;
        this.f35762e = true;
        this.f35764f = false;
        this.f35766g = true;
        this.f35768h = false;
        this.f35770i = false;
        this.f35772j = false;
        this.f35774k = true;
        this.f35776l = true;
        this.f35778m = new ArrayList<>();
        this.f35780n = new ArrayList<>();
        this.f35781o = false;
        this.f35782p = false;
        this.f35783q = null;
        this.f35784r = null;
        this.f35785s = null;
        this.f35786t = 0;
        this.f35787u = false;
        this.W = null;
        this.f35755a0 = null;
        this.f35763e0 = false;
        this.f35765f0 = false;
        this.f35773j0 = false;
        this.f35777l0 = false;
        this.f35779m0 = new h();
        b(context);
    }

    private void T() {
        try {
            MediaViewPlayerView mediaViewPlayerView = this.f35788v;
            if (mediaViewPlayerView == null) {
                return;
            }
            mediaViewPlayerView.setOnClickListener(new k());
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    public void U() {
        v();
        Z();
    }

    private void V() {
        try {
            t0.a((ImageView) this.B);
            this.B.setVisibility(0);
            this.f35789w.setVisibility(8);
            this.f35791y.setVisibility(8);
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    public void W() {
        try {
            ProgressBar progressBar = this.I;
            if (progressBar != null) {
                progressBar.setVisibility(0);
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    private void X() {
        try {
            this.f35789w.setVisibility(8);
            this.B.setVisibility(8);
            this.f35791y.setVisibility(0);
            this.f35792z.setVisibility(0);
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    public void Y() {
        try {
            ProgressBar progressBar = this.C;
            if (progressBar != null) {
                progressBar.setVisibility(0);
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    private void Z() {
        try {
            this.f35789w.setVisibility(0);
            this.B.setVisibility(8);
            this.f35791y.setVisibility(8);
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    public void a0() {
        try {
            MediaViewPlayerView mediaViewPlayerView = this.f35788v;
            if (mediaViewPlayerView == null || !mediaViewPlayerView.hasPrepare() || this.f35788v.isPlaying() || this.f35788v.isComplete() || !this.f35788v.hasPrepare()) {
                return;
            }
            this.f35788v.startOrPlayVideo();
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    private void b0() {
        w wVar;
        try {
            SensorManager sensorManager = this.U;
            if (sensorManager == null || (wVar = this.T) == null) {
                return;
            }
            sensorManager.unregisterListener(wVar);
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    private void c0() {
        com.mbridge.msdk.videocommon.download.a aVar = this.W;
        if (aVar != null) {
            aVar.b((com.mbridge.msdk.videocommon.listener.a) null);
        }
    }

    private float getAllScreenHeight() {
        try {
            float fH = t0.h(getContext());
            return !this.f35770i ? fH + t0.c(getContext()) : fH;
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
            return 0.0f;
        }
    }

    public float getAllScreenWidth() {
        try {
            float fI = t0.i(getContext());
            return this.f35770i ? fI + t0.c(getContext()) : fI;
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
            return 0.0f;
        }
    }

    private int getCDRate() {
        if (getUnitSetting() != null) {
            return getUnitSetting().i();
        }
        return 0;
    }

    public WindVaneWebViewForNV getEndCardWebview() {
        try {
            WindVaneWebViewForNV windVaneWebViewForNV = this.A;
            if (windVaneWebViewForNV != null && this.f35765f0) {
                return windVaneWebViewForNV;
            }
            if (this.f35765f0) {
                return null;
            }
            b(true);
            return null;
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
            return null;
        }
    }

    private String getPlayUrl() {
        try {
            if (this.M == null) {
                return null;
            }
            com.mbridge.msdk.videocommon.download.a aVar = this.W;
            if (aVar != null && aVar.j() == 5) {
                String strK = this.W.k();
                if (new File(strK).exists()) {
                    if (!this.W.q()) {
                        if (this.W.e() == t0.a(new File(strK))) {
                        }
                    }
                    return strK;
                }
            }
            String videoUrlEncode = this.M.getVideoUrlEncode();
            if (y0.b(videoUrlEncode)) {
                return videoUrlEncode;
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
        return null;
    }

    private int getReadyRate() {
        if (getUnitSetting() != null) {
            return getUnitSetting().C();
        }
        return 100;
    }

    public String getUnitId() {
        try {
            CampaignEx campaignEx = this.M;
            if (campaignEx == null || !y0.b(campaignEx.getCampaignUnitId())) {
                return null;
            }
            return this.M.getCampaignUnitId();
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
            return null;
        }
    }

    private com.mbridge.msdk.setting.l getUnitSetting() {
        try {
            CampaignEx campaignEx = this.M;
            if (campaignEx != null && !y0.a(campaignEx.getCampaignUnitId())) {
                String campaignUnitId = this.M.getCampaignUnitId();
                String strB = com.mbridge.msdk.foundation.controller.c.m().b();
                if (!y0.a(campaignUnitId) && !y0.a(strB)) {
                    com.mbridge.msdk.setting.l lVarE = com.mbridge.msdk.setting.h.b().e(strB, campaignUnitId);
                    return lVarE != null ? lVarE : com.mbridge.msdk.setting.l.i(campaignUnitId);
                }
                return com.mbridge.msdk.setting.l.i(campaignUnitId);
            }
            return null;
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
            return null;
        }
    }

    private void setIsFrontDesk(boolean z10) {
        MediaViewPlayerView mediaViewPlayerView = this.f35788v;
        if (mediaViewPlayerView != null) {
            mediaViewPlayerView.setIsFrontDesk(z10);
        }
    }

    private void setPlayViewParamsDefault(View view) {
        if (view == null) {
            return;
        }
        try {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
            layoutParams.width = -1;
            if (this.f35770i) {
                layoutParams.height = -1;
            } else {
                layoutParams.height = (((int) getAllScreenWidth()) * 9) / 16;
                layoutParams.addRule(13);
            }
            view.setLayoutParams(layoutParams);
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    @Override
    public void cai(Object obj, String str) {
        o0.a(TAG, "cai:" + str);
        if (TextUtils.isEmpty(str)) {
            com.mbridge.msdk.mbsignalcommon.communication.d.a(obj, "params is null");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            try {
                String strOptString = new JSONObject(str).optString("packageName");
                if (TextUtils.isEmpty(strOptString)) {
                    com.mbridge.msdk.mbsignalcommon.communication.d.a(obj, "packageName is empty");
                }
                int i10 = t0.c(com.mbridge.msdk.foundation.controller.c.m().d(), strOptString) ? 1 : 2;
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", com.mbridge.msdk.mbsignalcommon.communication.d.f35664b);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("result", i10);
                    jSONObject.put("data", jSONObject2);
                    com.mbridge.msdk.mbsignalcommon.windvane.f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e10) {
                    com.mbridge.msdk.mbsignalcommon.communication.d.a(obj, e10.getMessage());
                    o0.a(TAG, e10.getMessage());
                }
            } catch (Throwable th2) {
                com.mbridge.msdk.mbsignalcommon.communication.d.a(obj, "exception: " + th2.getLocalizedMessage());
                o0.b(TAG, "cai", th2);
            }
        } catch (JSONException e11) {
            com.mbridge.msdk.mbsignalcommon.communication.d.a(obj, "exception: " + e11.getLocalizedMessage());
            o0.b(TAG, "cai", e11);
        }
    }

    public boolean canShowVideo() {
        return a(false) == s.VIDEO;
    }

    public void changeNoticeURL() {
        String str;
        CampaignEx campaignEx = this.M;
        if (campaignEx != null) {
            String noticeUrl = campaignEx.getNoticeUrl();
            if (TextUtils.isEmpty(noticeUrl)) {
                return;
            }
            if (noticeUrl.contains("is_video")) {
                s sVar = this.f35755a0;
                if (sVar == s.VIDEO) {
                    if (noticeUrl.contains("is_video=2")) {
                        noticeUrl = noticeUrl.replace("is_video=2", "is_video=1");
                    }
                } else if (sVar == s.BIG_IMAGE && noticeUrl.contains("is_video=1")) {
                    noticeUrl = noticeUrl.replace("is_video=1", "is_video=2");
                }
            } else {
                s sVar2 = this.f35755a0;
                if (sVar2 == s.VIDEO) {
                    str = "1";
                } else {
                    str = sVar2 == s.BIG_IMAGE ? "2" : "";
                }
                StringBuilder sb2 = new StringBuilder(noticeUrl);
                if (noticeUrl.contains(UrlUtils.QUESTION_MARK)) {
                    sb2.append("&is_video=");
                    sb2.append(str);
                } else {
                    sb2.append("?is_video=");
                    sb2.append(str);
                }
                noticeUrl = sb2.toString();
            }
            this.M.setNoticeUrl(noticeUrl);
        }
    }

    public void destory() {
        try {
            MediaViewPlayerView mediaViewPlayerView = this.f35788v;
            if (mediaViewPlayerView != null) {
                mediaViewPlayerView.release();
            }
            c0();
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    public void exitFullScreen() {
        try {
            g();
            if (this.f35756b) {
                this.f35788v.onClickPlayButton();
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    public String getAddNVT2ToNoticeURL() {
        CampaignEx campaignEx = this.M;
        if (campaignEx == null) {
            return null;
        }
        String noticeUrl = campaignEx.getNoticeUrl();
        if (TextUtils.isEmpty(noticeUrl) || noticeUrl.contains(CampaignEx.JSON_KEY_NV_T2)) {
            return noticeUrl;
        }
        return noticeUrl + "&nv_t2=" + this.M.getNvT2();
    }

    @Override
    public void getEndScreenInfo(Object obj, String str) {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.M);
            String strA = a(arrayList, getUnitId(), "MAL_16.9.71,3.0.1");
            String strEncodeToString = !TextUtils.isEmpty(strA) ? Base64.encodeToString(strA.getBytes(), 2) : "";
            o0.b(TAG, "getEndScreenInfo-mCampaign.name:" + this.M.getAppName());
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().b(obj, strEncodeToString);
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001f  */
    public BaseView getFullScreenViewByStyle(Context context, BaseView.a aVar) {
        BaseView mBridgeFullView;
        BaseView baseView;
        int i10 = i.f35801a[aVar.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                baseView = null;
            } else {
                mBridgeFullView = new MBridgeTopFullView(context);
            }
            if (baseView != null) {
                baseView.setStytle(aVar);
            }
            return baseView;
        }
        mBridgeFullView = new MBridgeFullView(context);
        baseView = mBridgeFullView;
        if (baseView != null) {
            baseView.setStytle(aVar);
        }
        return baseView;
    }

    public float getMediaContentAspectRatio() {
        float f10 = 0.0f;
        try {
            CampaignEx campaignEx = this.M;
            if (campaignEx != null) {
                String videoResolution = !TextUtils.isEmpty(campaignEx.getVideoUrlEncode()) ? this.M.getVideoResolution() : this.M.getImageSize();
                if (!TextUtils.isEmpty(videoResolution)) {
                    String[] strArrSplit = videoResolution.split("x");
                    if (strArrSplit.length == 2) {
                        f10 = Integer.parseInt(strArrSplit[0]) / Integer.parseInt(strArrSplit[1]);
                    }
                }
                o0.b(TAG, "resource ratio is : " + f10);
            }
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
        return f10;
    }

    public BaseView.a handleViewStyleResult(Context context) {
        int nvT2 = this.M.getNvT2();
        if (nvT2 == 1) {
            a(context);
        } else {
            if (nvT2 == 2 || nvT2 == 3 || nvT2 == 4) {
                return BaseView.a.FULL_MIDDLE_VIEW;
            }
            if (nvT2 == 6) {
                return BaseView.a.FULL_TOP_VIEW;
            }
        }
        return null;
    }

    @Override
    public void handlerPlayableException(Object obj, String str) {
    }

    public void hideEndCardWebViewCloseBtn() {
        ImageView imageView = this.f35769h0;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        this.f35769h0.setVisibility(8);
    }

    @Override
    public void install(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        try {
            Context context = this.f35775k0;
            if (context != null) {
                a(context);
            } else {
                if (!(obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) || (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f35709b) == null) {
                    return;
                }
                a(windVaneWebView.getContext());
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    public boolean ismCurIsFullScreen() {
        return this.f35768h;
    }

    @Override
    public void notifyCloseBtn(Object obj, String str) {
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        try {
            if (this.f35758c) {
                B();
            }
            this.f35766g = isHardwareAccelerated();
            this.f35771i0 = getOrientation();
            N();
            this.L.postDelayed(this.f35779m0, 300L);
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    @Override
    public void onBufferingEnd() {
        o0.c("omsdk", "base media end");
        com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.f35785s;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override
    public void onBufferingStart(String str) {
        o0.c("omsdk", "base media start");
        com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.f35785s;
        if (aVar != null) {
            aVar.c();
        }
    }

    @Override
    public void onBufferingTimeOut(String str) {
    }

    @Override
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f35773j0) {
            int i10 = this.f35771i0;
            int i11 = configuration.orientation;
            if (i10 == i11) {
                return;
            }
            this.f35771i0 = i11;
            this.f35770i = i11 == 0;
            this.f35772j = this.f35771i0 == 0;
            this.L.postDelayed(new g(), 200L);
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            if (this.f35783q != null) {
                MediaViewPlayerView mediaViewPlayerView = this.f35788v;
                if (mediaViewPlayerView != null) {
                    mediaViewPlayerView.unregisterView();
                }
                this.f35783q.c();
                this.f35783q = null;
            }
            if (this.f35785s != null) {
                this.f35785s = null;
            }
            if (this.f35784r != null) {
                this.f35784r = null;
            }
            this.L.removeCallbacks(this.f35779m0);
            C();
            b0();
            c0();
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        try {
            this.N = getHeight();
            int width = getWidth();
            this.O = width;
            if (width == 0) {
                this.O = getMeasuredWidth();
            }
            if (this.N == 0) {
                this.N = getMeasuredHeight();
            }
            if (this.O == 0 && this.N == 0) {
                this.O = (int) getAllScreenWidth();
            }
            s sVar = this.f35755a0;
            if (sVar != s.VIDEO || this.f35768h) {
                if (sVar == s.BIG_IMAGE && !this.f35768h) {
                    o();
                    return;
                } else {
                    if (sVar != s.GIF || this.f35768h) {
                        return;
                    }
                    x();
                    return;
                }
            }
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (this.N == 0 || ((layoutParams != null && layoutParams.height == -2) || (layoutParams != null && layoutParams.height == -1))) {
                this.N = (int) ((((double) this.O) * this.Q) / this.P);
            }
            u();
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    @Override
    public void onPlayCompleted() {
        com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.f35785s;
        if (aVar != null) {
            aVar.d();
        }
    }

    @Override
    public void onPlayError(String str) {
        try {
            o0.c("error", str);
            o oVar = new o(str);
            if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                com.mbridge.msdk.foundation.same.threadpool.a.b().execute(oVar);
            } else {
                oVar.run();
            }
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    @Override
    public void onPlayProgress(int i10, int i11) {
        int i12;
        String str;
        b(i10);
        a(i10, i11);
        com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.f35785s;
        if (aVar != null) {
            int i13 = (i10 * 100) / i11;
            int i14 = ((i10 + 1) * 100) / i11;
            if (i13 <= 25 && 25 < i14) {
                aVar.h();
            } else if (i13 <= 50 && 50 < i14) {
                aVar.i();
            } else if (i13 <= 75 && 75 < i14) {
                aVar.o();
            }
        }
        if (getReadyRate() == 100 || this.f35777l0) {
            return;
        }
        int cDRate = getCDRate();
        int readyRate = getReadyRate();
        if (readyRate == 0) {
            return;
        }
        if (cDRate > readyRate) {
            cDRate = readyRate / 2;
        }
        if (cDRate < 0 || i10 < (i12 = (i11 * cDRate) / 100)) {
            return;
        }
        if (this.M.getAdType() == 94 || this.M.getAdType() == 287) {
            str = this.M.getRequestId() + this.M.getId() + this.M.getVideoUrlEncode();
        } else {
            str = this.M.getId() + this.M.getVideoUrlEncode() + this.M.getBidToken();
        }
        com.mbridge.msdk.videocommon.download.a aVarA = com.mbridge.msdk.videocommon.download.b.getInstance().a(getUnitId(), str);
        if (aVarA != null) {
            aVarA.v();
            this.f35777l0 = true;
            o0.b(TAG, "CDRate is : " + i12 + " and start download !");
        }
    }

    @Override
    public void onPlayProgressMS(int i10, int i11) {
    }

    @Override
    public void onPlaySetDataSourceError(String str) {
        o0.c("errorstr", str);
    }

    @Override
    public void onPlayStarted(int i10) {
        com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.f35785s;
        if (aVar != null) {
            try {
                aVar.n(i10, this.f35764f ? 1.0f : 0.0f);
            } catch (IllegalArgumentException e10) {
                o0.a("omsdk", e10.getMessage());
            }
        }
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        try {
            this.f35762e = z10;
            if (this.f35755a0 == s.VIDEO) {
                setIsFrontDesk(z10);
            }
            r();
            requestLayout();
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    @Override
    public void openURL(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        o0.b(TAG, "openURL:" + str);
        if (TextUtils.isEmpty(str)) {
            com.mbridge.msdk.mbsignalcommon.communication.d.a(obj, "params is null");
            return;
        }
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (contextD == null) {
            try {
                if ((obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f35709b) != null) {
                    contextD = windVaneWebView.getContext();
                }
            } catch (Exception e10) {
                o0.b(TAG, e10.getMessage());
            }
        }
        if (contextD == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("url");
            int iOptInt = jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
            if (iOptInt == 1) {
                com.mbridge.msdk.click.c.c(contextD, strOptString);
            } else if (iOptInt == 2) {
                com.mbridge.msdk.click.c.e(contextD, strOptString);
            }
        } catch (JSONException e11) {
            o0.b(TAG, e11.getMessage());
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    public void setAllowLoopPlay(boolean z10) {
        this.f35756b = z10;
    }

    public void setAllowScreenChange(boolean z10) {
        this.f35758c = z10;
    }

    public void setAllowVideoRefresh(boolean z10) {
        this.f35754a = z10;
    }

    public void setFollowActivityOrientation(boolean z10) {
        this.f35773j0 = z10;
    }

    public void setFullScreenViewBackgroundColor(int i10) {
        this.f35786t = i10;
    }

    public void setIsAllowFullScreen(boolean z10) {
        this.f35760d = z10;
    }

    public void setNativeAd(Campaign campaign) {
        String str;
        if (campaign == null) {
            return;
        }
        try {
            CampaignEx campaignEx = this.M;
            if (campaignEx == null || campaignEx != campaign) {
                M();
                p();
                CampaignEx campaignEx2 = (CampaignEx) campaign;
                this.M = campaignEx2;
                if (campaignEx2.getMediaViewHolder() == null) {
                    CampaignEx.b bVar = new CampaignEx.b();
                    bVar.f34302a = this.M.getAdvImpList();
                    this.M.setMediaViewHolder(bVar);
                }
                if (this.M.getAdType() == 94 || this.M.getAdType() == 287) {
                    str = this.M.getRequestId() + this.M.getId() + this.M.getVideoUrlEncode();
                } else {
                    str = this.M.getId() + this.M.getVideoUrlEncode() + this.M.getBidToken();
                }
                this.W = com.mbridge.msdk.videocommon.download.b.getInstance().a(getUnitId(), str);
                if (this.f35781o) {
                    if (this.f35783q != null) {
                        MediaViewPlayerView mediaViewPlayerView = this.f35788v;
                        if (mediaViewPlayerView != null) {
                            mediaViewPlayerView.unregisterView();
                        }
                        this.f35783q.c();
                        this.f35783q = null;
                    }
                    if (this.f35785s != null) {
                        this.f35785s = null;
                    }
                    if (this.f35784r != null) {
                        this.f35784r = null;
                    }
                }
                CampaignEx campaignEx3 = this.M;
                if (campaignEx3 != null && campaignEx3.isActiveOm()) {
                    this.f35783q = com.mbridge.msdk.omsdk.b.a(getContext(), TextUtils.isEmpty(this.M.getVideoUrlEncode()), this.M.getOmid(), this.M.getRequestId(), this.M.getId(), getUnitId(), "", this.M.getRequestIdNotice());
                }
                if (this.f35781o) {
                    N();
                }
            }
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    public void setOnMediaViewListener(OnMBMediaViewListener onMBMediaViewListener) {
        this.f35757b0 = onMBMediaViewListener;
    }

    @Override
    public void setOrientation(Object obj, String str) {
    }

    public void setProgressVisibility(boolean z10) {
        this.f35774k = z10;
        MediaViewPlayerView mediaViewPlayerView = this.f35788v;
        if (mediaViewPlayerView != null) {
            mediaViewPlayerView.showProgressView(z10);
        }
    }

    public void setSoundIndicatorVisibility(boolean z10) {
        this.f35776l = z10;
        MediaViewPlayerView mediaViewPlayerView = this.f35788v;
        if (mediaViewPlayerView != null) {
            mediaViewPlayerView.showSoundIndicator(z10);
        }
    }

    public void setVideoSoundOnOff(boolean z10) {
        this.f35764f = z10;
        MediaViewPlayerView mediaViewPlayerView = this.f35788v;
        if (mediaViewPlayerView != null) {
            if (z10) {
                mediaViewPlayerView.openSound();
            } else {
                mediaViewPlayerView.closeSound();
            }
        }
    }

    public void showEndCardWebViewCloseBtn() {
        ImageView imageView = this.f35769h0;
        if (imageView == null || imageView.getVisibility() == 0) {
            return;
        }
        this.f35769h0.setVisibility(0);
    }

    @Override
    public void toggleCloseBtn(Object obj, String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                try {
                    new JSONObject(str).optInt("state", 1);
                } catch (Exception e10) {
                    o0.b(TAG, e10.getMessage());
                }
            }
            o0.b(TAG, "SHOW CLOSE BTN ");
            showEndCardWebViewCloseBtn();
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().b(obj, a(0));
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(obj, a(1));
        }
    }

    @Override
    public void triggerCloseBtn(Object obj, String str) {
        try {
            exitFullScreen();
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().b(obj, a(0));
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(obj, a(1));
        }
    }

    public void updateViewManger(boolean z10) {
        com.mbridge.msdk.nativex.view.mbfullview.a aVarA = com.mbridge.msdk.nativex.view.mbfullview.a.a(getContext());
        if (aVarA != null) {
            try {
                aVarA.a(this.E);
                aVarA.a(z10, !this.f35788v.isComplete(), this.E);
                aVarA.a(z10, this.E, this.f35761d0);
            } catch (NullPointerException e10) {
                e10.printStackTrace();
                return;
            }
        }
        BaseView baseView = this.E;
        if (!(baseView instanceof MBridgeTopFullView) || aVarA == null) {
            return;
        }
        aVarA.a(!z10, baseView);
    }

    class f extends com.mbridge.msdk.mbsignalcommon.listener.b {
        f() {
        }

        @Override
        public void a(WebView webView, String str) {
            super.a(webView, str);
            BaseMBMediaView.this.f35763e0 = true;
        }

        @Override
        public void a(WebView webView, int i10, String str, String str2) {
            super.a(webView, i10, str, str2);
            BaseMBMediaView.this.f35763e0 = false;
        }
    }

    private static final class u implements com.mbridge.msdk.nativex.listener.a {

        WeakReference<BaseMBMediaView> f35818a;

        public u(BaseMBMediaView baseMBMediaView) {
            this.f35818a = new WeakReference<>(baseMBMediaView);
        }

        @Override
        public void a() {
            BaseMBMediaView baseMBMediaView = this.f35818a.get();
            if (baseMBMediaView != null) {
                baseMBMediaView.K();
            }
        }

        @Override
        public void b() {
            BaseMBMediaView baseMBMediaView = this.f35818a.get();
            if (baseMBMediaView != null) {
                baseMBMediaView.G();
            }
        }

        @Override
        public void c() {
            BaseMBMediaView baseMBMediaView = this.f35818a.get();
            if (baseMBMediaView != null) {
                baseMBMediaView.H();
            }
        }

        @Override
        public void d() {
            BaseMBMediaView baseMBMediaView = this.f35818a.get();
            if (baseMBMediaView != null) {
                baseMBMediaView.J();
            }
        }

        @Override
        public void a(String str) {
            BaseMBMediaView baseMBMediaView = this.f35818a.get();
            if (baseMBMediaView != null) {
                baseMBMediaView.a(str);
            }
        }

        @Override
        public void b(String str) {
            BaseMBMediaView baseMBMediaView = this.f35818a.get();
            if (baseMBMediaView != null) {
                baseMBMediaView.b(str);
            }
        }
    }

    public void A() {
        try {
            MediaViewPlayerView mediaViewPlayerView = this.f35788v;
            if (mediaViewPlayerView != null && mediaViewPlayerView.hasPrepare() && this.f35788v.isPlaying()) {
                z();
            }
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    private void B() {
        try {
            SensorManager sensorManager = (SensorManager) getContext().getSystemService("sensor");
            this.U = sensorManager;
            this.V = sensorManager.getDefaultSensor(1);
            w wVar = new w(this, null);
            this.T = wVar;
            this.U.registerListener(wVar, this.V, 2);
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    private void C() {
        Handler handler = this.L;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    private void D() {
        if (this.M.isReportClick()) {
            return;
        }
        this.M.setReportClick(true);
        CampaignEx campaignEx = this.M;
        if (campaignEx == null || campaignEx.getNativeVideoTracking() == null || this.M.getNativeVideoTracking().d() == null) {
            return;
        }
        Context context = getContext();
        CampaignEx campaignEx2 = this.M;
        com.mbridge.msdk.click.a.a(context, campaignEx2, campaignEx2.getCampaignUnitId(), this.M.getNativeVideoTracking().d(), false, false);
    }

    public void E() {
        CampaignEx campaignEx = this.M;
        if (campaignEx == null || campaignEx.getMediaViewHolder() == null) {
            return;
        }
        com.mbridge.msdk.foundation.controller.c.m().a(getContext());
        com.mbridge.msdk.mbnative.report.b.a(this.M, getContext(), getUnitId(), (com.mbridge.msdk.mbnative.listener.a) null);
        CampaignEx.b mediaViewHolder = this.M.getMediaViewHolder();
        if (!mediaViewHolder.f34313l && this.f35755a0 == s.VIDEO && y0.b(this.M.getImpressionURL())) {
            mediaViewHolder.f34313l = true;
            String impressionURL = this.M.getImpressionURL();
            if (!impressionURL.contains("is_video=1")) {
                StringBuilder sb2 = new StringBuilder(impressionURL);
                if (impressionURL.contains(UrlUtils.QUESTION_MARK)) {
                    sb2.append("&is_video=1");
                } else {
                    sb2.append("?is_video=1");
                }
                impressionURL = sb2.toString();
            }
            Context context = getContext();
            CampaignEx campaignEx2 = this.M;
            com.mbridge.msdk.click.a.a(context, campaignEx2, campaignEx2.getCampaignUnitId(), impressionURL, false, true, com.mbridge.msdk.click.retry.a.f33586m);
        }
    }

    private void F() {
        CampaignEx campaignEx = this.M;
        if (campaignEx == null || campaignEx.getMediaViewHolder() == null || this.M.getMediaViewHolder().f34306e || TextUtils.isEmpty(this.M.getCampaignUnitId()) || this.M.getNativeVideoTracking() == null || this.M.getNativeVideoTracking().c() == null) {
            return;
        }
        this.M.getMediaViewHolder().f34306e = true;
        f();
    }

    public void G() {
        CampaignEx.b mediaViewHolder;
        CampaignEx campaignEx = this.M;
        if (campaignEx == null || (mediaViewHolder = campaignEx.getMediaViewHolder()) == null || mediaViewHolder.f34307f || this.M.getNativeVideoTracking() == null || this.M.getNativeVideoTracking().m() == null) {
            return;
        }
        mediaViewHolder.f34307f = true;
        Context context = getContext();
        CampaignEx campaignEx2 = this.M;
        com.mbridge.msdk.click.a.a(context, campaignEx2, campaignEx2.getCampaignUnitId(), this.M.getNativeVideoTracking().m(), false, false);
    }

    public void H() {
        CampaignEx.b mediaViewHolder;
        CampaignEx campaignEx = this.M;
        if (campaignEx == null || (mediaViewHolder = campaignEx.getMediaViewHolder()) == null || mediaViewHolder.f34308g || this.M.getNativeVideoTracking() == null || this.M.getNativeVideoTracking().n() == null) {
            return;
        }
        mediaViewHolder.f34308g = true;
        Context context = getContext();
        CampaignEx campaignEx2 = this.M;
        com.mbridge.msdk.click.a.a(context, campaignEx2, campaignEx2.getCampaignUnitId(), this.M.getNativeVideoTracking().n(), false, false);
    }

    public void I() {
        CampaignEx campaignEx = this.M;
        if (campaignEx == null || campaignEx.getMediaViewHolder() == null || this.M.getMediaViewHolder().f34305d || TextUtils.isEmpty(this.M.getCampaignUnitId()) || this.M.getNativeVideoTracking() == null || this.M.getNativeVideoTracking().i() == null) {
            return;
        }
        this.M.getMediaViewHolder().f34305d = true;
        Context context = getContext();
        CampaignEx campaignEx2 = this.M;
        com.mbridge.msdk.click.a.a(context, campaignEx2, campaignEx2.getCampaignUnitId(), this.M.getNativeVideoTracking().i(), false, false);
    }

    public void J() {
        CampaignEx.b mediaViewHolder;
        CampaignEx campaignEx = this.M;
        if (campaignEx == null || (mediaViewHolder = campaignEx.getMediaViewHolder()) == null || mediaViewHolder.f34310i || this.M.getNativeVideoTracking() == null || this.M.getNativeVideoTracking().p() == null) {
            return;
        }
        mediaViewHolder.f34310i = true;
        Context context = getContext();
        CampaignEx campaignEx2 = this.M;
        com.mbridge.msdk.click.a.a(context, campaignEx2, campaignEx2.getCampaignUnitId(), this.M.getNativeVideoTracking().p(), false, false);
    }

    public void K() {
        CampaignEx.b mediaViewHolder;
        CampaignEx campaignEx = this.M;
        if (campaignEx == null || (mediaViewHolder = campaignEx.getMediaViewHolder()) == null || mediaViewHolder.f34311j || this.M.getNativeVideoTracking() == null || this.M.getNativeVideoTracking().s() == null) {
            return;
        }
        mediaViewHolder.f34311j = true;
        Context context = getContext();
        CampaignEx campaignEx2 = this.M;
        com.mbridge.msdk.click.a.a(context, campaignEx2, campaignEx2.getCampaignUnitId(), this.M.getNativeVideoTracking().s(), false, false);
    }

    public void L() {
        CampaignEx.b mediaViewHolder;
        CampaignEx campaignEx = this.M;
        if (campaignEx == null || (mediaViewHolder = campaignEx.getMediaViewHolder()) == null || mediaViewHolder.f34312k || this.M.getNativeVideoTracking() == null || this.M.getNativeVideoTracking().t() == null) {
            return;
        }
        mediaViewHolder.f34312k = true;
        Context context = getContext();
        CampaignEx campaignEx2 = this.M;
        com.mbridge.msdk.click.a.a(context, campaignEx2, campaignEx2.getCampaignUnitId(), this.M.getNativeVideoTracking().t(), false, false);
    }

    private void M() {
        this.f35762e = true;
        this.f35766g = true;
        this.f35768h = false;
        this.f35770i = false;
        this.f35772j = false;
        this.f35782p = false;
    }

    private void N() {
        com.iab.omid.library.mmadbridge.adsession.b bVar;
        try {
            this.f35755a0 = a(true);
            changeNoticeURL();
            s sVar = this.f35755a0;
            if (sVar == s.BIG_IMAGE) {
                CampaignEx campaignEx = this.M;
                if (campaignEx != null && TextUtils.isEmpty(campaignEx.getVideoUrlEncode()) && (bVar = this.f35783q) != null) {
                    try {
                        bVar.d(this.B);
                        this.f35784r = com.iab.omid.library.mmadbridge.adsession.a.a(this.f35783q);
                        this.f35783q.g();
                        com.iab.omid.library.mmadbridge.adsession.a aVar = this.f35784r;
                        if (aVar != null) {
                            aVar.b();
                        }
                    } catch (Exception e10) {
                        o0.a("omsdk", e10.getMessage());
                    }
                }
                V();
                i();
            } else if (sVar == s.VIDEO) {
                U();
            } else if (sVar == s.GIF) {
                j();
                R();
            }
            this.f35781o = true;
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage(), th2);
        }
    }

    public void O() {
        try {
            if (this.G == null && this.f35769h0 == null) {
                return;
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 30.0f), t0.a(getContext(), 30.0f));
            layoutParams.addRule(11);
            layoutParams.addRule(10);
            if (this.f35761d0 == 0 && com.mbridge.msdk.foundation.tools.e.a(getContext())) {
                layoutParams.rightMargin = t0.c(getContext()) + t0.a(getContext(), 8.0f);
            } else {
                layoutParams.rightMargin = t0.a(getContext(), 8.0f);
            }
            layoutParams.topMargin = t0.a(getContext(), 8.0f);
            RelativeLayout relativeLayout = this.G;
            if (relativeLayout != null) {
                relativeLayout.setLayoutParams(layoutParams);
            }
            ImageView imageView = this.f35769h0;
            if (imageView != null) {
                imageView.setLayoutParams(layoutParams);
            }
            updateViewManger(true);
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    public void P() {
        try {
            if (this.G == null && this.f35769h0 == null) {
                return;
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 30.0f), t0.a(getContext(), 30.0f));
            layoutParams.addRule(11);
            layoutParams.addRule(10);
            layoutParams.topMargin = t0.a(getContext(), 8.0f);
            layoutParams.rightMargin = t0.a(getContext(), 8.0f);
            RelativeLayout relativeLayout = this.G;
            if (relativeLayout != null) {
                relativeLayout.setLayoutParams(layoutParams);
            }
            ImageView imageView = this.f35769h0;
            if (imageView != null) {
                imageView.setLayoutParams(layoutParams);
            }
            updateViewManger(false);
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    private void Q() {
        try {
            this.D.setFocusableInTouchMode(true);
            this.D.requestFocus();
            this.D.setOnKeyListener(new r());
            this.D.setOnClickListener(new a());
            this.G.setOnClickListener(new b());
            this.H.setOnClickListener(new c());
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    public void R() {
        X();
    }

    public void S() {
        try {
            if (getVisibility() != 0) {
                return;
            }
            if (a((View) this)) {
                com.mbridge.msdk.setting.l unitSetting = getUnitSetting();
                int i10 = 0;
                int iS = unitSetting != null ? unitSetting.s() : 0;
                CampaignEx campaignEx = this.M;
                if (campaignEx == null || campaignEx.getImpReportType() != 1) {
                    i10 = iS;
                }
                Message messageObtainMessage = this.L.obtainMessage();
                messageObtainMessage.what = 3;
                messageObtainMessage.obj = this;
                this.L.sendMessageDelayed(messageObtainMessage, (i10 == 0 ? 0L : ((long) i10) * 1000) + 300);
            }
            if (this.f35755a0 == s.VIDEO) {
                MediaViewPlayerView mediaViewPlayerView = this.f35788v;
                if (mediaViewPlayerView == null) {
                    b();
                    return;
                }
                if (this.M != mediaViewPlayerView.getCampaign()) {
                    this.f35788v.release();
                    b();
                    if (getParent() != null) {
                        ((View) getParent()).invalidate();
                    }
                    requestLayout();
                }
            }
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    private void e() {
        try {
            OnMBMediaViewListener onMBMediaViewListener = this.f35757b0;
            if (onMBMediaViewListener != null) {
                onMBMediaViewListener.onVideoAdClicked(this.M);
            }
            OnMBMediaViewListenerPlus onMBMediaViewListenerPlus = this.f35759c0;
            if (onMBMediaViewListenerPlus != null) {
                onMBMediaViewListenerPlus.onVideoAdClicked(this.M);
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    private void f() {
        try {
            CampaignEx campaignEx = this.M;
            if (campaignEx == null || campaignEx.getNativeVideoTracking() == null) {
                return;
            }
            String[] strArrC = this.M.getNativeVideoTracking().c();
            int i10 = this.f35770i ? f35752n0 : f35753o0;
            for (String str : strArrC) {
                if (!TextUtils.isEmpty(str)) {
                    Context context = getContext();
                    CampaignEx campaignEx2 = this.M;
                    com.mbridge.msdk.click.a.a(context, campaignEx2, campaignEx2.getCampaignUnitId(), str + "&orienation=" + i10, false, false);
                }
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    public void g() {
        try {
            FrameLayout frameLayout = (FrameLayout) getRootView().findViewById(R.id.content);
            FrameLayout frameLayout2 = (FrameLayout) getRootView().findViewById(100);
            RelativeLayout relativeLayout = (RelativeLayout) getRootView().findViewById(101);
            RelativeLayout relativeLayout2 = (RelativeLayout) getRootView().findViewById(103);
            if (relativeLayout2 == null && relativeLayout != null) {
                relativeLayout2 = (RelativeLayout) relativeLayout.findViewById(103);
            }
            RelativeLayout relativeLayout3 = (RelativeLayout) getRootView().findViewById(g0.a(getContext(), "mbridge_full_rl_playcontainer", "id"));
            if (relativeLayout3 == null && relativeLayout2 != null) {
                relativeLayout3 = (RelativeLayout) relativeLayout2.findViewById(g0.a(getContext(), "mbridge_full_rl_playcontainer", "id"));
            }
            RelativeLayout relativeLayout4 = (RelativeLayout) getRootView().findViewById(g0.a(getContext(), "mbridge_full_player_parent", "id"));
            if (relativeLayout4 == null && relativeLayout3 != null) {
                relativeLayout4 = (RelativeLayout) relativeLayout3.findViewById(g0.a(getContext(), "mbridge_full_player_parent", "id"));
            }
            ProgressBar progressBar = (ProgressBar) getRootView().findViewById(g0.a(getContext(), "mbridge_full_pb_loading", "id"));
            RelativeLayout relativeLayout5 = (RelativeLayout) getRootView().findViewById(g0.a(getContext(), "mbridge_full_rl_install", "id"));
            LinearLayout linearLayout = (LinearLayout) getRootView().findViewById(g0.a(getContext(), "mbridge_full_ll_pro_dur", "id"));
            ViewGroup viewGroup = frameLayout2 != null ? (ViewGroup) frameLayout2.getParent() : null;
            if (relativeLayout2 != null) {
                relativeLayout2.removeView(linearLayout);
            } else if (linearLayout != null && linearLayout.getParent() != null) {
                ((ViewGroup) linearLayout.getParent()).removeView(linearLayout);
            }
            RelativeLayout relativeLayout6 = this.f35767g0;
            if (relativeLayout6 != null) {
                if (relativeLayout2 != null) {
                    relativeLayout2.removeView(relativeLayout6);
                } else if (relativeLayout6.getParent() != null) {
                    ((ViewGroup) this.f35767g0.getParent()).removeView(this.f35767g0);
                }
                this.A.setBackListener(null);
                this.A.setObject(null);
                this.A = null;
                this.f35767g0 = null;
            }
            if (relativeLayout2 != null) {
                relativeLayout2.removeView(relativeLayout5);
            } else if (relativeLayout5 != null && relativeLayout5.getParent() != null) {
                ((ViewGroup) relativeLayout5.getParent()).removeView(relativeLayout5);
            }
            if (relativeLayout2 != null) {
                relativeLayout2.removeView(progressBar);
            } else if (progressBar != null && progressBar.getParent() != null) {
                ((ViewGroup) progressBar.getParent()).removeView(progressBar);
            }
            if (relativeLayout4 != null) {
                relativeLayout4.removeView(this.f35788v);
            }
            if (relativeLayout3 != null) {
                relativeLayout3.removeView(relativeLayout4);
            } else if (relativeLayout4 != null && relativeLayout4.getParent() != null) {
                ((ViewGroup) relativeLayout4.getParent()).removeView(relativeLayout4);
            }
            if (relativeLayout2 != null) {
                relativeLayout2.removeView(relativeLayout3);
            } else if (relativeLayout3 == null || relativeLayout3.getParent() == null) {
                BaseView baseView = this.E;
                if (baseView != null) {
                    baseView.removeView(this.F);
                }
            } else {
                ((ViewGroup) relativeLayout3.getParent()).removeView(relativeLayout3);
            }
            if (relativeLayout != null) {
                relativeLayout.removeView(relativeLayout2);
            } else if (relativeLayout2 == null || relativeLayout2.getParent() == null) {
                View view = this.D;
                if (view != null) {
                    ((ViewGroup) view).removeView(this.E);
                    ((ViewGroup) this.D.getParent()).removeView(this.D);
                }
            } else {
                ((ViewGroup) relativeLayout2.getParent()).removeView(relativeLayout2);
            }
            if (frameLayout != null) {
                if (relativeLayout != null) {
                    frameLayout.removeView(relativeLayout);
                } else {
                    frameLayout.removeView(this.D);
                    if (this.D.getParent() != null) {
                        ((ViewGroup) this.D.getParent()).removeView(this.D);
                        this.D.setVisibility(8);
                    }
                }
            }
            setVisibility(0);
            requestLayout();
            if (viewGroup != null) {
                if (this.f35788v.getParent() != null && this.f35788v.getParent() != viewGroup) {
                    ((ViewGroup) this.f35788v.getParent()).removeView(this.f35788v);
                }
                viewGroup.addView(this.f35788v, this.K);
                viewGroup.removeView(frameLayout2);
                viewGroup.invalidate();
            }
            d();
            this.f35768h = false;
            MediaViewPlayerView mediaViewPlayerView = this.f35788v;
            if (mediaViewPlayerView != null) {
                mediaViewPlayerView.setExitFullScreen();
                if (this.f35764f) {
                    this.f35788v.openSound();
                } else {
                    this.f35788v.closeSound();
                }
                this.f35788v.gonePauseView();
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    private void h() {
        try {
            e();
            if (this.M != null && !y0.a(getUnitId())) {
                D();
                com.mbridge.msdk.click.a aVar = new com.mbridge.msdk.click.a(getContext(), getUnitId());
                aVar.a(new n());
                aVar.a(this.M);
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    private void i() {
        try {
            CampaignEx campaignEx = this.M;
            if (campaignEx == null) {
                return;
            }
            String imageUrl = campaignEx.getImageUrl();
            if (y0.a(imageUrl) || getContext() == null) {
                return;
            }
            com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(imageUrl, new l());
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    private void j() {
        try {
            CampaignEx campaignEx = this.M;
            if (campaignEx == null) {
                return;
            }
            String gifUrl = campaignEx.getGifUrl();
            if (y0.a(gifUrl) || getContext() == null) {
                return;
            }
            this.f35792z.loadDataWithBaseURL(null, "<!DOCTYPE html><html lang=\"en\"><head>  <meta charset=\"UTF-8\">  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">  <title>Document</title>  <style>  *{    margin: 0;    padding: 0;  }  html, body{    width: 100%;    height: 100%;  }  body{    background-image: url('gifUrl');    background-position: center;    background-size: contain;    background-repeat: no-repeat;  }  </style></head><body></body></html>".replace("gifUrl", gifUrl), "text/html", "utf-8", null);
            this.f35792z.setInterceptTouch(true);
            this.f35791y.setOnClickListener(new m());
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    private boolean k() {
        try {
            this.F = this.E.getMBridgeFullPlayContainer();
            this.J = this.E.getMBridgeFullPlayerParent();
            this.G = this.E.getMBridgeFullClose();
            this.H = this.E.getMBridgeFullTvInstall();
            this.I = this.E.getMBridgeFullPb();
            return true;
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
            return false;
        }
    }

    public void l() {
        try {
            MediaViewPlayerView mediaViewPlayerView = this.f35788v;
            if (mediaViewPlayerView == null) {
                return;
            }
            mediaViewPlayerView.onClickPlayerView();
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    public void m() {
        try {
            ProgressBar progressBar = this.I;
            if (progressBar != null) {
                progressBar.setVisibility(8);
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    public void n() {
        try {
            ProgressBar progressBar = this.C;
            if (progressBar != null) {
                progressBar.setVisibility(8);
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    public void o() {
        int i10;
        int i11;
        int i12;
        try {
            if (this.f35755a0 != s.BIG_IMAGE || (i10 = this.O) == 0 || (i11 = this.S) == 0 || (i12 = this.R) == 0) {
                return;
            }
            int i13 = (i10 * i11) / i12;
            MyImageView myImageView = this.B;
            if (myImageView == null || i13 == 0) {
                return;
            }
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) myImageView.getLayoutParams();
            layoutParams.width = this.O;
            layoutParams.height = i13;
            this.B.setLayoutParams(layoutParams);
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    private void p() {
        try {
            this.f35770i = t0.i(getContext()) >= t0.h(getContext());
            this.f35772j = this.f35770i;
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    public View q() {
        try {
            this.f35767g0 = new RelativeLayout(getContext());
            this.f35767g0.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            ImageView imageView = new ImageView(getContext());
            this.f35769h0 = imageView;
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 30.0f), t0.a(getContext(), 30.0f));
            layoutParams.addRule(11);
            layoutParams.addRule(10);
            layoutParams.topMargin = t0.a(getContext(), 8.0f);
            layoutParams.rightMargin = t0.a(getContext(), 8.0f);
            this.f35769h0.setLayoutParams(layoutParams);
            this.f35769h0.setBackgroundResource(g0.a(getContext(), "mbridge_nativex_close", "drawable"));
            this.f35769h0.setOnClickListener(new q());
            this.A.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            this.f35767g0.addView(this.A);
            this.f35767g0.addView(this.f35769h0);
            return this.f35767g0;
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
            return null;
        }
    }

    private void r() {
        try {
            if (this.f35768h) {
                MediaViewPlayerView mediaViewPlayerView = this.f35788v;
                if (mediaViewPlayerView == null) {
                    o0.b(TAG, "fullscreen playerview is null return");
                } else if (!this.f35762e) {
                    mediaViewPlayerView.pause();
                } else if (mediaViewPlayerView.isPlaying()) {
                    o0.c(TAG, "fullscreen windowfocuse true isPlaying do nothing return");
                } else {
                    MediaViewPlayerView mediaViewPlayerView2 = this.f35788v;
                    if (mediaViewPlayerView2 != null && !mediaViewPlayerView2.isComplete() && !this.f35788v.getIsActiviePause()) {
                        this.f35788v.onClickPlayButton();
                    }
                }
            }
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    private void s() {
        try {
            p();
            a(this.F, getAllScreenWidth(), getAllScreenHeight());
            com.mbridge.msdk.nativex.view.mbfullview.a.a(getContext()).a(this.E, this.f35770i);
            if (this.f35770i) {
                O();
            } else {
                P();
            }
            this.L.postDelayed(new d(), 3000L);
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    private void t() {
        this.L = new j();
    }

    public void u() {
        try {
            if (this.f35755a0 != s.VIDEO || this.f35789w == null) {
                return;
            }
            int allScreenWidth = (int) getAllScreenWidth();
            int iH = t0.h(getContext());
            if (this.f35768h) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.F.getLayoutParams();
                layoutParams.width = allScreenWidth;
                layoutParams.height = iH;
                layoutParams.addRule(13);
                this.F.setLayoutParams(layoutParams);
            } else {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f35789w.getLayoutParams();
                layoutParams2.width = this.O;
                layoutParams2.height = this.N;
                layoutParams2.addRule(13);
                this.f35789w.setLayoutParams(layoutParams2);
            }
            S();
            if (this.f35768h) {
                a(this.f35788v, allScreenWidth, iH);
            } else {
                a(this.f35788v, this.O, this.N);
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    private void v() {
        String[] strArrSplit;
        try {
            CampaignEx campaignEx = this.M;
            if (campaignEx == null || y0.a(campaignEx.getVideoResolution()) || (strArrSplit = this.M.getVideoResolution().split("x")) == null || strArrSplit.length != 2) {
                return;
            }
            String str = strArrSplit[0];
            String str2 = strArrSplit[1];
            double dM = t0.m(str);
            double dM2 = t0.m(str2);
            if (dM <= 0.0d || dM2 <= 0.0d) {
                return;
            }
            this.P = dM;
            this.Q = dM2;
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    private void w() {
        int iA = g0.a(getContext(), "mbridge_nativex_mbmediaview", TtmlNode.TAG_LAYOUT);
        if (!g0.a(iA)) {
            o0.b(TAG, "can not find mediaview resource");
            return;
        }
        View viewInflate = LayoutInflater.from(getContext()).inflate(iA, (ViewGroup) null);
        this.f35790x = (RelativeLayout) viewInflate.findViewById(g0.a(getContext(), "mbridge_rl_mediaview_root", "id"));
        this.f35789w = (RelativeLayout) viewInflate.findViewById(g0.a(getContext(), "mbridge_ll_playerview_container", "id"));
        this.B = (MyImageView) viewInflate.findViewById(g0.a(getContext(), "mbridge_my_big_img", "id"));
        this.C = (ProgressBar) viewInflate.findViewById(g0.a(getContext(), "mbridge_native_pb", "id"));
        this.f35791y = (RelativeLayout) viewInflate.findViewById(g0.a(getContext(), "mbridge_nativex_webview_layout", "id"));
        this.f35792z = (WindVaneWebViewForNV) viewInflate.findViewById(g0.a(getContext(), "mbridge_nativex_webview_layout_webview", "id"));
        this.f35790x.setClickable(true);
        addView(viewInflate, -1, -1);
    }

    public void x() {
        RelativeLayout relativeLayout;
        int i10;
        int i11;
        try {
            if (this.f35755a0 == s.GIF) {
                int i12 = this.O;
                if (i12 != 0 && (i10 = this.S) != 0 && (i11 = this.R) != 0) {
                    int i13 = (i12 * i10) / i11;
                    RelativeLayout relativeLayout2 = this.f35791y;
                    if (relativeLayout2 != null && i13 != 0) {
                        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) relativeLayout2.getLayoutParams();
                        layoutParams.width = this.O;
                        layoutParams.height = i13;
                        layoutParams.addRule(13);
                        this.f35791y.setLayoutParams(layoutParams);
                    }
                } else if (i12 != 0 && (relativeLayout = this.f35791y) != null) {
                    RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
                    int i14 = this.O;
                    layoutParams2.width = i14;
                    layoutParams2.height = (i14 * 627) / 1200;
                    layoutParams2.addRule(13);
                    this.f35791y.setLayoutParams(layoutParams2);
                }
            }
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    private boolean y() {
        try {
            com.mbridge.msdk.setting.l unitSetting = getUnitSetting();
            if (unitSetting == null) {
                return false;
            }
            int iL = unitSetting.L();
            if (iL == 1) {
                return t0.n(getContext());
            }
            if (iL == 2) {
                return false;
            }
            if (iL == 3) {
                return !q0.a().a("s_a_w_n_c", true) || t0.l(getContext());
            }
            return t0.n(getContext());
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    private void z() {
        try {
            MediaViewPlayerView mediaViewPlayerView = this.f35788v;
            if (mediaViewPlayerView != null) {
                mediaViewPlayerView.pause();
            }
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    public void setOnMediaViewListener(OnMBMediaViewListenerPlus onMBMediaViewListenerPlus) {
        this.f35759c0 = onMBMediaViewListenerPlus;
    }

    private void d() {
        try {
            this.f35788v.showSoundIndicator(this.f35776l);
            this.f35788v.showProgressView(this.f35774k);
            OnMBMediaViewListener onMBMediaViewListener = this.f35757b0;
            if (onMBMediaViewListener != null) {
                onMBMediaViewListener.onExitFullscreen();
            }
            OnMBMediaViewListenerPlus onMBMediaViewListenerPlus = this.f35759c0;
            if (onMBMediaViewListenerPlus != null) {
                onMBMediaViewListenerPlus.onExitFullscreen();
            }
            com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.f35785s;
            if (aVar != null) {
                aVar.k(PlayerState.NORMAL);
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    private void c() {
        try {
            OnMBMediaViewListener onMBMediaViewListener = this.f35757b0;
            if (onMBMediaViewListener != null) {
                onMBMediaViewListener.onEnterFullscreen();
            }
            OnMBMediaViewListenerPlus onMBMediaViewListenerPlus = this.f35759c0;
            if (onMBMediaViewListenerPlus != null) {
                onMBMediaViewListenerPlus.onEnterFullscreen();
            }
            com.iab.omid.library.mmadbridge.adsession.media.a aVar = this.f35785s;
            if (aVar != null) {
                aVar.k(PlayerState.FULLSCREEN);
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    private void b(Context context) {
        try {
            t();
            w();
            this.f35775k0 = context;
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    public void a(Campaign campaign, String str) {
        try {
            OnMBMediaViewListener onMBMediaViewListener = this.f35757b0;
            if (onMBMediaViewListener != null) {
                onMBMediaViewListener.onFinishRedirection(campaign, str);
            }
            OnMBMediaViewListenerPlus onMBMediaViewListenerPlus = this.f35759c0;
            if (onMBMediaViewListenerPlus != null) {
                onMBMediaViewListenerPlus.onFinishRedirection(campaign, str);
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    public void b(Campaign campaign, String str) {
        try {
            OnMBMediaViewListener onMBMediaViewListener = this.f35757b0;
            if (onMBMediaViewListener != null) {
                onMBMediaViewListener.onRedirectionFailed(campaign, str);
            }
            OnMBMediaViewListenerPlus onMBMediaViewListenerPlus = this.f35759c0;
            if (onMBMediaViewListenerPlus != null) {
                onMBMediaViewListenerPlus.onRedirectionFailed(campaign, str);
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    public void c(Campaign campaign, String str) {
        try {
            OnMBMediaViewListener onMBMediaViewListener = this.f35757b0;
            if (onMBMediaViewListener != null) {
                onMBMediaViewListener.onStartRedirection(campaign, str);
            }
            OnMBMediaViewListenerPlus onMBMediaViewListenerPlus = this.f35759c0;
            if (onMBMediaViewListenerPlus != null) {
                onMBMediaViewListenerPlus.onStartRedirection(campaign, str);
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    protected void a(String str) {
        try {
            if (TextUtils.isEmpty(str) || this.f35780n.contains(str)) {
                return;
            }
            this.f35780n.add(str);
            OnMBMediaViewListenerPlus onMBMediaViewListenerPlus = this.f35759c0;
            if (onMBMediaViewListenerPlus != null) {
                onMBMediaViewListenerPlus.onVideoComplete();
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    protected void b(String str) {
        try {
            if (TextUtils.isEmpty(str) || this.f35778m.contains(str)) {
                return;
            }
            this.f35778m.add(str);
            OnMBMediaViewListener onMBMediaViewListener = this.f35757b0;
            if (onMBMediaViewListener != null) {
                onMBMediaViewListener.onVideoStart();
            }
            OnMBMediaViewListenerPlus onMBMediaViewListenerPlus = this.f35759c0;
            if (onMBMediaViewListenerPlus != null) {
                onMBMediaViewListenerPlus.onVideoStart();
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    public void c(String str) {
        com.mbridge.msdk.foundation.entity.m mVar;
        try {
            com.mbridge.msdk.foundation.db.n nVarA = com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(getContext()));
            if (!TextUtils.isEmpty(this.M.getNoticeUrl())) {
                int iS = k0.s(getContext());
                mVar = new com.mbridge.msdk.foundation.entity.m("2000021", iS, this.M.getNoticeUrl(), str, k0.a(getContext(), iS));
            } else if (TextUtils.isEmpty(this.M.getClickURL())) {
                mVar = null;
            } else {
                int iS2 = k0.s(getContext());
                mVar = new com.mbridge.msdk.foundation.entity.m("2000021", iS2, this.M.getClickURL(), str, k0.a(getContext(), iS2));
            }
            if (mVar != null) {
                mVar.b(this.M.getId());
                mVar.v(this.M.getVideoUrlEncode());
                mVar.m(str);
                mVar.n(this.M.getRequestId());
                mVar.o(this.M.getRequestIdNotice());
                mVar.u(getUnitId());
                nVarA.a(mVar);
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    public void a(Context context) {
        h();
    }

    private s a(boolean z10) {
        s sVar;
        try {
            CampaignEx campaignEx = this.M;
            if (campaignEx == null) {
                return null;
            }
            if (y0.a(campaignEx.getVideoUrlEncode())) {
                s sVar2 = y0.b(this.M.getImageUrl()) ? s.BIG_IMAGE : null;
                if (!y0.b(this.M.getGifUrl())) {
                    return sVar2;
                }
                if (y0.a(this.M.getImageUrl())) {
                    sVar2 = s.GIF;
                }
                this.f35792z.setWebViewClient(new y(this));
                j();
                return sVar2;
            }
            if (this.f35766g && this.W != null) {
                if (y0.b(this.M.getVideoUrlEncode()) && y0.a(this.M.getImageUrl())) {
                    sVar = s.VIDEO;
                } else {
                    if (!y0.b(this.M.getVideoUrlEncode()) || !y0.b(this.M.getImageUrl())) {
                        return null;
                    }
                    if (com.mbridge.msdk.videocommon.download.l.a(this.W, getReadyRate())) {
                        return s.VIDEO;
                    }
                    s sVar3 = s.BIG_IMAGE;
                    if (!z10 || !this.f35754a) {
                        return sVar3;
                    }
                    this.W.b(new x(this));
                    return sVar3;
                }
            } else {
                sVar = s.BIG_IMAGE;
            }
            return sVar;
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
            return s.BIG_IMAGE;
        }
    }

    private void b() {
        try {
            if (this.M == null) {
                o0.c(TAG, "campaign is null addPlayerView return");
            }
            MediaViewPlayerView mediaViewPlayerView = this.f35788v;
            if (mediaViewPlayerView != null && mediaViewPlayerView.getParent() != null) {
                ((ViewGroup) this.f35788v.getParent()).removeView(this.f35788v);
            }
            Z();
            MediaViewPlayerView mediaViewPlayerView2 = new MediaViewPlayerView(getContext());
            this.f35788v = mediaViewPlayerView2;
            mediaViewPlayerView2.showProgressView(this.f35774k);
            this.f35788v.showSoundIndicator(this.f35776l);
            if (this.f35764f) {
                this.f35788v.openSound();
            } else {
                this.f35788v.closeSound();
            }
            this.f35788v.setAllowLoopPlay(this.f35756b);
            this.f35788v.initPlayerViewData(getPlayUrl(), this.M, y(), this, this.W, getUnitId());
            this.f35788v.setOnMediaViewPlayerViewListener(new u(this));
            this.f35789w.addView(this.f35788v, -1, -1);
            T();
            com.iab.omid.library.mmadbridge.adsession.b bVar = this.f35783q;
            if (bVar != null) {
                MediaViewPlayerView mediaViewPlayerView3 = this.f35788v;
                if (mediaViewPlayerView3 != null) {
                    mediaViewPlayerView3.registerView(bVar);
                }
                this.f35784r = com.iab.omid.library.mmadbridge.adsession.a.a(this.f35783q);
                this.f35785s = com.iab.omid.library.mmadbridge.adsession.media.a.g(this.f35783q);
                this.f35783q.g();
                this.f35784r.d(com.iab.omid.library.mmadbridge.adsession.media.b.b(true, Position.STANDALONE));
                MediaViewPlayerView mediaViewPlayerView4 = this.f35788v;
                if (mediaViewPlayerView4 != null) {
                    mediaViewPlayerView4.setVideoEvents(this.f35785s);
                }
                try {
                    com.iab.omid.library.mmadbridge.adsession.a aVar = this.f35784r;
                    if (aVar != null) {
                        aVar.b();
                        return;
                    }
                    return;
                } catch (Exception e10) {
                    o0.a("omsdk", e10.getMessage());
                    return;
                }
                o0.b(TAG, th.getMessage());
            }
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    public BaseMBMediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f35754a = true;
        this.f35756b = true;
        this.f35758c = true;
        this.f35760d = true;
        this.f35762e = true;
        this.f35764f = false;
        this.f35766g = true;
        this.f35768h = false;
        this.f35770i = false;
        this.f35772j = false;
        this.f35774k = true;
        this.f35776l = true;
        this.f35778m = new ArrayList<>();
        this.f35780n = new ArrayList<>();
        this.f35781o = false;
        this.f35782p = false;
        this.f35783q = null;
        this.f35784r = null;
        this.f35785s = null;
        this.f35786t = 0;
        this.f35787u = false;
        this.W = null;
        this.f35755a0 = null;
        this.f35763e0 = false;
        this.f35765f0 = false;
        this.f35773j0 = false;
        this.f35777l0 = false;
        this.f35779m0 = new h();
        b(context);
    }

    private boolean c(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    public boolean a(View view) {
        try {
            CampaignEx campaignEx = this.M;
            return !b1.a(view, campaignEx == null ? 0 : campaignEx.getImpReportType());
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
            return false;
        }
    }

    @SuppressLint({"ResourceType"})
    protected void a() {
        WindowInsets rootWindowInsets;
        CampaignEx campaignEx;
        try {
            if (getRootView() != null && (getRootView() instanceof ViewGroup)) {
                BaseView.a aVarHandleViewStyleResult = handleViewStyleResult(getContext());
                if (aVarHandleViewStyleResult == null) {
                    return;
                }
                BaseView fullScreenViewByStyle = getFullScreenViewByStyle(getContext(), aVarHandleViewStyleResult);
                this.E = fullScreenViewByStyle;
                if (fullScreenViewByStyle != null && k()) {
                    com.mbridge.msdk.nativex.view.mbfullview.a aVarA = com.mbridge.msdk.nativex.view.mbfullview.a.a(getContext());
                    BaseView baseView = this.E;
                    aVarA.a(baseView.style, this.M, baseView);
                    this.f35768h = true;
                    this.f35782p = false;
                    MediaViewPlayerView mediaViewPlayerView = this.f35788v;
                    if (mediaViewPlayerView != null) {
                        mediaViewPlayerView.setEnterFullScreen();
                        this.f35788v.setIsActivePause(false);
                    }
                    c();
                    FrameLayout frameLayout = (FrameLayout) getRootView().findViewById(R.id.content);
                    RelativeLayout relativeLayout = new RelativeLayout(getContext());
                    this.D = relativeLayout;
                    relativeLayout.setClickable(true);
                    ViewGroup viewGroup = (ViewGroup) this.f35788v.getParent();
                    int childCount = viewGroup.getChildCount();
                    int i10 = 0;
                    while (i10 < childCount && viewGroup.getChildAt(i10) != this.f35788v) {
                        i10++;
                    }
                    this.K = i10;
                    FrameLayout frameLayout2 = new FrameLayout(getContext());
                    frameLayout2.setId(100);
                    viewGroup.addView(frameLayout2, i10, new ViewGroup.LayoutParams(getWidth(), getHeight()));
                    viewGroup.removeView(this.f35788v);
                    ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                    relativeLayout.setId(101);
                    new RelativeLayout.LayoutParams(-1, -1);
                    this.J.addView(this.f35788v, new RelativeLayout.LayoutParams(-1, -1));
                    if (this.J != null && (campaignEx = this.M) != null && campaignEx.getPrivacyButtonTemplateVisibility() != 0) {
                        try {
                            MBAdChoice mBAdChoice = new MBAdChoice(com.mbridge.msdk.foundation.controller.c.m().d());
                            mBAdChoice.setCampaign(this.M);
                            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f), t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f));
                            layoutParams2.addRule(11);
                            layoutParams2.addRule(12);
                            this.J.addView(mBAdChoice, layoutParams2);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                    if (this.f35787u) {
                        a(frameLayout);
                    }
                    frameLayout.addView(relativeLayout, layoutParams);
                    int i11 = i.f35801a[this.E.style.ordinal()] != 2 ? ViewCompat.MEASURED_STATE_MASK : -1;
                    int i12 = this.f35786t;
                    if (i12 != 0) {
                        relativeLayout.setBackgroundColor(i12);
                    } else {
                        relativeLayout.setBackgroundColor(i11);
                    }
                    this.E.setId(103);
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
                    int[] iArr = new int[2];
                    frameLayout.getLocationInWindow(iArr);
                    int i13 = iArr[1];
                    this.f35761d0 = i13;
                    if (i13 == 0 && (rootWindowInsets = getRootWindowInsets()) != null) {
                        layoutParams3.setMargins(0, rootWindowInsets.getStableInsetTop(), 0, 0);
                    }
                    relativeLayout.addView(this.E, layoutParams3);
                    s();
                    Q();
                    MediaViewPlayerView mediaViewPlayerView2 = this.f35788v;
                    if (mediaViewPlayerView2 != null) {
                        mediaViewPlayerView2.openSound();
                        MediaViewPlayerView mediaViewPlayerView3 = this.f35788v;
                        mediaViewPlayerView3.setMediaViewPlayListener(new p(mediaViewPlayerView3));
                    }
                    b(false);
                    F();
                    return;
                }
                return;
            }
            o0.c(TAG, "rootView is null");
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    private void b(int i10) {
        CampaignEx.b mediaViewHolder;
        Map<Integer, String> map;
        try {
            CampaignEx campaignEx = this.M;
            if (campaignEx == null || (mediaViewHolder = campaignEx.getMediaViewHolder()) == null || mediaViewHolder.f34303b || (map = mediaViewHolder.f34302a) == null || map.size() <= 0) {
                return;
            }
            Map<Integer, String> map2 = mediaViewHolder.f34302a;
            Iterator<Map.Entry<Integer, String>> it = map2.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<Integer, String> next = it.next();
                Integer key = next.getKey();
                String value = next.getValue();
                if (i10 >= key.intValue() && !TextUtils.isEmpty(value)) {
                    Context context = getContext();
                    CampaignEx campaignEx2 = this.M;
                    com.mbridge.msdk.click.a.a(context, campaignEx2, campaignEx2.getCampaignUnitId(), value, false, false);
                    it.remove();
                }
            }
            if (map2.size() <= 0) {
                mediaViewHolder.f34303b = true;
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    private void b(boolean z10) {
        try {
            int nvT2 = this.M.getNvT2();
            if (this.A == null) {
                WindVaneWebViewForNV windVaneWebViewForNV = new WindVaneWebViewForNV(getContext());
                this.A = windVaneWebViewForNV;
                windVaneWebViewForNV.setObject(this);
                this.A.setBackListener(new e());
                this.A.setWebViewListener(new f());
            }
            if (nvT2 != 3) {
                if (nvT2 == 4) {
                    this.f35765f0 = true;
                    CampaignEx campaignEx = this.M;
                    if (campaignEx != null) {
                        com.mbridge.msdk.foundation.same.webview.a aVar = new com.mbridge.msdk.foundation.same.webview.a(campaignEx);
                        aVar.a(this.M.getAppName());
                        this.A.setDownloadListener(aVar);
                        this.A.setFilter(new v(null));
                        return;
                    }
                    return;
                }
                return;
            }
            String str = this.M.getendcard_url();
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.M.getMediaViewHolder();
            if (str.contains(".zip") && str.contains(ResourceManager.KEY_MD5FILENAME)) {
                String h5ResAddress = H5DownLoadManager.getInstance().getH5ResAddress(str);
                if (y0.b(h5ResAddress)) {
                    this.f35765f0 = true;
                    this.A.loadUrl(h5ResAddress);
                    return;
                }
                return;
            }
            String htmlContentFromUrl = HTMLResourceManager.getInstance().getHtmlContentFromUrl(str);
            if (y0.b(htmlContentFromUrl)) {
                o0.a(TAG, "load html...");
                this.f35765f0 = true;
                this.A.loadDataWithBaseURL(str, htmlContentFromUrl, "text/html", "UTF-8", null);
            }
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    private void a(FrameLayout frameLayout) {
        BitmapDrawable bitmapDrawableA;
        if (frameLayout == null || (bitmapDrawableA = com.mbridge.msdk.foundation.controller.c.m().a(getUnitId(), this.M.getAdType())) == null) {
            return;
        }
        ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
        t0.a(imageView, bitmapDrawableA, getResources().getDisplayMetrics());
        this.E.addView(imageView, new RelativeLayout.LayoutParams(-1, -1));
        com.iab.omid.library.mmadbridge.adsession.b bVar = this.f35783q;
        if (bVar != null) {
            bVar.a(imageView, FriendlyObstructionPurpose.OTHER, null);
        }
    }

    private void a(View view, float f10, float f11) {
        if (view == null) {
            return;
        }
        try {
            double d10 = this.P;
            double d11 = 0.0d;
            if (d10 > 0.0d) {
                double d12 = this.Q;
                if (d12 > 0.0d) {
                    double d13 = d10 / d12;
                    if (f10 > 0.0f && f11 > 0.0f) {
                        d11 = f10 / f11;
                    }
                    double dA = t0.a(Double.valueOf(d13));
                    double dA2 = t0.a(Double.valueOf(d11));
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f35789w.getLayoutParams();
                    RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) view.getLayoutParams();
                    boolean z10 = c(getContext()) && this.f35770i;
                    int i10 = -1;
                    if (dA > dA2) {
                        double d14 = (((double) f10) * this.Q) / this.P;
                        layoutParams2.width = -1;
                        if (!z10) {
                            i10 = (int) d14;
                        }
                        layoutParams2.height = i10;
                        layoutParams2.addRule(13);
                        layoutParams.width = this.O;
                        layoutParams.height = (int) d14;
                        layoutParams.addRule(13);
                    } else if (dA < dA2) {
                        double d15 = ((double) f11) * d13;
                        layoutParams2.width = z10 ? -1 : (int) d15;
                        layoutParams2.height = -1;
                        layoutParams2.addRule(13);
                        layoutParams.width = (int) d15;
                        layoutParams.height = this.N;
                        layoutParams.addRule(13);
                    } else {
                        layoutParams2.width = -1;
                        layoutParams2.height = -1;
                        layoutParams.width = this.O;
                        layoutParams.height = this.N;
                        layoutParams.addRule(13);
                    }
                    if (!this.f35768h) {
                        this.f35789w.setLayoutParams(layoutParams);
                    }
                    view.setLayoutParams(layoutParams2);
                    return;
                }
            }
            setPlayViewParamsDefault(view);
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    private void a(int i10, int i11) {
        CampaignEx.b mediaViewHolder;
        try {
            CampaignEx campaignEx = this.M;
            if (campaignEx == null || (mediaViewHolder = campaignEx.getMediaViewHolder()) == null || mediaViewHolder.f34309h || i11 == 0) {
                return;
            }
            List<Map<Integer, String>> listO = this.M.getNativeVideoTracking().o();
            int i12 = ((i10 + 1) * 100) / i11;
            if (listO != null) {
                int i13 = 0;
                while (i13 < listO.size()) {
                    Map<Integer, String> map = listO.get(i13);
                    if (map != null && map.size() > 0) {
                        Iterator<Map.Entry<Integer, String>> it = map.entrySet().iterator();
                        while (it.hasNext()) {
                            Map.Entry<Integer, String> next = it.next();
                            int iIntValue = next.getKey().intValue();
                            String value = next.getValue();
                            if (iIntValue <= i12 && !TextUtils.isEmpty(value)) {
                                Context context = getContext();
                                CampaignEx campaignEx2 = this.M;
                                com.mbridge.msdk.click.a.a(context, campaignEx2, campaignEx2.getCampaignUnitId(), new String[]{value}, false, true);
                                it.remove();
                                listO.remove(i13);
                                i13--;
                            }
                        }
                    }
                    i13++;
                }
                if (listO.size() <= 0) {
                    mediaViewHolder.f34309h = true;
                }
            }
        } catch (Throwable unused) {
            o0.b(TAG, "reportPlayPercentageData error");
        }
    }

    private String a(int i10) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i10);
            String string = jSONObject.toString();
            if (!TextUtils.isEmpty(string)) {
                return Base64.encodeToString(string.getBytes(), 2);
            }
        } catch (Throwable unused) {
            o0.b(TAG, "code to string is error");
        }
        return "";
    }

    private String a(List<CampaignEx> list, String str, String str2) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    JSONArray camplistToJson = CampaignEx.parseCamplistToJson(list);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("campaignList", camplistToJson);
                    jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
                    jSONObject.put("sdk_info", str2);
                    return jSONObject.toString();
                }
            } catch (Exception e10) {
                o0.b(TAG, e10.getMessage());
            }
        }
        return null;
    }
}
