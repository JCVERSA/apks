package com.mbridge.msdk.mbbanner.controll;

import android.text.TextUtils;
import android.view.View;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbbanner.common.manager.c;
import com.mbridge.msdk.out.BannerAdListener;
import com.mbridge.msdk.out.BannerSize;
import com.mbridge.msdk.out.MBBannerView;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.j;
import com.mbridge.msdk.setting.l;
import java.util.List;

public class a {

    private static String f35334x = "BannerController";

    private String f35335a;

    private String f35336b;

    private String f35337c;

    private MBridgeIds f35338d;

    private boolean f35339e;

    private int f35340f;

    private MBBannerView f35341g;

    private int f35342h;

    private int f35343i;

    private int f35344j;

    private BannerAdListener f35346l;

    private CampaignUnit f35347m;

    private c f35348n;

    private l f35349o;

    private j f35350p;

    private boolean f35351q;

    private boolean f35352r;

    private boolean f35353s;

    private boolean f35354t;

    private boolean f35355u;

    private int f35345k = -1;

    private com.mbridge.msdk.mbbanner.common.listener.c f35356v = new C0480a();

    private com.mbridge.msdk.mbbanner.common.listener.b f35357w = new b();

    public a(MBBannerView mBBannerView, BannerSize bannerSize, String str, String str2) {
        this.f35341g = mBBannerView;
        if (bannerSize != null) {
            this.f35342h = bannerSize.getHeight();
            this.f35343i = bannerSize.getWidth();
        }
        this.f35335a = str2;
        str = TextUtils.isEmpty(str) ? "" : str;
        this.f35336b = str;
        this.f35338d = new MBridgeIds(str, this.f35335a);
        f();
    }

    private int a(int i10) {
        if (i10 <= 0) {
            return i10;
        }
        int i11 = 10;
        if (i10 >= 10) {
            i11 = 180;
            if (i10 <= 180) {
                return i10;
            }
        }
        return i11;
    }

