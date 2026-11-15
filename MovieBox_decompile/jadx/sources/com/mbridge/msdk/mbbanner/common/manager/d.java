package com.mbridge.msdk.mbbanner.common.manager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.mbbanner.common.util.BannerUtils;
import com.mbridge.msdk.mbbanner.view.MBBannerWebView;
import com.mbridge.msdk.out.MBBannerView;
import com.mbridge.msdk.widget.MBAdChoice;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class d {
    private com.iab.omid.library.mmadbridge.adsession.b A;
    private com.iab.omid.library.mmadbridge.adsession.a B;
    private float E;
    private float F;

    protected com.mbridge.msdk.mbbanner.common.listener.c f35267a;

    private boolean f35268b;

    protected CampaignEx f35269c;

    protected final MBBannerView f35270d;

    private ImageView f35271e;

    private MBBannerWebView f35272f;

    private ImageView f35273g;

    private ImageView f35274h;

    private boolean f35275i;

    private boolean f35276j;

    private boolean f35277k;

    private boolean f35278l;

    private boolean f35279m;

    private boolean f35280n;

    protected boolean f35281o;

    protected final String f35282p;

    private final String f35283q;

    private String f35284r;

    com.mbridge.msdk.click.a f35286t;

    private List<CampaignEx> f35287u;

    private int f35290x;

    private com.mbridge.msdk.mbbanner.common.communication.b f35292z;

    private int f35285s = -1;

    private int f35288v = 1;

    private int f35289w = 1;

    private final long f35291y = MBInterstitialActivity.WEB_LOAD_TIME;
    private final Handler C = new e(Looper.getMainLooper());
    private final com.mbridge.msdk.foundation.same.task.a D = new f();
    private final View.OnClickListener G = new g();
    private com.mbridge.msdk.mbbanner.common.listener.a H = new h();
    private com.mbridge.msdk.mbsignalcommon.listener.b I = new c();

    class b implements Runnable {

        final Context f35294a;

        final CampaignEx f35295b;

        b(Context context, CampaignEx campaignEx) {
            this.f35294a = context;
            this.f35295b = campaignEx;
        }

        @Override
        public void run() {
            try {
                com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(this.f35294a)).b(this.f35295b.getId());
            } catch (Exception e10) {
                o0.b("BannerShowManager", e10.getMessage());
            }
        }
    }

    class e extends Handler {
        e(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what != 1) {
                return;
            }
            try {
                if (d.this.A != null) {
                    d dVar = d.this;
                    dVar.B = com.iab.omid.library.mmadbridge.adsession.a.a(dVar.A);
                    if (d.this.B != null) {
                        d.this.B.c();
                        d.this.B.b();
                    }
                }
            } catch (Throwable th2) {
                o0.a("BannerShowManager", th2.getMessage());
            }
        }
    }

    class f extends com.mbridge.msdk.foundation.same.task.a {
        f() {
        }

        @Override
        public void cancelTask() {
        }

        @Override
        public void pauseTask(boolean z10) {
        }

        @Override
        public void runTask() {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880045);
            bVar.b(d.this.f35269c.getLocalRequestId());
            d.this.a(bVar);
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override
        public void onClick(View view) {
            d dVar = d.this;
            if (dVar.f35281o) {
                dVar.f35285s = 1;
                d.this.b();
            }
        }
    }

    class h implements com.mbridge.msdk.mbbanner.common.listener.a {
        h() {
        }

        @Override
        public void a(CampaignEx campaignEx) {
            d.this.a(campaignEx, false, "");
        }

        @Override
        public void close() {
            d.this.f35285s = 2;
            d.this.b();
        }

        @Override
        public void readyStatus(int i10) {
            if (i10 != 1) {
                d.this.g();
            } else {
                d.this.p();
                d.this.a("", 1);
            }
        }

        @Override
        public void toggleCloseBtn(int i10) {
            if (i10 == 2) {
                d.this.e();
            } else {
                d.this.n();
            }
        }

        @Override
        public void triggerCloseBtn(String str) {
            d.this.f35285s = 2;
            d.this.b();
        }

        @Override
        public void a(boolean z10) {
            d dVar = d.this;
            if (dVar.f35267a != null) {
                dVar.f35280n = z10;
                if (z10) {
                    d.this.f35267a.a();
                } else {
                    d.this.f35267a.d();
                }
            }
        }

        @Override
        public void a(boolean z10, String str) {
            try {
                if (d.this.f35267a != null) {
                    if (TextUtils.isEmpty(str)) {
                        d.this.f35267a.c();
                        d.this.f35267a.onLeaveApp();
                    } else {
                        CampaignEx campaignWithBackData = CampaignEx.parseCampaignWithBackData(CampaignEx.campaignToJsonObject(d.this.f35269c));
                        campaignWithBackData.setClickTempSource(2);
                        campaignWithBackData.setClickType(2);
                        campaignWithBackData.setTriggerClickSource(2);
                        campaignWithBackData.setClickURL(str);
                        d.this.a(campaignWithBackData, z10, str);
                    }
                }
            } catch (Exception e10) {
                o0.b("BannerShowManager", e10.getMessage());
            }
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override
        public void run() {
            try {
                if (d.this.f35272f != null) {
                    String str = d.this.f35288v == 2 ? "false" : "true";
                    d.this.f35272f.evaluateJavascript("(function() {\n    var videos = document.getElementsByTagName('video');\n    for (var i = 0; i < videos.length; i++) {\n    videos[i].muted = " + str + ";\n    }\n    var audios = document.getElementsByTagName('audio');\n    for (var i = 0; i < audios.length; i++) {\n    audios[i].muted = " + str + ";\n    }\n    })()", null);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class j implements View.OnTouchListener {
        j() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            d.this.E = motionEvent.getRawX();
            d.this.F = motionEvent.getRawY();
            o0.b("BannerShowManager", d.this.E + "  " + d.this.F);
            return false;
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override
        public void onClick(View view) {
            d.this.a(BannerUtils.managerCampaignEX(com.mbridge.msdk.mbsignalcommon.communication.d.a(d.this.E, d.this.F), d.this.f35269c), false, "");
        }
    }

    class l implements com.mbridge.msdk.foundation.same.image.c {
        l() {
        }

        @Override
        public void onFailedLoad(String str, String str2) {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880039);
            bVar.b(d.this.f35284r);
            d.this.a(bVar);
        }

        @Override
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (d.this.f35271e != null) {
                d.this.f35271e.setImageBitmap(bitmap);
            }
            d.this.f35277k = true;
            d.this.o();
            d.this.n();
            d.this.m();
            d dVar = d.this;
            if (dVar.f35281o) {
                return;
            }
            dVar.p();
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override
        public void run() {
            d.this.p();
        }
    }

    public d(MBBannerView mBBannerView, com.mbridge.msdk.mbbanner.common.listener.c cVar, String str, String str2, boolean z10, com.mbridge.msdk.setting.l lVar) {
        this.f35268b = z10;
        this.f35270d = mBBannerView;
        this.f35282p = str2;
        this.f35283q = str;
        this.f35267a = new com.mbridge.msdk.mbbanner.common.listener.e(cVar, lVar);
    }

    public void p() {
        MBBannerView mBBannerView;
        if (this.f35277k && !this.f35278l && this.f35267a != null) {
            this.f35278l = true;
            this.C.removeCallbacks(this.D);
            CampaignEx campaignEx = this.f35269c;
            if (campaignEx != null && !campaignEx.isCallbacked()) {
                this.f35269c.setCallbacked(true);
                this.f35267a.a(this.f35287u);
                com.mbridge.msdk.click.c.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f35269c.getMaitve(), this.f35269c.getMaitve_src());
            }
        }
        if (this.f35277k && this.f35275i && this.f35276j && this.f35278l && this.f35269c != null && !d()) {
            boolean zA = a();
            if (!zA && (mBBannerView = this.f35270d) != null) {
                mBBannerView.postDelayed(new m(), 1000L);
            }
            if (this.f35279m && zA) {
                o0.b("BannerShowManager", "onBannerWebViewShow && transInfoToMraid");
                int[] iArr = new int[2];
                this.f35270d.getLocationInWindow(iArr);
                com.mbridge.msdk.mbbanner.common.communication.a.a(this.f35272f, iArr[0], iArr[1]);
                com.mbridge.msdk.mbbanner.common.communication.a.a(this.f35272f, iArr[0], iArr[1], this.f35270d.getWidth(), this.f35270d.getHeight());
                this.f35279m = false;
                this.f35289w = 1;
                if (!TextUtils.isEmpty(this.f35269c.getImageUrl())) {
                    com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.f35269c.getImageUrl());
                }
                l();
            }
            o0.b("BannerShowManager", "showSuccessed:" + this.f35269c.getId());
            if (!zA) {
                this.f35269c.setReport(false);
                return;
            }
            ImageView imageView = this.f35271e;
            if (imageView == null || imageView.getVisibility() != 0) {
                List<CampaignEx> list = this.f35287u;
                if (list != null && list.size() > 0) {
                    boolean z10 = false;
                    int i10 = 0;
                    for (int i11 = 0; i11 < this.f35287u.size(); i11++) {
                        if (!this.f35287u.get(i11).isHasMBTplMark() && (i11 == 0 || !this.f35287u.get(i11).isReport())) {
                            a(this.f35287u.get(i11), com.mbridge.msdk.foundation.controller.c.m().d(), this.f35282p);
                            this.f35287u.get(i11).setReport(true);
                            com.mbridge.msdk.foundation.same.buffer.b.a(this.f35282p, this.f35287u.get(i11), "banner");
                            i10 = i11;
                            z10 = true;
                        }
                    }
                    if (z10) {
                        b(this.f35287u.get(i10), com.mbridge.msdk.foundation.controller.c.m().d(), this.f35282p);
                        c(this.f35287u.get(i10), com.mbridge.msdk.foundation.controller.c.m().d(), this.f35282p);
                    }
                }
            } else {
                CampaignEx campaignEx2 = this.f35269c;
                if (campaignEx2 != null) {
                    b(campaignEx2);
                    this.f35269c.setReport(true);
                    this.f35289w = 2;
                    com.mbridge.msdk.foundation.same.buffer.b.a(this.f35282p, this.f35269c, "banner");
                }
            }
            this.f35281o = true;
            com.mbridge.msdk.mbbanner.common.listener.c cVar = this.f35267a;
            if (cVar != null) {
                cVar.a(this.f35269c);
            }
            try {
                CampaignEx campaignEx3 = this.f35269c;
                if (campaignEx3 != null && campaignEx3.isActiveOm()) {
                    Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                    MBBannerWebView mBBannerWebView = this.f35272f;
                    com.iab.omid.library.mmadbridge.adsession.b bVarA = com.mbridge.msdk.omsdk.b.a(contextD, mBBannerWebView, mBBannerWebView.getUrl(), this.f35269c);
                    this.A = bVarA;
                    if (bVarA != null) {
                        try {
                            bVarA.d(this.f35272f);
                            ImageView imageView2 = this.f35273g;
                            if (imageView2 != null) {
                                this.A.a(imageView2, FriendlyObstructionPurpose.CLOSE_AD, null);
                            }
                            ImageView imageView3 = this.f35271e;
                            if (imageView3 != null) {
                                this.A.a(imageView3, FriendlyObstructionPurpose.OTHER, null);
                            }
                            this.A.g();
                        } catch (Exception e10) {
                            o0.a("OMSDK", e10.getMessage());
                        }
                    } else {
                        CampaignEx campaignEx4 = this.f35269c;
                        if (campaignEx4 != null) {
                            new com.mbridge.msdk.foundation.same.report.h(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx4.getRequestId(), this.f35269c.getRequestIdNotice(), this.f35269c.getId(), this.f35282p, "fetch OM failed, context null");
                        }
                    }
                }
            } catch (Exception unused) {
                CampaignEx campaignEx5 = this.f35269c;
                if (campaignEx5 != null) {
                    new com.mbridge.msdk.foundation.same.report.h(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx5.getRequestId(), this.f35269c.getRequestIdNotice(), this.f35269c.getId(), this.f35282p, "fetch OM failed, context null");
                }
            }
            this.C.sendEmptyMessageDelayed(1, 1000L);
            BitmapDrawable bitmapDrawableA = com.mbridge.msdk.foundation.controller.c.m().a(this.f35282p, this.f35269c.getAdType());
            if (bitmapDrawableA != null) {
                if (this.f35274h == null) {
                    this.f35274h = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
                }
                if (this.f35274h.getVisibility() != 0) {
                    this.f35274h.setVisibility(0);
                }
                t0.a(this.f35274h, bitmapDrawableA, this.f35270d.getResources().getDisplayMetrics());
                if (this.f35274h.getParent() == null) {
                    this.f35270d.addView(this.f35274h, new ViewGroup.LayoutParams(-1, -1));
                }
                com.iab.omid.library.mmadbridge.adsession.b bVar = this.A;
                if (bVar != null) {
                    bVar.a(this.f35274h, FriendlyObstructionPurpose.OTHER, null);
                }
            }
        }
    }

    private boolean q() {
        String strA = a(this.f35269c);
        if (TextUtils.isEmpty(strA)) {
            return false;
        }
        if (this.f35270d != null) {
            if (this.f35272f == null) {
                try {
                    MBBannerWebView mBBannerWebView = new MBBannerWebView(com.mbridge.msdk.foundation.controller.c.m().d());
                    this.f35272f = mBBannerWebView;
                    mBBannerWebView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                    this.f35272f.setWebViewClient(new com.mbridge.msdk.mbbanner.view.a(this.f35282p, this.f35287u, this.H));
                } catch (Throwable unused) {
                    a(com.mbridge.msdk.foundation.error.a.a(880029), 1);
                    return false;
                }
            }
            ImageView imageView = this.f35271e;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            if (this.f35272f.getVisibility() != 0) {
                this.f35272f.setVisibility(0);
            }
            if (this.f35272f.getParent() == null) {
                this.f35270d.addView(this.f35272f);
                a(this.f35269c.isMraid());
            }
            if (this.f35269c.isMraid()) {
                m();
            }
            n();
            com.mbridge.msdk.mbbanner.common.communication.b bVar = new com.mbridge.msdk.mbbanner.common.communication.b(this.f35270d.getContext(), this.f35283q, this.f35282p);
            this.f35292z = bVar;
            bVar.a(this.f35287u);
            this.f35292z.a(this.H);
            this.f35292z.a(this.f35290x);
            this.f35272f.setWebViewListener(this.I);
            this.f35272f.setObject(this.f35292z);
            this.f35272f.loadUrl(strA);
            MBBannerWebView mBBannerWebView2 = this.f35272f;
            if (mBBannerWebView2 != null) {
                mBBannerWebView2.postDelayed(new i(), 1000L);
            }
        } else {
            a(com.mbridge.msdk.foundation.error.a.a(880046), 2);
            com.mbridge.msdk.foundation.error.b bVar2 = new com.mbridge.msdk.foundation.error.b(880046);
            bVar2.b(this.f35284r);
            a(bVar2);
        }
        return true;
    }

    public void a(CampaignEx campaignEx, boolean z10, String str) {
        throw null;
    }

    private synchronized boolean d() {
        boolean zIsReport;
        zIsReport = this.f35269c.isReport();
        if (!zIsReport) {
            this.f35269c.setReport(true);
        }
        return zIsReport;
    }

    public void e() {
        ImageView imageView;
        if (this.f35268b && (imageView = this.f35273g) != null && imageView.getVisibility() == 0) {
            this.f35273g.setVisibility(8);
            this.f35273g.setOnClickListener(null);
            if (this.f35270d == null || this.f35273g.getParent() == null) {
                return;
            }
            this.f35270d.removeView(this.f35273g);
        }
    }

    private void f() {
        if (this.f35268b && this.f35273g == null) {
            ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
            this.f35273g = imageView;
            imageView.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_banner_close", "drawable"));
            this.f35273g.setVisibility(8);
            this.f35273g.setContentDescription("closeButton");
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void g() {
        if (this.f35270d == null) {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880046);
            bVar.b(this.f35284r);
            a(bVar);
            return;
        }
        MBBannerWebView mBBannerWebView = this.f35272f;
        if (mBBannerWebView != null && mBBannerWebView.getParent() != null) {
            this.f35270d.removeView(this.f35272f);
        }
        if (this.f35271e == null) {
            ImageView imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
            this.f35271e = imageView;
            imageView.setOnTouchListener(new j());
            this.f35271e.setOnClickListener(new k());
        }
        String imageUrl = this.f35269c.getImageUrl();
        if (!TextUtils.isEmpty(imageUrl)) {
            com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(imageUrl, new l());
            return;
        }
        com.mbridge.msdk.foundation.error.b bVar2 = new com.mbridge.msdk.foundation.error.b(880047);
        bVar2.b(this.f35284r);
        a(bVar2);
    }

    private void i() {
        com.iab.omid.library.mmadbridge.adsession.b bVar = this.A;
        if (bVar != null) {
            bVar.c();
            this.A = null;
            o0.a("omsdk", " adSession.finish() ");
        }
    }

    private void j() {
        try {
            CampaignEx campaignEx = this.f35269c;
            if (campaignEx != null) {
                com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(this.f35282p, campaignEx.getLocalRequestId());
                cVarA.g(this.f35289w);
                cVarA.b(true);
                com.mbridge.msdk.mbbanner.common.report.a.a("2000152", cVarA, (com.mbridge.msdk.foundation.same.report.metrics.e) null);
            }
        } catch (Throwable th2) {
            o0.b("BannerShowManager", th2.getMessage());
        }
    }

    private void k() {
        try {
            CampaignEx campaignEx = this.f35269c;
            if (campaignEx != null) {
                com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(this.f35282p, campaignEx.getLocalRequestId());
                cVarA.g(this.f35289w);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("close_click_type", Integer.valueOf(this.f35285s));
                eVar.a(CampaignEx.JSON_KEY_CREATIVE_ID, Long.valueOf(this.f35269c.getCreativeId()));
                com.mbridge.msdk.mbbanner.common.report.a.a("2000069", cVarA, eVar);
            }
        } catch (Throwable th2) {
            o0.b("BannerShowManager", th2.getMessage());
        }
    }

    private void l() {
        try {
            CampaignEx campaignEx = this.f35269c;
            if (campaignEx != null) {
                com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(this.f35282p, campaignEx.getLocalRequestId());
                cVarA.g(this.f35289w);
                com.mbridge.msdk.mbbanner.common.report.a.a("2000133", cVarA, (com.mbridge.msdk.foundation.same.report.metrics.e) null);
            }
        } catch (Throwable th2) {
            o0.b("BannerShowManager", th2.getMessage());
        }
    }

    public void m() {
        if (this.f35270d == null) {
            return;
        }
        CampaignEx campaignEx = this.f35269c;
        if (campaignEx == null || campaignEx.getPrivacyButtonTemplateVisibility() == 1) {
            MBAdChoice mBAdChoice = new MBAdChoice(com.mbridge.msdk.foundation.controller.c.m().d());
            mBAdChoice.setCampaign(this.f35269c);
            mBAdChoice.setFeedbackDialogEventListener(new a());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 6.0f), t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 6.0f));
            layoutParams.addRule(11);
            layoutParams.addRule(12);
            this.f35270d.addView(mBAdChoice, layoutParams);
        }
    }

    public void n() {
        ImageView imageView;
        if (!this.f35268b || (imageView = this.f35273g) == null) {
            return;
        }
        if (imageView.getVisibility() != 0) {
            this.f35273g.setVisibility(0);
            this.f35273g.setOnClickListener(this.G);
        }
        if (this.f35273g.getParent() != null || this.f35270d == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f), t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 12.0f));
        layoutParams.addRule(11);
        layoutParams.addRule(10);
        this.f35270d.addView(this.f35273g, layoutParams);
    }

    public void o() {
        if (this.f35271e != null) {
            MBBannerWebView mBBannerWebView = this.f35272f;
            if (mBBannerWebView != null) {
                mBBannerWebView.setVisibility(8);
            }
            if (this.f35271e.getVisibility() != 0) {
                this.f35271e.setVisibility(0);
            }
            this.f35289w = 2;
            if (this.f35270d != null) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(10);
                this.f35271e.setScaleType(ImageView.ScaleType.FIT_XY);
                if (this.f35271e.getParent() == null) {
                    this.f35270d.addView(this.f35271e, layoutParams);
                }
                a(true);
            }
        }
    }

    public void h() {
        i();
        com.mbridge.msdk.mbbanner.common.report.a.a(this.f35269c, this.f35282p);
        if (this.f35267a != null) {
            this.f35267a = null;
        }
        MBBannerWebView mBBannerWebView = this.f35272f;
        if (mBBannerWebView != null) {
            mBBannerWebView.setWebViewListener(null);
        }
        if (this.I != null) {
            this.I = null;
        }
        ImageView imageView = this.f35273g;
        if (imageView != null) {
            imageView.setOnClickListener(null);
        }
        ImageView imageView2 = this.f35271e;
        if (imageView2 != null) {
            imageView2.setOnClickListener(null);
        }
        MBBannerView mBBannerView = this.f35270d;
        if (mBBannerView != null) {
            mBBannerView.removeAllViews();
        }
        MBBannerWebView mBBannerWebView2 = this.f35272f;
        if (mBBannerWebView2 != null) {
            mBBannerWebView2.release();
        }
        com.mbridge.msdk.mbbanner.common.communication.b bVar = this.f35292z;
        if (bVar != null) {
            bVar.a();
        }
        if (this.H != null) {
            this.H = null;
        }
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f35282p);
        com.mbridge.msdk.mbbanner.common.report.a.a(this.f35282p);
    }

    public void c(boolean z10) {
        this.f35268b = z10;
    }

    private void c(CampaignEx campaignEx, Context context, String str) {
        if (campaignEx != null) {
            try {
                List<String> pv_urls = campaignEx.getPv_urls();
                if (pv_urls == null || pv_urls.size() <= 0) {
                    return;
                }
                Iterator<String> it = pv_urls.iterator();
                while (it.hasNext()) {
                    com.mbridge.msdk.click.a.a(context, campaignEx, str, it.next(), false, true);
                }
            } catch (Throwable th2) {
                o0.b("BannerShowManager", th2.getMessage());
            }
        }
    }

    public void b(CampaignUnit campaignUnit) {
        CampaignEx campaignExA = a(campaignUnit);
        this.f35269c = campaignExA;
        if (campaignExA == null) {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880043);
            bVar.b(this.f35284r);
            a(bVar);
            return;
        }
        this.C.removeCallbacks(this.D);
        f();
        this.f35277k = false;
        this.f35278l = false;
        this.f35281o = false;
        if (!TextUtils.isEmpty(this.f35269c.getBannerHtml()) || !TextUtils.isEmpty(this.f35269c.getBannerUrl())) {
            com.mbridge.msdk.mbbanner.common.report.a.a(this.f35282p, this.f35269c);
        }
        this.C.postDelayed(this.D, MBInterstitialActivity.WEB_LOAD_TIME);
        if (q()) {
            return;
        }
        if (!TextUtils.isEmpty(this.f35269c.getBannerHtml()) || !TextUtils.isEmpty(this.f35269c.getBannerUrl())) {
            a(com.mbridge.msdk.foundation.error.a.a(880048), 2);
        }
        g();
    }

    public void d(boolean z10) {
        this.f35276j = z10;
        p();
    }

    class c extends com.mbridge.msdk.mbsignalcommon.listener.b {
        c() {
        }

        @Override
        public void a(WebView webView, String str) {
            d.this.f35277k = true;
            com.mbridge.msdk.mbbanner.common.communication.a.a(webView);
            d.this.f35279m = true;
            CampaignEx campaignEx = d.this.f35269c;
            if (campaignEx == null || campaignEx.isHasMBTplMark()) {
                return;
            }
            d.this.p();
            d.this.a("", 1);
        }

        @Override
        public void a(WebView webView, int i10, String str, String str2) {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880000);
            bVar.c(i10 + " WebView receive error: " + i10 + "  message : " + str);
            bVar.b(d.this.f35284r);
            d.this.a(bVar);
            d.this.a(str, 2);
        }

        @Override
        public void a(WebView webView) {
            d.this.g();
        }
    }

    class a implements com.mbridge.msdk.foundation.feedback.a {
        a() {
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
                o0.b("BannerShowManager", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) d.this.f35272f, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
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
                o0.b("BannerShowManager", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) d.this.f35272f, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override
        public void a(String str) {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("BannerShowManager", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) d.this.f35272f, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }
    }

    class C0476d implements com.mbridge.msdk.foundation.feedback.a {
        C0476d() {
        }

        @Override
        public void a() {
            String string;
            d.this.f35270d.onPause();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("BannerShowManager", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) d.this.f35272f, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override
        public void close() {
            String string;
            d.this.f35270d.onResume();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("BannerShowManager", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) d.this.f35272f, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override
        public void a(String str) {
            String string;
            d.this.f35270d.onResume();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("BannerShowManager", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) d.this.f35272f, "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }
    }

    public void a(boolean z10, int i10) {
        this.f35290x = i10;
        if (i10 != 0) {
            this.f35268b = z10;
            return;
        }
        com.mbridge.msdk.setting.l lVarE = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f35282p);
        if (lVarE != null) {
            this.f35268b = lVarE.g() == 1;
        }
    }

    public int c() {
        return this.f35289w;
    }

    private CampaignEx a(CampaignUnit campaignUnit) {
        if (campaignUnit != null) {
            ArrayList<CampaignEx> ads = campaignUnit.getAds();
            this.f35287u = ads;
            if (ads != null && ads.size() > 0) {
                return this.f35287u.get(0);
            }
        }
        return null;
    }

    private String a(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return "";
        }
        try {
            String bannerUrl = campaignEx.getBannerUrl();
            if (!TextUtils.isEmpty(bannerUrl)) {
                return bannerUrl;
            }
            String bannerHtml = campaignEx.getBannerHtml();
            File file = new File(bannerHtml);
            if (!file.exists() || !file.isFile() || !file.canRead()) {
                return bannerHtml;
            }
            return "file:////" + bannerHtml;
        } catch (Throwable th2) {
            o0.b("BannerShowManager", th2.getMessage());
            return "";
        }
    }

    public void b() {
        k();
        MBBannerWebView mBBannerWebView = this.f35272f;
        if (mBBannerWebView != null && mBBannerWebView.getParent() != null) {
            this.f35270d.removeView(this.f35272f);
        }
        ImageView imageView = this.f35271e;
        if (imageView != null && imageView.getParent() != null) {
            this.f35271e.setVisibility(8);
            this.f35270d.removeView(this.f35271e);
        }
        ImageView imageView2 = this.f35273g;
        if (imageView2 != null && imageView2.getParent() != null) {
            this.f35270d.removeView(this.f35273g);
            this.f35273g.setVisibility(8);
        }
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f35282p);
        ImageView imageView3 = this.f35274h;
        if (imageView3 != null && imageView3.getParent() != null) {
            this.f35270d.removeView(this.f35274h);
            this.f35274h.setVisibility(8);
        }
        BannerUtils.inserCloseId(this.f35282p, this.f35287u);
        j();
        com.mbridge.msdk.mbbanner.common.listener.c cVar = this.f35267a;
        if (cVar != null) {
            cVar.b();
        }
        i();
    }

    public void a(com.mbridge.msdk.foundation.error.b bVar) {
        if (this.f35269c == null || d()) {
            return;
        }
        this.C.removeCallbacks(this.D);
        com.mbridge.msdk.mbbanner.common.listener.c cVar = this.f35267a;
        if (cVar != null) {
            cVar.a(bVar);
        }
    }

    private boolean a() {
        if (this.f35270d == null) {
            return false;
        }
        CampaignEx campaignEx = this.f35269c;
        return (b1.a(this.f35270d, campaignEx != null ? campaignEx.getImpReportType() : 0) || this.f35280n) ? false : true;
    }

    private void a(CampaignEx campaignEx, Context context, String str) {
        if (!TextUtils.isEmpty(campaignEx.getImpressionURL())) {
            new Thread(new b(context, campaignEx)).start();
            com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f33586m);
        }
        if (TextUtils.isEmpty(str) || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().k() == null) {
            return;
        }
        com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getNativeVideoTracking().k(), false, false);
    }

    public void b(boolean z10) {
        this.f35275i = z10;
        p();
    }

    public void a(int i10, int i11, int i12, int i13) {
        if (i10 == i12 && i11 == i13) {
            return;
        }
        com.mbridge.msdk.mbbanner.common.communication.a.a((WebView) this.f35272f, i10, i11);
    }

    private void a(boolean z10) {
        if (this.f35270d != null) {
            View viewA = com.mbridge.msdk.foundation.feedback.b.b().a(this.f35282p);
            if (com.mbridge.msdk.foundation.feedback.b.b().a() && z10 && viewA != null) {
                ViewGroup viewGroup = (ViewGroup) viewA.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(viewA);
                }
                viewA.setVisibility(0);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) viewA.getLayoutParams();
                if (layoutParams == null) {
                    layoutParams = new RelativeLayout.LayoutParams(com.mbridge.msdk.foundation.feedback.b.f34456e, com.mbridge.msdk.foundation.feedback.b.f34455d);
                }
                layoutParams.addRule(12);
                viewA.setLayoutParams(layoutParams);
                this.f35270d.addView(viewA);
            }
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f35282p, new C0476d());
            this.f35269c.setCampaignUnitId(this.f35282p);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f35282p, this.f35269c);
        }
    }

    private void b(CampaignEx campaignEx) {
        if (campaignEx != null) {
            a(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f35282p);
            b(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f35282p);
            c(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f35282p);
        }
    }

    private void b(CampaignEx campaignEx, Context context, String str) {
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(campaignEx.getOnlyImpressionURL())) {
                    return;
                }
                com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getOnlyImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f33587n);
            } catch (Throwable th2) {
                o0.b("BannerShowManager", th2.getMessage());
            }
        }
    }

    public void a(String str) {
        this.f35284r = str;
    }

    public void a(String str, int i10) {
        try {
            CampaignEx campaignEx = this.f35269c;
            if (campaignEx != null) {
                com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(this.f35282p, campaignEx.getLocalRequestId());
                cVarA.g(this.f35289w);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("result", Integer.valueOf(i10));
                if (TextUtils.isEmpty(str)) {
                    str = "";
                }
                eVar.a("reason", str);
                cVarA.d(TextUtils.isEmpty(this.f35269c.getBannerUrl()) ? 2 : 1);
                com.mbridge.msdk.mbbanner.common.report.a.a("2000068", cVarA, eVar);
            }
        } catch (Throwable th2) {
            o0.b("BannerShowManager", th2.getMessage());
        }
    }
}
