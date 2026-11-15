package com.mbridge.msdk.video.module;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.download.download.HTMLResourceManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.out.Campaign;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.File;
import java.util.HashMap;
import org.json.JSONObject;

public class MBridgeH5EndCardView extends MBridgeH5EndCardViewDiff {
    private int A;
    private long B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean J;
    private String K;
    Handler L;
    private boolean M;
    private boolean N;
    boolean O;

    protected View f38441m;

    protected RelativeLayout f38442n;

    protected ImageView f38443o;

    protected WindVaneWebView f38444p;

    private boolean f38445q;

    protected Handler f38446r;

    protected String f38447s;

    protected boolean f38448t;

    protected boolean f38449u;

    private boolean f38450v;

    private int f38451w;

    private int f38452x;

    private boolean f38453y;

    private boolean f38454z;

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what != 100) {
                return;
            }
            if (MBridgeH5EndCardView.this.C) {
                MBridgeH5EndCardView.this.notifyListener.a(Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, "");
            }
            MBridgeH5EndCardView.this.notifyListener.a(103, "");
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override
        public void onClick(View view) {
            MBridgeH5EndCardView.this.onCloseViewClick();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override
        public void run() {
            String string;
            try {
                o0.a(MBridgeBaseView.TAG, "webviewshow");
                try {
                    int[] iArr = new int[2];
                    MBridgeH5EndCardView.this.f38444p.getLocationOnScreen(iArr);
                    o0.b(MBridgeBaseView.TAG, "coordinate:" + iArr[0] + "--" + iArr[1]);
                    JSONObject jSONObject = new JSONObject();
                    Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                    if (contextD != null) {
                        jSONObject.put("startX", t0.b(contextD, iArr[0]));
                        jSONObject.put("startY", t0.b(contextD, iArr[1]));
                        jSONObject.put(com.mbridge.msdk.foundation.same.a.f34508l, t0.d(contextD));
                    }
                    string = jSONObject.toString();
                } catch (Throwable th2) {
                    o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
                    string = "";
                }
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeH5EndCardView.this.f38444p, "webviewshow", Base64.encodeToString(string.toString().getBytes(), 2));
                MBridgeH5EndCardView.this.notifyListener.a(109, "");
                MBridgeH5EndCardView.this.i();
                MBridgeH5EndCardView.this.startCounterEndCardShowTimer();
                com.mbridge.msdk.mbsignalcommon.windvane.f fVarA = com.mbridge.msdk.mbsignalcommon.windvane.f.a();
                MBridgeH5EndCardView mBridgeH5EndCardView = MBridgeH5EndCardView.this;
                fVarA.a((WebView) mBridgeH5EndCardView.f38444p, "oncutoutfetched", Base64.encodeToString(mBridgeH5EndCardView.K.getBytes(), 0));
                MBridgeH5EndCardView.this.e();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private class f implements Runnable {

        private MBridgeH5EndCardView f38461a;

        public f(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.f38461a = mBridgeH5EndCardView;
        }

        @Override
        public void run() {
            Handler handler;
            try {
                Thread.sleep(300L);
            } catch (InterruptedException e10) {
                o0.b("CloseRunnable", e10.getMessage());
            }
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f38461a;
            if (mBridgeH5EndCardView == null || (handler = mBridgeH5EndCardView.L) == null) {
                return;
            }
            handler.sendEmptyMessage(100);
        }
    }

    private class g implements Runnable {

        private MBridgeH5EndCardView f38463a;

        public g(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.f38463a = mBridgeH5EndCardView;
        }

        @Override
        public void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f38463a;
            if (mBridgeH5EndCardView == null || mBridgeH5EndCardView.f38454z) {
                return;
            }
            this.f38463a.f38454z = true;
            this.f38463a.f38448t = false;
            MBridgeH5EndCardView.this.reportRenderResult("timeout", 5);
            this.f38463a.notifyListener.a(127, "");
            o0.a(MBridgeBaseView.TAG, "notify TYPE_NOTIFY_SHOW_NATIVE_ENDCARD");
        }
    }

    private static class h implements Runnable {

        private MBridgeH5EndCardView f38465a;

        private int f38466b;

        public h(MBridgeH5EndCardView mBridgeH5EndCardView, int i10) {
            this.f38465a = mBridgeH5EndCardView;
            this.f38466b = i10;
        }

        @Override
        public void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f38465a;
            if (mBridgeH5EndCardView == null || mBridgeH5EndCardView.f38394b == null) {
                return;
            }
            try {
                if (mBridgeH5EndCardView.f38453y) {
                    o0.c(MBridgeBaseView.TAG, "insertEndCardReadyState hasInsertLoadEndCardReport true return");
                    return;
                }
                this.f38465a.f38453y = true;
                m mVar = new m("m_download_end", 12, (this.f38466b * 1000) + "", this.f38465a.f38394b.getendcard_url(), this.f38465a.f38394b.getId(), this.f38465a.unitId, "ready timeout", (y0.b(this.f38465a.f38394b.getendcard_url()) && this.f38465a.f38394b.getendcard_url().contains(".zip")) ? "1" : "2");
                try {
                    if (this.f38465a.f38394b.getAdType() == 287) {
                        mVar.a("3");
                    } else if (this.f38465a.f38394b.getAdType() == 94) {
                        mVar.a("1");
                    } else if (this.f38465a.f38394b.getAdType() == 42) {
                        mVar.a("2");
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                mVar.n(this.f38465a.f38394b.getRequestId());
                mVar.k(this.f38465a.f38394b.getCurrentLocalRid());
                mVar.o(this.f38465a.f38394b.getRequestIdNotice());
                mVar.a(this.f38465a.f38394b.getAdSpaceT());
                this.f38465a.isLoadSuccess();
            } catch (Throwable th2) {
                o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
            }
        }
    }

    private class i implements Runnable {

        private MBridgeH5EndCardView f38467a;

        public i(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.f38467a = mBridgeH5EndCardView;
        }

        @Override
        public void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f38467a;
            if (mBridgeH5EndCardView != null) {
                mBridgeH5EndCardView.G = true;
            }
        }
    }

    private class j implements Runnable {

        private MBridgeH5EndCardView f38469a;

        public j(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.f38469a = mBridgeH5EndCardView;
        }

        @Override
        public void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f38469a;
            if (mBridgeH5EndCardView != null) {
                mBridgeH5EndCardView.H = true;
            }
        }
    }

    private class k implements Runnable {

        private MBridgeH5EndCardView f38471a;

        public k(MBridgeH5EndCardView mBridgeH5EndCardView) {
            this.f38471a = mBridgeH5EndCardView;
        }

        @Override
        public void run() {
            MBridgeH5EndCardView mBridgeH5EndCardView = this.f38471a;
            if (mBridgeH5EndCardView != null) {
                if (!mBridgeH5EndCardView.I) {
                    MBridgeH5EndCardView.this.setCloseVisible(0);
                }
                this.f38471a.D = true;
            }
        }
    }

    public MBridgeH5EndCardView(Context context) {
        super(context);
        this.f38445q = false;
        this.f38446r = new Handler();
        this.f38448t = false;
        this.f38449u = false;
        this.f38450v = false;
        this.f38451w = 1;
        this.f38452x = 1;
        this.f38453y = false;
        this.f38454z = false;
        this.A = 1;
        this.B = 0L;
        this.C = false;
        this.D = false;
        this.E = false;
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = false;
        this.K = "";
        this.L = new a(Looper.getMainLooper());
        this.M = false;
        this.N = false;
        this.O = false;
    }

    public void i() {
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        int i10 = getResources().getConfiguration().orientation;
        String str = "undefined";
        if (i10 != 0) {
            if (i10 == 1) {
                str = "portrait";
            } else if (i10 == 2) {
                str = TmcStartParams.KEY_LANDSCAPE;
            }
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("orientation", str);
            jSONObject.put("locked", "true");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        HashMap map = new HashMap();
        map.put("placementType", "Interstitial");
        map.put("state", "default");
        map.put("viewable", "true");
        map.put("currentAppOrientation", jSONObject);
        if (getContext() instanceof Activity) {
            float fN = k0.n(getContext());
            float fM = k0.m(getContext());
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((Activity) getContext()).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            float f10 = displayMetrics.widthPixels;
            float f11 = displayMetrics.heightPixels;
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(this.f38444p, fN, fM);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f38444p, f10, f11);
        }
        com.mbridge.msdk.mbsignalcommon.mraid.a aVarA = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
        WindVaneWebView windVaneWebView = this.f38444p;
        aVarA.b(windVaneWebView, windVaneWebView.getLeft(), this.f38444p.getTop(), this.f38444p.getWidth(), this.f38444p.getHeight());
        com.mbridge.msdk.mbsignalcommon.mraid.a aVarA2 = com.mbridge.msdk.mbsignalcommon.mraid.a.a();
        WindVaneWebView windVaneWebView2 = this.f38444p;
        aVarA2.a(windVaneWebView2, windVaneWebView2.getLeft(), this.f38444p.getTop(), this.f38444p.getWidth(), this.f38444p.getHeight());
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f38444p, map);
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f38444p, com.mbridge.msdk.mbsignalcommon.mraid.d.f35676f);
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f38444p);
    }

    public boolean canBackPress() {
        ImageView imageView = this.f38443o;
        return imageView != null && imageView.getVisibility() == 0;
    }

    @Override
    public void close() {
        try {
            onCloseViewClick();
        } catch (Exception e10) {
            o0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
    }

    @Override
    public void defaultShow() {
        super.defaultShow();
    }

    public void excuteEndCardShowTask(int i10) {
        this.f38446r.postDelayed(new h(this, i10), i10 * 1000);
    }

    public void excuteTask() {
        if (this.f38450v || this.f38451w <= -1) {
            return;
        }
        this.f38446r.postDelayed(new k(this), this.f38451w * 1000);
    }

    public void executeEndCardShow(int i10) {
        this.f38446r.postDelayed(new g(this), i10 * 1000);
    }

    @Override
    public void expand(String str, boolean z10) {
    }

    protected RelativeLayout.LayoutParams getContentLayoutParams() {
        return new RelativeLayout.LayoutParams(-1, -1);
    }

    @Override
    public CampaignEx getMraidCampaign() {
        return this.f38394b;
    }

    protected String getURL() {
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx == null) {
            this.C = false;
            return null;
        }
        this.C = true;
        if (campaignEx.isMraid()) {
            this.f38450v = false;
            String mraid = this.f38394b.getMraid();
            if (TextUtils.isEmpty(mraid)) {
                return this.f38394b.getEndScreenUrl();
            }
            File file = new File(mraid);
            try {
                if (file.exists() && file.isFile() && file.canRead()) {
                    mraid = "file:////" + mraid;
                } else {
                    mraid = this.f38394b.getEndScreenUrl();
                }
                return mraid;
            } catch (Throwable th2) {
                if (!MBridgeConstans.DEBUG) {
                    return mraid;
                }
                th2.printStackTrace();
                return mraid;
            }
        }
        String str = this.f38394b.getendcard_url();
        if (y0.a(str)) {
            this.f38450v = false;
            return this.f38394b.getEndScreenUrl();
        }
        this.f38450v = true;
        String h5ResAddress = H5DownLoadManager.getInstance().getH5ResAddress(str);
        if (!TextUtils.isEmpty(h5ResAddress)) {
            return h5ResAddress + "&native_adtype=" + this.f38394b.getAdType();
        }
        try {
            String path = Uri.parse(str).getPath();
            if (!TextUtils.isEmpty(path) && path.toLowerCase().endsWith(".zip")) {
                String endScreenUrl = this.f38394b.getEndScreenUrl();
                if (TextUtils.isEmpty(endScreenUrl)) {
                    return null;
                }
                this.f38450v = false;
                excuteTask();
                return endScreenUrl;
            }
        } catch (Throwable th3) {
            o0.b(MBridgeBaseView.TAG, th3.getMessage());
        }
        return str + "&native_adtype=" + this.f38394b.getAdType();
    }

    @Override
    public void handlerPlayableException(String str) {
        if (this.f38449u) {
            return;
        }
        this.f38449u = true;
        this.f38448t = false;
        if (this.f38394b != null) {
            m mVar = new m();
            mVar.n(this.f38394b.getRequestId());
            mVar.o(this.f38394b.getRequestIdNotice());
            mVar.b(this.f38394b.getId());
            mVar.m(str);
            com.mbridge.msdk.foundation.same.report.g.a(mVar, this.f38393a.getApplicationContext(), this.unitId);
        }
    }

    @Override
    public void init(Context context) {
        int iFindLayout = findLayout("mbridge_reward_endcard_h5");
        if (g0.a(iFindLayout)) {
            View viewInflate = this.f38395c.inflate(iFindLayout, (ViewGroup) null);
            this.f38441m = viewInflate;
            try {
                this.f38397e = a(viewInflate);
            } catch (Exception unused) {
                this.f38397e = false;
            }
            addView(this.f38441m, getContentLayoutParams());
            d();
            j();
        }
    }

    @Override
    public void install(CampaignEx campaignEx) {
    }

    public boolean isLoadSuccess() {
        return this.f38448t;
    }

    public boolean isPlayable() {
        return this.f38450v;
    }

    protected void j() {
        if (this.f38397e) {
            setMatchParent();
        }
    }

    @Override
    public void notifyCloseBtn(int i10) {
        if (i10 == 0) {
            this.E = true;
        } else {
            if (i10 != 1) {
                return;
            }
            this.F = true;
        }
    }

    public void onBackPress() {
        boolean z10;
        if (this.D || (((z10 = this.E) && this.F) || (!(z10 || !this.G || this.O) || (!z10 && this.H && this.O)))) {
            onCloseViewClick();
        }
    }

    public void onCloseViewClick() {
        try {
            if (this.f38444p != null) {
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f38444p, "onSystemDestory", "");
                new Thread(new f(this)).start();
            } else {
                this.notifyListener.a(103, "");
                this.notifyListener.a(Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE, "webview is null when closing webview");
            }
        } catch (Exception e10) {
            this.notifyListener.a(103, "");
            this.notifyListener.a(Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE, "close webview exception" + e10.getMessage());
            o0.a(MBridgeBaseView.TAG, e10.getMessage());
        }
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000134", this.f38394b);
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                th2.printStackTrace();
            }
        }
    }

    @Override
    public void onFinishRedirection(Campaign campaign, String str) {
        if (campaign == null) {
            return;
        }
        s0.a(campaign, this);
    }

    @Override
    public void onRedirectionFailed(Campaign campaign, String str) {
        if (campaign == null) {
            return;
        }
        s0.a(campaign, this);
    }

    @Override
    public void onSelfConfigurationChanged(Configuration configuration) {
        super.onSelfConfigurationChanged(configuration);
        orientation(configuration);
    }

    @Override
    public void onStartRedirection(Campaign campaign, String str) {
        s0.b(campaign, this);
    }

    @Override
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (i10 != 0 || this.J) {
            return;
        }
        this.J = true;
        setFocusableInTouchMode(true);
        requestFocus();
        requestFocusFromTouch();
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        if (z10) {
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().c(this.f38444p, "true");
        } else {
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().c(this.f38444p, "false");
        }
    }

    @Override
    public void open(String str) {
        super.open(str);
    }

    @Override
    public void orientation(Configuration configuration) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (configuration.orientation == 2) {
                jSONObject.put("orientation", TmcStartParams.KEY_LANDSCAPE);
            } else {
                jSONObject.put("orientation", "portrait");
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f38444p, "orientation", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        String url = getURL();
        if (!this.f38397e || this.f38394b == null || TextUtils.isEmpty(url) || this.f38444p == null) {
            reportRenderResult("PL URL IS NULL", 3);
            this.notifyListener.a(127, "");
            this.notifyListener.a(129, "");
        } else {
            this.B = System.currentTimeMillis();
            try {
                reportRenderResult("start", 0);
            } catch (Exception unused) {
            }
            com.mbridge.msdk.foundation.same.webview.a aVar = new com.mbridge.msdk.foundation.same.webview.a(this.f38394b);
            aVar.a(this.f38394b.getAppName());
            this.f38444p.setDownloadListener(aVar);
            this.f38444p.setCampaignId(this.f38394b.getId());
            this.f38444p.setTempTypeForMetrics(3);
            CampaignEx campaignEx = this.f38394b;
            if (campaignEx != null) {
                this.f38444p.setCampaignEx(campaignEx);
            }
            setCloseVisible(8);
            this.f38444p.setApiManagerJSFactory(bVar);
            if (this.f38394b.isMraid()) {
                this.f38444p.setMraidObject(this);
            }
            this.f38444p.setWebViewListener(new c(url.contains("wfr=1") || url.contains("wfl=1")));
            if (TextUtils.isEmpty(this.f38394b.getMraid())) {
                h();
            }
            setHtmlSource(HTMLResourceManager.getInstance().getHtmlContentFromUrl(url));
            if (TextUtils.isEmpty(this.f38447s)) {
                this.f38444p.loadUrl(url);
            } else {
                this.f38444p.loadDataWithBaseURL(url, this.f38447s, "text/html", "UTF-8", null);
            }
        }
        this.O = false;
    }

    @Override
    public void readyStatus(int i10) {
    }

    public void release() {
        Handler handler = this.f38446r;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f38446r = null;
        }
        Handler handler2 = this.L;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
            this.L = null;
        }
        this.f38442n.removeAllViews();
        this.f38444p.release();
        this.f38444p = null;
    }

    @Override
    public void reportOpen(String str) {
        CampaignEx mraidCampaign = getMraidCampaign();
        if (mraidCampaign != null) {
            new com.mbridge.msdk.foundation.same.report.h(getContext()).a(mraidCampaign.getRequestId(), mraidCampaign.getRequestIdNotice(), mraidCampaign.getId(), this.unitId, str, this.f38394b.isBidCampaign());
        }
    }

    public void reportRenderResult(String str, int i10) {
        if (this.f38394b == null || this.f38449u) {
            return;
        }
        m mVar = new m();
        mVar.n(this.f38394b.getRequestId());
        mVar.o(this.f38394b.getRequestIdNotice());
        mVar.b(this.f38394b.getId());
        mVar.d(i10);
        mVar.e(String.valueOf(System.currentTimeMillis() - this.B));
        mVar.m(str);
        String str2 = "2";
        if (this.f38394b.getAdType() == 287) {
            mVar.a("3");
        } else if (this.f38394b.getAdType() == 94) {
            mVar.a("1");
        } else if (this.f38394b.getAdType() == 42) {
            mVar.a("2");
        }
        if (this.f38394b.isMraid()) {
            mVar.b(m.N);
        } else {
            mVar.g(this.f38394b.getendcard_url());
            if (y0.b(this.f38394b.getendcard_url()) && this.f38394b.getendcard_url().contains(".zip")) {
                str2 = "1";
            }
            mVar.f(str2);
            mVar.b(m.O);
        }
        com.mbridge.msdk.foundation.same.report.g.b(mVar, this.unitId, this.f38394b);
    }

    public void setCloseDelayShowTime(int i10) {
        this.f38451w = i10;
    }

    public void setCloseVisible(int i10) {
        if (this.f38397e) {
            this.f38443o.setVisibility(i10);
        }
    }

    public void setCloseVisibleForMraid(int i10) {
        if (this.f38397e) {
            this.I = true;
            if (i10 == 4) {
                this.f38443o.setImageDrawable(new ColorDrawable(16711680));
            } else {
                this.f38443o.setImageResource(findDrawable("mbridge_reward_close"));
            }
            this.f38443o.setVisibility(0);
        }
    }

    public void setError(boolean z10) {
        this.f38449u = z10;
    }

    public void setHtmlSource(String str) {
        this.f38447s = str;
    }

    public void setLoadPlayable(boolean z10) {
        this.O = z10;
    }

    public void setNotchValue(String str, int i10, int i11, int i12, int i13) {
        if (!TextUtils.isEmpty(str)) {
            this.K = str;
        }
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx == null || campaignEx.getAdSpaceT() == 2) {
            return;
        }
        o0.b(MBridgeBaseView.TAG, "NOTCH H5ENDCARD " + String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13)));
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f38443o.getLayoutParams();
        int iA = t0.a(getContext(), 20.0f);
        layoutParams.setMargins(i10 + iA, i12 + iA, i11 + iA, i13 + iA);
        this.f38443o.setLayoutParams(layoutParams);
    }

    public void setPlayCloseBtnTm(int i10) {
        this.f38452x = i10;
    }

    public void setUnitId(String str) {
        this.unitId = str;
    }

    public void startCounterEndCardShowTimer() {
        try {
            String str = this.f38394b.getendcard_url();
            if (y0.b(str) && str.contains("wfl=1")) {
                String[] strArrSplit = str.split(UrlUtils.AND_MARK);
                int iA = 15;
                if (strArrSplit != null && strArrSplit.length > 0) {
                    for (String str2 : strArrSplit) {
                        if (y0.b(str2) && str2.contains("timeout") && str2.split(UrlUtils.EQUAL_MARK) != null && str2.split(UrlUtils.EQUAL_MARK).length > 0) {
                            iA = t0.a((Object) str2.split(UrlUtils.EQUAL_MARK)[1]);
                        }
                    }
                }
                executeEndCardShow(iA);
            }
        } catch (Throwable th2) {
            o0.a(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    @Override
    public void toggleCloseBtn(int i10) {
        int visibility = this.f38443o.getVisibility();
        if (i10 == 1) {
            this.D = true;
            visibility = 0;
        } else if (i10 == 2) {
            this.D = false;
            if (this.O) {
                g();
            } else {
                f();
            }
            visibility = 8;
        }
        setCloseVisible(visibility);
    }

    @Override
    public void unload() {
        close();
    }

    @Override
    public void useCustomClose(boolean z10) {
        try {
            setCloseVisibleForMraid(z10 ? 4 : 0);
        } catch (Exception e10) {
            o0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
    }

    public void volumeChange(double d10) {
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f38444p, d10);
    }

    @Override
    public void webviewshow() {
        WindVaneWebView windVaneWebView = this.f38444p;
        if (windVaneWebView != null) {
            windVaneWebView.post(new d());
        }
    }

    private void f() {
        if (this.M || this.E) {
            return;
        }
        this.M = true;
        int i10 = this.f38451w;
        if (i10 == 0) {
            this.G = true;
            return;
        }
        this.G = false;
        if (i10 > -1) {
            this.f38446r.postDelayed(new i(this), this.f38451w * 1000);
        }
    }

    private void g() {
        if (this.N || this.E) {
            return;
        }
        this.N = true;
        int i10 = this.f38452x;
        if (i10 == 0) {
            this.H = true;
            return;
        }
        this.H = false;
        if (i10 > -1) {
            this.f38446r.postDelayed(new j(this), this.f38452x * 1000);
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x008d A[EDGE_INSN: B:37:0x008d->B:38:0x008e BREAK  A[LOOP:0: B:22:0x0052->B:32:0x007d]] */
    private void h() {
        int iV;
        try {
            this.B = System.currentTimeMillis();
            String str = this.f38394b.getendcard_url();
            com.mbridge.msdk.videocommon.setting.c cVarC = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.unitId);
            if (this.f38450v && y0.b(str)) {
                if (!str.contains("wfr=1") && (cVarC == null || cVarC.v() <= 0)) {
                    return;
                }
                if (str.contains("wfr=1")) {
                    String[] strArrSplit = str.split(UrlUtils.AND_MARK);
                    if (strArrSplit != null && strArrSplit.length > 0) {
                        int length = strArrSplit.length;
                        int i10 = 0;
                        while (true) {
                            if (i10 >= length) {
                                iV = 20;
                                break;
                            }
                            String str2 = strArrSplit[i10];
                            if (y0.b(str2) && str2.contains("to") && str2.split(UrlUtils.EQUAL_MARK) != null && str2.split(UrlUtils.EQUAL_MARK).length > 0) {
                                iV = t0.a((Object) str2.split(UrlUtils.EQUAL_MARK)[1]);
                                break;
                            }
                            i10++;
                        }
                    } else {
                        iV = 20;
                        break;
                    }
                } else {
                    if (cVarC == null || cVarC.v() <= 0) {
                        iV = 20;
                        break;
                    }
                    iV = cVarC.v();
                }
                if (iV >= 0) {
                    excuteEndCardShowTask(iV);
                } else {
                    excuteEndCardShowTask(20);
                }
            }
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
        }
    }

    public void e() {
        try {
            CampaignEx campaignEx = this.f38394b;
            if (campaignEx != null) {
                campaignEx.setCampaignUnitId(this.unitId);
                com.mbridge.msdk.foundation.feedback.b.b().d(this.unitId + "_1");
                com.mbridge.msdk.foundation.feedback.b.b().a(this.unitId + "_2", this.f38394b);
            }
            CampaignEx campaignEx2 = this.f38394b;
            if (campaignEx2 == null || !campaignEx2.isMraid()) {
                return;
            }
            ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
            imageView.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_notice", "drawable"));
            ImageView imageView2 = this.f38443o;
            RelativeLayout.LayoutParams layoutParams = imageView2 != null ? (RelativeLayout.LayoutParams) imageView2.getLayoutParams() : null;
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f), t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f));
            layoutParams2.addRule(9);
            layoutParams2.addRule(10);
            if (layoutParams != null) {
                layoutParams2.leftMargin = layoutParams.rightMargin;
                layoutParams2.topMargin = layoutParams.topMargin;
                layoutParams2.width = layoutParams.width;
                layoutParams2.height = layoutParams.height;
            } else {
                layoutParams2.leftMargin = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f);
                layoutParams2.topMargin = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f);
            }
            addView(imageView, layoutParams2);
            t0.a(4, imageView, this.f38394b, com.mbridge.msdk.foundation.controller.c.m().d(), false, new e());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    protected void d() {
        super.d();
        if (this.f38397e) {
            this.f38443o.setOnClickListener(new b());
        }
    }

    private boolean a(View view) {
        this.f38443o = (ImageView) view.findViewById(findID("mbridge_windwv_close"));
        this.f38442n = (RelativeLayout) view.findViewById(findID("mbridge_windwv_content_rl"));
        WindVaneWebView windVaneWebView = new WindVaneWebView(getContext());
        this.f38444p = windVaneWebView;
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx != null) {
            windVaneWebView.setLocalRequestId(campaignEx.getCurrentLocalRid());
        }
        this.f38444p.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f38442n.addView(this.f38444p);
        return isNotNULL(this.f38443o, this.f38444p);
    }

    class e implements com.mbridge.msdk.foundation.feedback.a {
        e() {
        }

        @Override
        public void a() {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeH5EndCardView.this.f38444p, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override
        public void close() {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeH5EndCardView.this.f38444p, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override
        public void a(String str) {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBridgeH5EndCardView.this.f38444p, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0088 A[Catch: all -> 0x002a, NullPointerException -> 0x008e, TryCatch #0 {NullPointerException -> 0x008e, blocks: (B:24:0x007e, B:26:0x0088, B:29:0x0090, B:31:0x009a, B:32:0x009e, B:34:0x00a8), top: B:50:0x007e, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0090 A[Catch: all -> 0x002a, NullPointerException -> 0x008e, TryCatch #0 {NullPointerException -> 0x008e, blocks: (B:24:0x007e, B:26:0x0088, B:29:0x0090, B:31:0x009a, B:32:0x009e, B:34:0x00a8), top: B:50:0x007e, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x009a A[Catch: all -> 0x002a, NullPointerException -> 0x008e, TryCatch #0 {NullPointerException -> 0x008e, blocks: (B:24:0x007e, B:26:0x0088, B:29:0x0090, B:31:0x009a, B:32:0x009e, B:34:0x00a8), top: B:50:0x007e, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x009e A[Catch: all -> 0x002a, NullPointerException -> 0x008e, TryCatch #0 {NullPointerException -> 0x008e, blocks: (B:24:0x007e, B:26:0x0088, B:29:0x0090, B:31:0x009a, B:32:0x009e, B:34:0x00a8), top: B:50:0x007e, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00a8 A[Catch: all -> 0x002a, NullPointerException -> 0x008e, TRY_LEAVE, TryCatch #0 {NullPointerException -> 0x008e, blocks: (B:24:0x007e, B:26:0x0088, B:29:0x0090, B:31:0x009a, B:32:0x009e, B:34:0x00a8), top: B:50:0x007e, outer: #1 }] */
    public void a(long j10, boolean z10) {
        String str;
        int i10;
        int i11;
        String str2;
        int i12;
        m mVar;
        try {
            if (this.f38453y) {
                return;
            }
            this.f38453y = true;
            String str3 = (y0.b(this.f38394b.getendcard_url()) && this.f38394b.getendcard_url().contains(".zip")) ? "1" : "2";
            int i13 = 2;
            try {
                if (z10) {
                    str2 = "ready timeout";
                    i12 = 12;
                } else {
                    if (this.A != 2) {
                        str = "ready yes";
                        i10 = 1;
                        i11 = 10;
                    } else {
                        str2 = "ready no";
                        i13 = 3;
                        i12 = 11;
                    }
                    String str4 = str;
                    String str5 = str;
                    int i14 = i10;
                    mVar = new m("m_download_end", i11, j10 + "", this.f38394b.getendcard_url(), this.f38394b.getId(), this.unitId, str4, str3);
                    if (this.f38394b.getAdType() == 287) {
                        mVar.a("3");
                    } else if (this.f38394b.getAdType() == 94) {
                        mVar.a("1");
                    } else if (this.f38394b.getAdType() == 42) {
                        mVar.a("2");
                    }
                    mVar.n(this.f38394b.getRequestId());
                    mVar.k(this.f38394b.getCurrentLocalRid());
                    mVar.o(this.f38394b.getRequestIdNotice());
                    mVar.a(this.f38394b.getAdSpaceT());
                    a(mVar, this.f38394b);
                    if (isLoadSuccess() && i14 == 1) {
                        mVar.d(i14);
                        mVar.e(String.valueOf(j10));
                        mVar.b(this.f38394b.getId());
                        mVar.m(str5);
                        if (this.f38394b.isMraid()) {
                            mVar.b(m.N);
                        } else {
                            mVar.g(this.f38394b.getendcard_url());
                            mVar.f(str3);
                            mVar.b(m.O);
                        }
                        com.mbridge.msdk.foundation.same.report.g.b(mVar, this.unitId, this.f38394b);
                        return;
                    }
                }
                if (this.f38394b.getAdType() == 287) {
                    mVar.a("3");
                } else if (this.f38394b.getAdType() == 94) {
                    mVar.a("1");
                } else if (this.f38394b.getAdType() == 42) {
                    mVar.a("2");
                }
            } catch (NullPointerException e10) {
                e10.printStackTrace();
            }
            str = str2;
            i10 = i13;
            i11 = i12;
            String str6 = str;
            String str7 = str;
            int i15 = i10;
            mVar = new m("m_download_end", i11, j10 + "", this.f38394b.getendcard_url(), this.f38394b.getId(), this.unitId, str6, str3);
            mVar.n(this.f38394b.getRequestId());
            mVar.k(this.f38394b.getCurrentLocalRid());
            mVar.o(this.f38394b.getRequestIdNotice());
            mVar.a(this.f38394b.getAdSpaceT());
            a(mVar, this.f38394b);
            if (isLoadSuccess()) {
            }
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
        }
    }

    public MBridgeH5EndCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f38445q = false;
        this.f38446r = new Handler();
        this.f38448t = false;
        this.f38449u = false;
        this.f38450v = false;
        this.f38451w = 1;
        this.f38452x = 1;
        this.f38453y = false;
        this.f38454z = false;
        this.A = 1;
        this.B = 0L;
        this.C = false;
        this.D = false;
        this.E = false;
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = false;
        this.K = "";
        this.L = new a(Looper.getMainLooper());
        this.M = false;
        this.N = false;
        this.O = false;
    }

    class c extends com.mbridge.msdk.mbsignalcommon.listener.b {

        final boolean f38457a;

        c(boolean z10) {
            this.f38457a = z10;
        }

        @Override
        public void a(WebView webView, String str) {
            super.a(webView, str);
            MBridgeH5EndCardView mBridgeH5EndCardView = MBridgeH5EndCardView.this;
            if (mBridgeH5EndCardView.f38449u) {
                return;
            }
            mBridgeH5EndCardView.f38448t = true;
            mBridgeH5EndCardView.notifyListener.a(100, "");
            if (MBridgeH5EndCardView.this.f38394b != null) {
                m mVar = new m();
                mVar.n(MBridgeH5EndCardView.this.f38394b.getRequestId());
                mVar.o(MBridgeH5EndCardView.this.f38394b.getRequestIdNotice());
                mVar.b(MBridgeH5EndCardView.this.f38394b.getId());
                mVar.d(1);
                mVar.e(String.valueOf(System.currentTimeMillis() - MBridgeH5EndCardView.this.B));
                mVar.m("onPageFinished");
                String str2 = "2";
                if (MBridgeH5EndCardView.this.f38394b.getAdType() == 287) {
                    mVar.a("3");
                } else if (MBridgeH5EndCardView.this.f38394b.getAdType() == 94) {
                    mVar.a("1");
                } else if (MBridgeH5EndCardView.this.f38394b.getAdType() == 42) {
                    mVar.a("2");
                }
                if (MBridgeH5EndCardView.this.f38394b.isMraid()) {
                    mVar.b(m.N);
                } else {
                    mVar.g(MBridgeH5EndCardView.this.f38394b.getendcard_url());
                    if (y0.b(MBridgeH5EndCardView.this.f38394b.getendcard_url()) && MBridgeH5EndCardView.this.f38394b.getendcard_url().contains(".zip")) {
                        str2 = "1";
                    }
                    mVar.f(str2);
                    mVar.b(m.O);
                }
                MBridgeH5EndCardView mBridgeH5EndCardView2 = MBridgeH5EndCardView.this;
                com.mbridge.msdk.foundation.same.report.g.b(mVar, mBridgeH5EndCardView2.unitId, mBridgeH5EndCardView2.f38394b);
            }
            MBridgeH5EndCardView.this.notifyListener.a(120, "");
            if (this.f38457a) {
                return;
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 3);
                eVar.a("result", 1);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000155", MBridgeH5EndCardView.this.f38394b, eVar);
            } catch (Throwable th2) {
                o0.b("WindVaneWebView", th2.getMessage());
            }
        }

        @Override
        public void b(WebView webView, int i10) {
            super.b(webView, i10);
            MBridgeH5EndCardView.this.A = i10;
            if (MBridgeH5EndCardView.this.f38454z) {
                return;
            }
            MBridgeH5EndCardView.this.f38454z = true;
            if (i10 == 1) {
                MBridgeH5EndCardView.this.reportRenderResult(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, 4);
            } else {
                MBridgeH5EndCardView.this.notifyListener.a(127, "");
                MBridgeH5EndCardView.this.reportRenderResult("failed", 6);
            }
        }

        @Override
        public void a(WebView webView, int i10, String str, String str2) {
            super.a(webView, i10, str, str2);
            MBridgeH5EndCardView mBridgeH5EndCardView = MBridgeH5EndCardView.this;
            if (mBridgeH5EndCardView.f38449u) {
                return;
            }
            mBridgeH5EndCardView.notifyListener.a(Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, "onReceivedError " + i10 + str);
            MBridgeH5EndCardView.this.reportRenderResult(str, 3);
            MBridgeH5EndCardView.this.notifyListener.a(127, "");
            MBridgeH5EndCardView.this.notifyListener.a(129, "");
            MBridgeH5EndCardView.this.f38449u = true;
        }

        @Override
        public void a(WebView webView, int i10) {
            super.a(webView, i10);
            o0.c("WindVaneWebView", "h5EncardView readyStatus:" + i10 + "- isError" + MBridgeH5EndCardView.this.f38449u);
            MBridgeH5EndCardView.this.A = i10;
            if (!MBridgeH5EndCardView.this.f38449u) {
                MBridgeH5EndCardView.this.a(System.currentTimeMillis() - MBridgeH5EndCardView.this.B, false);
            }
            if (this.f38457a) {
                try {
                    com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                    eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 3);
                    eVar.a("result", Integer.valueOf(i10));
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000155", MBridgeH5EndCardView.this.f38394b, eVar);
                } catch (Throwable th2) {
                    o0.b("WindVaneWebView", th2.getMessage());
                }
            }
        }

        @Override
        public void a(WebView webView) {
            super.a(webView);
            MBridgeH5EndCardView.this.setCloseVisible(0);
        }
    }

    private static void a(m mVar, CampaignEx campaignEx) {
        try {
            com.mbridge.msdk.videocommon.setting.c cVarC = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), campaignEx.getCampaignUnitId());
            if (cVarC != null) {
                mVar.s(cVarC.x());
            }
            com.mbridge.msdk.videocommon.setting.a aVarC = com.mbridge.msdk.videocommon.setting.b.b().c();
            if (aVarC != null) {
                mVar.r(aVarC.f());
            }
        } catch (Exception e10) {
            o0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
    }
}