    private void l() {
        l lVarE = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f35335a);
        this.f35349o = lVarE;
        if (lVarE == null) {
            this.f35349o = l.i(this.f35335a);
        }
        if (this.f35345k == -1) {
            this.f35344j = a(this.f35349o.D());
        }
        if (this.f35340f == 0) {
            boolean z10 = this.f35349o.g() == 1;
            this.f35339e = z10;
            c cVar = this.f35348n;
            if (cVar != null) {
                cVar.c(z10);
            }
        }
    }

    class b implements com.mbridge.msdk.mbbanner.common.listener.b {
        b() {
        }

        @Override
        public void a(String str, CampaignUnit campaignUnit, boolean z10) {
            a.this.f35347m = campaignUnit;
            a.this.a(1, (com.mbridge.msdk.foundation.error.b) null);
        }

        @Override
        public void b(com.mbridge.msdk.foundation.error.b bVar) {
            a.this.a(bVar.f(), bVar);
            a.this.c();
        }

        @Override
        public void a(com.mbridge.msdk.foundation.error.b bVar) {
            a.this.a(2, bVar);
            a.this.a(bVar.f(), bVar);
            a.this.c();
        }

        @Override
        public void a(String str, int i10, boolean z10) {
            if (a.this.f35341g != null) {
                a.this.f35354t = true;
                a.this.j();
            }
        }
    }

    private boolean a(View view) {
        return true;
    }

    private void f() {
        b(com.mbridge.msdk.foundation.controller.c.m().b(), com.mbridge.msdk.foundation.controller.c.m().c());
        l();
    }

    public void j() {
        if (this.f35353s || !this.f35354t) {
            return;
        }
        if (!a(this.f35341g)) {
            a(new com.mbridge.msdk.foundation.error.b(880044));
        } else if (this.f35347m != null) {
            if (this.f35348n == null) {
                this.f35348n = new c(this.f35341g, this.f35356v, this.f35336b, this.f35335a, this.f35339e, this.f35349o);
            }
            this.f35348n.a(this.f35337c);
            this.f35348n.b(this.f35351q);
            this.f35348n.d(this.f35352r);
            this.f35348n.a(this.f35339e, this.f35340f);
            this.f35348n.b(this.f35347m);
        } else {
            a(new com.mbridge.msdk.foundation.error.b(880043));
        }
        this.f35354t = false;
    }

    private void k() {
        MBBannerView mBBannerView = this.f35341g;
        if (mBBannerView != null) {
            if (!this.f35351q || !this.f35352r || this.f35355u || b1.a(mBBannerView, 1)) {
                com.mbridge.msdk.mbbanner.common.manager.a.b().a(2, this.f35336b, this.f35335a, null, null);
            } else {
                com.mbridge.msdk.mbbanner.common.manager.a.b().a(3, this.f35336b, this.f35335a, new com.mbridge.msdk.mbbanner.common.data.a(this.f35343i + "x" + this.f35342h, this.f35344j * 1000), this.f35357w);
            }
            if (this.f35351q) {
                return;
            }
            com.mbridge.msdk.mbbanner.common.manager.a.b().a(4, this.f35336b, this.f35335a, null, null);
            com.mbridge.msdk.mbbanner.common.manager.a.b().b(this.f35335a);
        }
    }

    public void c() {
        if (this.f35353s) {
            return;
        }
        k();
        l();
        com.mbridge.msdk.mbbanner.common.data.a aVar = new com.mbridge.msdk.mbbanner.common.data.a(this.f35343i + "x" + this.f35342h, this.f35344j * 1000);
        aVar.c(this.f35336b);
        aVar.a(true);
        aVar.b(com.mbridge.msdk.mbbanner.common.report.a.b(""));
        com.mbridge.msdk.mbbanner.common.manager.a.b().a(this.f35336b, this.f35335a, aVar, this.f35357w);
    }

    public String d() {
        CampaignUnit campaignUnit = this.f35347m;
        return campaignUnit != null ? com.mbridge.msdk.foundation.same.c.b(campaignUnit.getAds()) : "";
    }

    public String e() {
        CampaignUnit campaignUnit = this.f35347m;
        return (campaignUnit == null || campaignUnit.getRequestId() == null) ? "" : this.f35347m.getRequestId();
    }

    public void g() {
        com.mbridge.msdk.mbbanner.common.manager.a.b().a(4, this.f35336b, this.f35335a, new com.mbridge.msdk.mbbanner.common.data.a(this.f35343i + "x" + this.f35342h, this.f35344j * 1000), this.f35357w);
    }

    public void h() {
        com.mbridge.msdk.mbbanner.common.manager.a.b().a(3, this.f35336b, this.f35335a, new com.mbridge.msdk.mbbanner.common.data.a(this.f35343i + "x" + this.f35342h, this.f35344j * 1000), this.f35357w);
    }

    public void i() {
        this.f35353s = true;
        if (this.f35346l != null) {
            this.f35346l = null;
        }
        if (this.f35357w != null) {
            this.f35357w = null;
        }
        if (this.f35356v != null) {
            this.f35356v = null;
        }
        if (this.f35341g != null) {
            this.f35341g = null;
        }
        com.mbridge.msdk.mbbanner.common.manager.a.b().a(4, this.f35336b, this.f35335a, null, null);
        com.mbridge.msdk.mbbanner.common.manager.a.b().b(this.f35335a);
        com.mbridge.msdk.mbbanner.common.manager.a.b().c();
        c cVar = this.f35348n;
        if (cVar != null) {
            cVar.h();
        }
    }

    public void b(int i10) {
        int iA = a(i10);
        this.f35345k = iA;
        this.f35344j = iA;
    }

    private void b(String str, String str2) {
        if (this.f35350p == null) {
            this.f35350p = new j();
        }
        this.f35350p.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, str2, this.f35335a);
    }

    public void b(boolean z10) {
        this.f35351q = z10;
        b();
        j();
    }

    class C0480a implements com.mbridge.msdk.mbbanner.common.listener.c {
        C0480a() {
        }

        @Override
        public void a(List<CampaignEx> list) {
            o0.b(a.f35334x, "onShowSuccessed:");
            if (a.this.f35346l != null) {
                a.this.f35346l.onLoadSuccessed(a.this.f35338d);
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(a.this.f35335a, list.get(0).getLocalRequestId());
                cVarA.b(list);
                cVarA.g(1);
                cVarA.d(TextUtils.isEmpty(list.get(0).getBannerUrl()) ? 2 : 1);
                com.mbridge.msdk.mbbanner.common.report.a.a("2000048", cVarA, (e) null);
            } catch (Exception e10) {
                o0.b(a.f35334x, e10.getMessage());
            }
        }

        @Override
        public void b() {
            if (a.this.f35346l != null) {
                a.this.f35346l.onCloseBanner(a.this.f35338d);
            }
        }

        @Override
        public void c() {
            if (a.this.f35346l != null) {
                a.this.f35346l.onClick(a.this.f35338d);
            }
        }

        @Override
        public void d() {
            if (a.this.f35346l != null) {
                a.this.f35346l.closeFullScreen(a.this.f35338d);
                a.this.f35355u = false;
                com.mbridge.msdk.mbbanner.common.manager.a.b().a(3, a.this.f35336b, a.this.f35335a, new com.mbridge.msdk.mbbanner.common.data.a(a.this.f35343i + "x" + a.this.f35342h, a.this.f35344j * 1000), a.this.f35357w);
            }
        }

        @Override
        public void onLeaveApp() {
            if (a.this.f35346l != null) {
                a.this.f35346l.onLeaveApp(a.this.f35338d);
            }
        }

        @Override
        public void a(CampaignEx campaignEx) {
            a.this.c();
            if (a.this.f35346l != null) {
                a.this.f35346l.onLogImpression(a.this.f35338d);
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(a.this.f35335a, campaignEx.getLocalRequestId());
                cVarA.a(campaignEx);
                cVarA.g(campaignEx.isBidCampaign() ? "1" : "2");
                int i10 = 1;
                cVarA.g(a.this.f35348n != null ? a.this.f35348n.c() : 1);
                if (a.this.f35344j != 0) {
                    i10 = 2;
                }
                cVarA.b(i10);
                cVarA.c(a.this.f35344j);
                com.mbridge.msdk.mbbanner.common.report.a.a("2000128", cVarA, (e) null);
                com.mbridge.msdk.mbbanner.common.report.a.a("2000130", cVarA, (e) null);
            } catch (Exception e10) {
                o0.b(a.f35334x, e10.getMessage());
            }
        }

        @Override
        public void a(com.mbridge.msdk.foundation.error.b bVar) {
            a.this.a(bVar);
        }

        @Override
        public void a() {
            if (a.this.f35346l != null) {
                a.this.f35346l.showFullScreen(a.this.f35338d);
                a.this.f35355u = true;
                com.mbridge.msdk.mbbanner.common.manager.a.b().a(2, a.this.f35336b, a.this.f35335a, null, null);
            }
        }
    }

    public void a(String str, com.mbridge.msdk.foundation.error.b bVar) {
        CampaignUnit campaignUnit;
        String strG = "";
        if (bVar != null) {
            try {
                strG = bVar.g();
                if (TextUtils.isEmpty(str)) {
                    str = bVar.f();
                }
            } catch (Throwable th2) {
                o0.b(f35334x, th2.getMessage());
            }
        }
        if (TextUtils.isEmpty(str) && (campaignUnit = this.f35347m) != null) {
            str = campaignUnit.getLocalRequestId();
        }
        com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(this.f35335a, str);
        CampaignUnit campaignUnit2 = this.f35347m;
        cVarA.b(campaignUnit2 != null ? campaignUnit2.getAds() : null);
        cVarA.a(bVar);
        CampaignUnit campaignUnit3 = this.f35347m;
        if (campaignUnit3 != null && !campaignUnit3.getAds().isEmpty()) {
            cVarA.d(TextUtils.isEmpty(this.f35347m.getAds().get(0).getBannerUrl()) ? 1 : 2);
        }
        cVarA.b(true);
        com.mbridge.msdk.mbbanner.common.report.a.a("2000047", cVarA, (e) null);
        BannerAdListener bannerAdListener = this.f35346l;
        if (bannerAdListener != null) {
            bannerAdListener.onLoadFailed(this.f35338d, strG);
        }
    }

    public void b() {
        k();
        c cVar = this.f35348n;
        if (cVar != null) {
            cVar.b(this.f35351q);
            this.f35348n.d(this.f35352r);
        }
    }

    public void c(boolean z10) {
        this.f35352r = z10;
        b();
    }

    public void a(int i10, com.mbridge.msdk.foundation.error.b bVar) {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(this.f35335a, bVar == null ? this.f35347m.getLocalRequestId() : bVar.f());
            e eVar = new e();
            eVar.a("result", Integer.valueOf(i10));
            CampaignUnit campaignUnit = this.f35347m;
            if (campaignUnit != null && !campaignUnit.getAds().isEmpty()) {
                CampaignEx campaignEx = this.f35347m.getAds().get(0);
                if (campaignEx != null) {
                    cVarA.d(TextUtils.isEmpty(campaignEx.getBannerUrl()) ? 2 : 1);
                }
                cVarA.b(this.f35347m.getAds());
            }
            if (bVar != null) {
                cVarA.a(bVar);
            }
            com.mbridge.msdk.mbbanner.common.report.a.a("2000126", cVarA, eVar);
        } catch (Exception e10) {
            o0.b(f35334x, e10.getMessage());
        }
    }

    public void a(BannerSize bannerSize) {
        if (bannerSize != null) {
            this.f35342h = bannerSize.getHeight();
            this.f35343i = bannerSize.getWidth();
        }
    }

    public void a(boolean z10) {
        this.f35339e = z10;
        this.f35340f = z10 ? 1 : 2;
    }

    public void a(String str, String str2) {
        boolean zB;
        if (this.f35342h >= 1 && this.f35343i >= 1) {
            try {
                zB = com.mbridge.msdk.mbsignalcommon.webEnvCheck.a.b(com.mbridge.msdk.foundation.controller.c.m().d());
            } catch (Exception e10) {
                o0.b(f35334x, e10.getMessage());
                zB = false;
            }
            if (!zB) {
                a(str2, new com.mbridge.msdk.foundation.error.b(880029));
                return;
            }
            this.f35337c = str2;
            com.mbridge.msdk.mbbanner.common.data.a aVar = new com.mbridge.msdk.mbbanner.common.data.a(this.f35343i + "x" + this.f35342h, this.f35344j * 1000);
            aVar.a(str);
            aVar.c(this.f35336b);
            aVar.b(str2);
            com.mbridge.msdk.mbbanner.common.manager.a.b().b(this.f35336b, this.f35335a, aVar, this.f35357w);
            com.mbridge.msdk.mbbanner.common.manager.a.b().a(1, this.f35336b, this.f35335a, aVar, this.f35357w);
            return;
        }
        a(str2, new com.mbridge.msdk.foundation.error.b(880037));
    }

    public void a(BannerAdListener bannerAdListener) {
        this.f35346l = bannerAdListener;
    }

    public void a(com.mbridge.msdk.foundation.error.b bVar) {
        a(this.f35337c, bVar);
        c();
    }

    public void a(int i10, int i11, int i12, int i13) {
        c cVar = this.f35348n;
        if (cVar != null) {
            cVar.a(i10, i11, i12, i13);
        }
    }
}
