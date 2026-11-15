package com.mbridge.msdk.interstitial.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.activity.MBBaseActivity;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class MBInterstitialActivity extends MBBaseActivity implements com.mbridge.msdk.mbsignalcommon.mraid.b {
    public static final String INTENT_CAMAPIGN = "campaign";
    public static final String INTENT_UNIT_ID = "unitId";
    public static final long WATI_JS_INVOKE = 2000;
    public static final long WEB_LOAD_TIME = 15000;

    private CampaignEx f35121h;

    private WindVaneWebView f35122i;

    private ImageView f35123j;

    private com.mbridge.msdk.interstitial.controller.a.d f35124k;

    private boolean f35125l;

    private com.mbridge.msdk.mbsignalcommon.mraid.d f35126m;
    public ProgressBar mProgressBar;
    public String mUnitid;

    private long f35127n;

    private boolean f35128o;

    private boolean f35129p;

    private com.mbridge.msdk.click.a f35133t;

    private boolean f35119f = false;

    private boolean f35120g = false;
    public boolean mIsMBPage = false;

    private Handler f35130q = new f();

    Runnable f35131r = new j();

    Runnable f35132s = new k();

    class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            ProgressBar progressBar = MBInterstitialActivity.this.mProgressBar;
            if (progressBar != null) {
                progressBar.setVisibility(0);
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override
        public void run() {
            ProgressBar progressBar = MBInterstitialActivity.this.mProgressBar;
            if (progressBar != null) {
                progressBar.setVisibility(8);
            }
        }
    }

    class c implements NativeListener.NativeTrackingListener {
        c() {
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
                MBInterstitialActivity.this.hideLoading();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public boolean onInterceptDefaultLoadingDialog() {
            return false;
        }

        @Override
        public void onRedirectionFailed(Campaign campaign, String str) {
            MBInterstitialActivity.this.hideLoading();
        }

        @Override
        public void onShowLoading(Campaign campaign) {
        }

        @Override
        public void onStartRedirection(Campaign campaign, String str) {
            try {
                MBInterstitialActivity.this.showLoading();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override
        public void run() {
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(MBInterstitialActivity.this.f35122i, MBInterstitialActivity.this.f35122i.getLeft(), MBInterstitialActivity.this.f35122i.getTop(), MBInterstitialActivity.this.f35122i.getWidth(), MBInterstitialActivity.this.f35122i.getHeight());
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(MBInterstitialActivity.this.f35122i, MBInterstitialActivity.this.f35122i.getLeft(), MBInterstitialActivity.this.f35122i.getTop(), MBInterstitialActivity.this.f35122i.getWidth(), MBInterstitialActivity.this.f35122i.getHeight());
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override
        public void run() {
            com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(MBInterstitialActivity.this)).b(MBInterstitialActivity.this.f35121h.getId());
        }
    }

    class f extends Handler {
        f() {
        }

        @Override
        public void handleMessage(Message message) {
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override
        public void onClick(View view) {
            MBInterstitialActivity.this.finish();
        }
    }

    class i extends com.mbridge.msdk.mbsignalcommon.listener.b {
        i() {
        }

        @Override
        public void a(WebView webView, int i10) {
        }

        @Override
        public void b(WebView webView, int i10) {
        }

        @Override
        public void c(WebView webView, int i10) {
        }

        @Override
        public void a(WebView webView, String str, Bitmap bitmap) {
        }

        @Override
        public boolean b(WebView webView, String str) {
            return true;
        }

        @Override
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            MBInterstitialActivity.this.f35125l = true;
        }

        @Override
        public void a(WebView webView, int i10, String str, String str2) {
            try {
                MBInterstitialActivity.this.f35125l = true;
                if (MBInterstitialActivity.this.f35124k != null) {
                    MBInterstitialActivity.this.f35124k.a(str);
                }
                MBInterstitialActivity.this.a(3, str);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public void a(WebView webView, String str) {
            try {
                if (MBInterstitialActivity.this.f35125l) {
                    return;
                }
                MBInterstitialActivity.this.a(1, "");
                MBInterstitialActivity mBInterstitialActivity = MBInterstitialActivity.this;
                if (mBInterstitialActivity.f35131r != null && mBInterstitialActivity.f35130q != null) {
                    MBInterstitialActivity.this.f35130q.removeCallbacks(MBInterstitialActivity.this.f35131r);
                }
                if (MBInterstitialActivity.this.f35124k != null) {
                    MBInterstitialActivity.this.f35124k.c();
                }
                MBInterstitialActivity mBInterstitialActivity2 = MBInterstitialActivity.this;
                if (!mBInterstitialActivity2.mIsMBPage) {
                    mBInterstitialActivity2.f35130q.postDelayed(MBInterstitialActivity.this.f35132s, 2000L);
                }
                MBInterstitialActivity.this.i();
            } catch (Exception e10) {
                e10.printStackTrace();
                if (MBInterstitialActivity.this.f35124k != null) {
                    MBInterstitialActivity.this.f35124k.a("load page failed");
                }
            }
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override
        public void run() {
            if (MBInterstitialActivity.this.f35120g) {
                return;
            }
            MBInterstitialActivity.this.f35119f = true;
            if (MBInterstitialActivity.this.f35124k != null) {
                MBInterstitialActivity.this.f35124k.a("load page timeout");
                if (MBInterstitialActivity.this.f35122i != null) {
                    MBInterstitialActivity.this.f35122i.setVisibility(8);
                    MBInterstitialActivity.this.f35122i.setWebViewListener(null);
                    MBInterstitialActivity.this.f35122i.release();
                }
                MBInterstitialActivity.this.hideLoading();
            }
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override
        public void run() {
            MBInterstitialActivity mBInterstitialActivity = MBInterstitialActivity.this;
            if (mBInterstitialActivity.mIsMBPage) {
                return;
            }
            if (mBInterstitialActivity.f35121h != null && MBInterstitialActivity.this.f35121h.isMraid()) {
                MBInterstitialActivity.this.m();
            }
            com.mbridge.msdk.interstitial.cache.a.a().a(MBInterstitialActivity.this.f35121h, MBInterstitialActivity.this.mUnitid);
            if (MBInterstitialActivity.this.f35119f) {
                return;
            }
            MBInterstitialActivity.this.f35120g = true;
            MBInterstitialActivity.this.hideLoading();
            MBInterstitialActivity.this.showWebView();
        }
    }

    class l implements com.mbridge.msdk.mbsignalcommon.mraid.d.b {
        l() {
        }

        @Override
        public void a(double d10) {
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(MBInterstitialActivity.this.f35122i, d10);
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override
        public void run() {
            try {
                if (MBInterstitialActivity.this.f35122i == null || MBInterstitialActivity.this.f35121h == null) {
                    return;
                }
                MBInterstitialActivity.this.f35122i.setVisibility(0);
                if (MBInterstitialActivity.this.f35121h.isMraid()) {
                    MBInterstitialActivity.this.k();
                }
                MBInterstitialActivity.this.j();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override
        public void run() {
            if (MBInterstitialActivity.this.f35122i != null) {
                MBInterstitialActivity.this.f35122i.setVisibility(8);
            }
        }
    }

    private void l() {
        com.mbridge.msdk.foundation.same.report.h hVar = new com.mbridge.msdk.foundation.same.report.h(getApplicationContext());
        CampaignEx campaignEx = this.f35121h;
        if (campaignEx != null) {
            hVar.b(campaignEx.getRequestId(), this.f35121h.getRequestIdNotice(), this.f35121h.getId(), this.mUnitid, com.mbridge.msdk.mbsignalcommon.mraid.c.b(this.f35121h.getId()), this.f35121h.isBidCampaign());
            com.mbridge.msdk.mbsignalcommon.mraid.c.a(this.f35121h.getId());
            this.f35128o = true;
        }
    }

    public void m() {
        List<String> pv_urls;
        try {
            com.mbridge.msdk.foundation.controller.c.m().a(this);
            if (!TextUtils.isEmpty(this.f35121h.getImpressionURL())) {
                Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                CampaignEx campaignEx = this.f35121h;
                com.mbridge.msdk.click.a.a(contextD, campaignEx, this.mUnitid, campaignEx.getImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f33586m);
            }
            if (!TextUtils.isEmpty(this.f35121h.getOnlyImpressionURL())) {
                Context contextD2 = com.mbridge.msdk.foundation.controller.c.m().d();
                CampaignEx campaignEx2 = this.f35121h;
                com.mbridge.msdk.click.a.a(contextD2, campaignEx2, this.mUnitid, campaignEx2.getOnlyImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f33587n);
            }
            com.mbridge.msdk.foundation.same.buffer.b.a(this.mUnitid, this.f35121h, com.vungle.ads.internal.b.PLACEMENT_TYPE_INTERSTITIAL);
            e eVar = new e();
            if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                com.mbridge.msdk.foundation.same.threadpool.a.b().execute(eVar);
            } else {
                eVar.run();
            }
            CampaignEx campaignEx3 = this.f35121h;
            if (campaignEx3 == null || (pv_urls = campaignEx3.getPv_urls()) == null || pv_urls.size() <= 0) {
                return;
            }
            Iterator<String> it = pv_urls.iterator();
            while (it.hasNext()) {
                com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f35121h, this.mUnitid, it.next(), false, true);
            }
        } catch (Throwable th2) {
            o0.a("MBInterstitialActivity", th2.getMessage());
        }
    }

    private void n() {
        CampaignEx campaignEx;
        this.f35123j.setOnClickListener(new h());
        if (this.f35122i == null || (campaignEx = this.f35121h) == null) {
            return;
        }
        com.mbridge.msdk.foundation.same.webview.a aVar = new com.mbridge.msdk.foundation.same.webview.a(campaignEx);
        aVar.a(this.f35121h.getAppName());
        this.f35122i.setCampaignId(this.f35121h.getId());
        this.f35122i.setDownloadListener(aVar);
    }

    public void clickTracking() {
        try {
            if (this.f35121h != null && !y0.a(this.mUnitid)) {
                onIntersClick();
                com.mbridge.msdk.click.a aVar = new com.mbridge.msdk.click.a(getApplicationContext(), this.mUnitid);
                this.f35133t = aVar;
                aVar.a(new c());
                this.f35133t.a(this.f35121h);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void close() {
        finish();
    }

    @Override
    public void expand(String str, boolean z10) {
    }

    @Override
    public void finish() {
        super.finish();
        if (!this.f35128o) {
            l();
        }
        if (this.f35129p) {
            return;
        }
        reportPlayableClosed();
    }

    public com.mbridge.msdk.setting.l getIntersUnitSetting() {
        try {
            if (TextUtils.isEmpty(this.mUnitid)) {
                return null;
            }
            com.mbridge.msdk.setting.l lVarE = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.mUnitid);
            return lVarE == null ? com.mbridge.msdk.setting.l.h(this.mUnitid) : lVarE;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override
    public CampaignEx getMraidCampaign() {
        return this.f35121h;
    }

    public void goneWebView() {
        try {
            runOnUiThread(new n());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void hideLoading() {
        try {
            runOnUiThread(new b());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void initView() {
        this.f35122i = (WindVaneWebView) findViewById(g0.a(getApplicationContext(), "mbridge_interstitial_wv", "id"));
        this.mProgressBar = (ProgressBar) findViewById(g0.a(getApplicationContext(), "mbridge_interstitial_pb", "id"));
        this.f35123j = (ImageView) findViewById(g0.a(getApplicationContext(), "mbridge_interstitial_iv_close", "id"));
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            int iA = g0.a(getApplicationContext(), "mbridge_interstitial_activity", TtmlNode.TAG_LAYOUT);
            if (!g0.a(iA)) {
                g();
                f();
                com.mbridge.msdk.interstitial.controller.a.d dVar = this.f35124k;
                if (dVar != null) {
                    dVar.a("not found resource");
                }
                finish();
                return;
            }
            setContentView(iA);
            initView();
            e();
            com.mbridge.msdk.foundation.controller.c.m().a(this);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.mUnitid, this, (ViewGroup) null, (ViewGroup.LayoutParams) null, new g());
            this.f35121h.setCampaignUnitId(this.mUnitid);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.mUnitid, this.f35121h);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        try {
            com.mbridge.msdk.interstitial.controller.a.d dVar = this.f35124k;
            if (dVar != null) {
                dVar.b();
            }
            com.mbridge.msdk.click.a aVar = this.f35133t;
            if (aVar != null) {
                aVar.a(false);
                this.f35133t.a((NativeListener.NativeTrackingListener) null);
                this.f35133t.c();
            }
            com.mbridge.msdk.mbsignalcommon.mraid.d dVar2 = this.f35126m;
            if (dVar2 != null) {
                dVar2.d();
            }
            if (!this.f35128o) {
                l();
            }
            if (com.mbridge.msdk.interstitial.controller.a.f35088r != null && !TextUtils.isEmpty(this.mUnitid)) {
                com.mbridge.msdk.interstitial.controller.a.f35088r.remove(this.mUnitid);
            }
            this.f35124k = null;
            com.mbridge.msdk.foundation.feedback.b.b().d(this.mUnitid);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void onIntersClick() {
        try {
            com.mbridge.msdk.interstitial.controller.a.d dVar = this.f35124k;
            if (dVar != null) {
                dVar.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    protected void onPause() {
        super.onPause();
        CampaignEx campaignEx = this.f35121h;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().c(this.f35122i, "false");
    }

    @Override
    protected void onResume() {
        super.onResume();
        CampaignEx campaignEx = this.f35121h;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().c(this.f35122i, "true");
    }

    @Override
    public void open(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f35121h.setClickURL(str);
            a(str);
        }
        this.f35121h.setClickTempSource(2);
        this.f35121h.setClickType(2);
        this.f35121h.setTriggerClickSource(2);
        clickTracking();
    }

    public void reportPlayableClosed() {
        if (this.f35121h != null) {
            com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m("2000061", this.f35121h.getId(), this.f35121h.getRequestId(), this.f35121h.getRequestIdNotice(), this.mUnitid, k0.s(com.mbridge.msdk.foundation.controller.c.m().d()));
            mVar.b(this.f35121h.isMraid() ? com.mbridge.msdk.foundation.entity.m.N : com.mbridge.msdk.foundation.entity.m.O);
            com.mbridge.msdk.foundation.same.report.g.b(mVar, com.mbridge.msdk.foundation.controller.c.m().d(), this.mUnitid);
            this.f35129p = true;
        }
    }

    @Override
    public void setTopControllerPadding(int i10, int i11, int i12, int i13, int i14) {
        int iA = t0.a(this, 10.0f);
        if (i11 <= 0) {
            i11 = iA;
        }
        if (i12 <= 0) {
            i12 = iA;
        }
        if (i13 <= 0) {
            i13 = iA;
        }
        if (i14 <= 0) {
            i14 = iA;
        }
        if (this.f35123j != null) {
            int iA2 = t0.a(this, 25.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iA2, iA2);
            layoutParams.addRule(11);
            layoutParams.setMargins(i11, i13, i12, i14);
            this.f35123j.setLayoutParams(layoutParams);
        }
    }

    public void showLoading() {
        try {
            runOnUiThread(new a());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void showWebView() {
        runOnUiThread(new m());
    }

    @Override
    public void unload() {
        close();
    }

    @Override
    public void useCustomClose(boolean z10) {
        if (z10) {
            this.f35123j.setImageDrawable(new ColorDrawable(0));
        } else {
            this.f35123j.setImageResource(g0.a(getApplicationContext(), "mbridge_interstitial_close", "drawable"));
        }
    }

    private void e() {
        g();
        n();
        f();
        h();
    }

    private void f() {
        try {
            if (com.mbridge.msdk.interstitial.controller.a.f35088r == null || TextUtils.isEmpty(this.mUnitid) || !com.mbridge.msdk.interstitial.controller.a.f35088r.containsKey(this.mUnitid)) {
                return;
            }
            this.f35124k = com.mbridge.msdk.interstitial.controller.a.f35088r.get(this.mUnitid);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void g() {
        Intent intent = getIntent();
        if (intent != null) {
            this.mUnitid = intent.getStringExtra("unitId");
            this.f35121h = (CampaignEx) intent.getSerializableExtra(INTENT_CAMAPIGN);
        }
        CampaignEx campaignEx = this.f35121h;
        if (campaignEx != null && campaignEx.isMraid()) {
            com.mbridge.msdk.mbsignalcommon.mraid.d dVar = new com.mbridge.msdk.mbsignalcommon.mraid.d(this);
            this.f35126m = dVar;
            dVar.c();
            this.f35126m.a(new l());
        }
        CampaignEx campaignEx2 = this.f35121h;
        if (campaignEx2 != null) {
            com.mbridge.msdk.click.c.a(this, campaignEx2.getMaitve(), this.f35121h.getMaitve_src());
        }
    }

    @SuppressLint({"NewApi"})
    private void h() {
        try {
            CampaignEx campaignEx = this.f35121h;
            if (campaignEx == null || (TextUtils.isEmpty(campaignEx.getHtmlUrl()) && !this.f35121h.isMraid())) {
                com.mbridge.msdk.interstitial.controller.a.d dVar = this.f35124k;
                if (dVar != null) {
                    dVar.a("htmlurl is null");
                    return;
                }
                return;
            }
            o0.c("MBInterstitialActivity", "url:" + this.f35121h.getHtmlUrl());
            goneWebView();
            this.f35122i.setWebViewListener(new i());
            String htmlUrl = this.f35121h.getHtmlUrl();
            if (this.f35121h.isMraid()) {
                File file = new File(this.f35121h.getMraid());
                if (file.exists() && file.isFile() && file.canRead()) {
                    htmlUrl = "file:////" + this.f35121h.getMraid();
                }
            }
            this.f35127n = System.currentTimeMillis();
            this.f35122i.loadUrl(htmlUrl);
            this.f35130q.postDelayed(this.f35131r, WEB_LOAD_TIME);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void i() {
        String str;
        CampaignEx campaignEx = this.f35121h;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        int i10 = getResources().getConfiguration().orientation;
        if (i10 == 0) {
            str = "undefined";
        } else if (i10 != 1) {
            str = i10 != 2 ? "UNDEFINED" : TmcStartParams.KEY_LANDSCAPE;
        } else {
            str = "portrait";
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("orientation", str);
            jSONObject.put("locked", "true");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        float fN = k0.n(this);
        float fM = k0.m(this);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        float f10 = displayMetrics.widthPixels;
        float f11 = displayMetrics.heightPixels;
        HashMap map = new HashMap();
        map.put("placementType", "Interstitial");
        map.put("state", "default");
        map.put("viewable", "true");
        map.put("currentAppOrientation", jSONObject);
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(this.f35122i, fN, fM);
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f35122i, f10, f11);
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f35122i, map);
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f35122i, this.f35126m.a());
        com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(this.f35122i);
    }

    public void j() {
        CampaignEx campaignEx = this.f35121h;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        this.f35122i.post(new d());
    }

    public void k() {
        try {
            com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
            mVar.n(this.f35121h.getRequestId());
            mVar.o(this.f35121h.getRequestIdNotice());
            mVar.b(this.f35121h.getId());
            mVar.b(this.f35121h.isMraid() ? com.mbridge.msdk.foundation.entity.m.N : com.mbridge.msdk.foundation.entity.m.O);
            com.mbridge.msdk.foundation.same.report.g.d(mVar, getApplicationContext(), this.mUnitid);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(int i10, String str) {
        CampaignEx campaignEx = this.f35121h;
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
        mVar.n(this.f35121h.getRequestId());
        mVar.o(this.f35121h.getRequestIdNotice());
        mVar.b(this.f35121h.getId());
        mVar.d(i10);
        mVar.e(String.valueOf(System.currentTimeMillis() - this.f35127n));
        mVar.g("");
        mVar.m(str);
        mVar.a("5");
        mVar.b(this.f35121h.isMraid() ? com.mbridge.msdk.foundation.entity.m.N : com.mbridge.msdk.foundation.entity.m.O);
        com.mbridge.msdk.foundation.same.report.g.b(mVar, this.mUnitid, this.f35121h);
    }

    class g implements com.mbridge.msdk.foundation.feedback.a {
        g() {
        }

        @Override
        public void a() {
            String string;
            MBInterstitialActivity.this.onPause();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("MBInterstitialActivity", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBInterstitialActivity.this.f35122i, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override
        public void close() {
            String string;
            MBInterstitialActivity.this.onResume();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("MBInterstitialActivity", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBInterstitialActivity.this.f35122i, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override
        public void a(String str) {
            String string;
            MBInterstitialActivity.this.onResume();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("MBInterstitialActivity", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) MBInterstitialActivity.this.f35122i, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }
    }

    private void a(String str) {
        CampaignEx mraidCampaign = getMraidCampaign();
        if (mraidCampaign != null) {
            new com.mbridge.msdk.foundation.same.report.h(getApplicationContext()).a(mraidCampaign.getRequestId(), mraidCampaign.getRequestIdNotice(), mraidCampaign.getId(), this.mUnitid, str, mraidCampaign.isBidCampaign());
        }
    }
}
