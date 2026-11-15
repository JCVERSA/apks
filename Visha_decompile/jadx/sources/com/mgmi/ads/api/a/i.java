package com.mgmi.ads.api.a;

import android.content.Context;
import android.view.ViewGroup;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.ads.api.render.AdWidgetInfo;
import com.mgmi.model.VASTFloatAd;
import com.mgmi.model.r;
import defpackage.h4d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class i extends e implements com.mgtv.a.b.a.b {
    private String A;
    private int B;
    private boolean C;
    private com.mgtv.a.b.c u;
    private List<VASTFloatAd> v;
    private h4d w;
    private com.mgmi.ads.api.c.a x;
    private com.mgtv.a.b.c.a y;
    private boolean z;

    public i(Context context, h4d h4dVar, com.mgmi.ads.api.c.a aVar, com.mgtv.a.b.c.a aVar2) {
        super(context);
        this.B = 0;
        this.C = false;
        this.w = h4dVar;
        this.x = aVar;
        this.y = aVar2;
    }

    public boolean A() {
        return false;
    }

    public void B() {
        com.mgtv.a.b.c cVar = this.u;
        if (cVar == null || !cVar.n()) {
            return;
        }
        this.u.g_();
    }

    public void C() {
        com.mgtv.a.b.c cVar = this.u;
        if (cVar == null || !cVar.n()) {
            return;
        }
        this.u.g_();
    }

    public boolean D() {
        com.mgtv.a.b.c cVar = this.u;
        return cVar != null && cVar.m();
    }

    @Override
    public void a(int i, Object obj) {
    }

    public void b(boolean z) {
        this.z = z;
    }

    public void c(long j) {
    }

    public long n() {
        return -1L;
    }

    @Override
    public void o() {
    }

    @Override
    public void p() {
    }

    @Override
    public void q() {
    }

    @Override
    public void r() {
    }

    public void s() {
    }

    public void t() {
    }

    public void u() {
        com.mgtv.a.b.c cVar = this.u;
        if (cVar != null) {
            cVar.f_();
        }
    }

    public void v() {
        com.mgtv.a.b.c cVar = this.u;
        if (cVar != null) {
            cVar.f_();
        }
    }

    public void w() {
        com.mgtv.a.b.c cVar = this.u;
        if (cVar != null) {
            cVar.f_();
        }
    }

    public void x() {
        com.mgtv.a.b.c cVar = this.u;
        if (cVar != null) {
            cVar.f_();
        }
    }

    public void y() {
        com.mgtv.a.b.c cVar = this.u;
        if (cVar != null) {
            cVar.a("2");
        }
    }

    public void z() {
        com.mgtv.a.b.c cVar = this.u;
        if (cVar != null) {
            cVar.a("1");
        }
    }

    @Override
    public void a(String str, int i, String str2) {
    }

    @Override
    public void b() {
        com.mgtv.a.b.c cVar = this.u;
        if (cVar != null) {
            cVar.g_();
        }
    }

    public void c(boolean z) {
        this.C = z;
        com.mgtv.a.b.c cVar = this.u;
        if (cVar != null) {
            cVar.c(z);
        }
    }

    public void b(long j) {
        com.mgtv.a.b.c cVar = this.u;
        if (cVar != null) {
            cVar.a(j);
        }
    }

    @Override
    public void a(d dVar) {
        if (this.z) {
            dVar.a(com.mgmi.platform.b.a().f() + "/app/live/float");
            return;
        }
        if (dVar.k().t() == 1) {
            dVar.a(com.mgmi.platform.b.a().f() + "/app/live");
            return;
        }
        dVar.a(com.mgmi.platform.b.a().e() + "/app/player");
    }

    @Override
    public Map<String, String> a(Context context, d dVar) {
        if (dVar.k().t() == 1) {
            return com.mgmi.f.b.a(context, new com.mgmi.model.n().a(dVar.k()).a(dVar.o()).c(110110).a(4390).b(-1).a(this.i));
        }
        com.mgmi.model.n nVarA = new com.mgmi.model.n().a(dVar.k()).b(dVar.k().b()).a(dVar.k().x()).a(dVar.o()).c(110110).a(this.i);
        nVarA.b(this.A);
        nVarA.d(this.B);
        return com.mgmi.f.b.a(context, nVarA);
    }

    public boolean a(VASTFloatAd vASTFloatAd) {
        if (vASTFloatAd == null) {
            return false;
        }
        return vASTFloatAd.getAdStyle() == 14 || vASTFloatAd.getAdStyle() == 17 || vASTFloatAd.getAdStyle() == 18;
    }

    public void a(com.mgmi.platform.view.a aVar, com.mgmi.ads.api.c.a aVar2, com.mgtv.a.b.c.a aVar3, com.mgmi.g.a aVar4, h4d h4dVar) {
        com.mgtv.a.b.c cVar;
        Context context = this.a.get();
        SourceKitLogger.a("cornneradsloader", "parseCorner");
        List<VASTFloatAd> list = this.v;
        if (list == null || list.isEmpty() || context == null) {
            return;
        }
        VASTFloatAd vASTFloatAd = this.v.get(0);
        ArrayList arrayList = new ArrayList();
        for (VASTFloatAd vASTFloatAd2 : this.v) {
            if (vASTFloatAd2 != null && a(vASTFloatAd2)) {
                arrayList.add(vASTFloatAd2.getCurrentStaticResource());
            }
        }
        if (arrayList.size() > 0) {
            try {
                new j().a(context, arrayList);
            } catch (Throwable unused) {
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("parseCorner：");
        sb.append(aVar == null ? "" : aVar.toString());
        SourceKitLogger.c("jili_corner", sb.toString());
        if (vASTFloatAd.getAdStyle() == 9) {
            return;
        }
        SourceKitLogger.a("cornneradsloader", "start parseCorner");
        boolean zA = a(aVar2.d(), aVar2.c());
        vASTFloatAd.setEntry(aVar);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setEntry:");
        sb2.append(aVar != null ? aVar.toString() + "" : "");
        SourceKitLogger.c("jili_corner", sb2.toString());
        if (com.mgmi.ads.api.e.d.a(aVar) || !zA || (cVar = this.u) == null) {
            return;
        }
        if (cVar != null) {
            cVar.a(aVar2.b());
        }
        this.u.a(aVar);
        this.u.a(aVar4);
        if (this.u.b(vASTFloatAd)) {
            if (!aVar.w()) {
                com.mgtv.a.b.c.a aVar5 = this.y;
                if (aVar5 != null) {
                    aVar5.b(aVar);
                }
                com.mgtv.a.b.c cVar2 = this.u;
                if (cVar2 != null) {
                    cVar2.d();
                    return;
                }
                return;
            }
            if (vASTFloatAd.isPlayerUse()) {
                return;
            }
            a(true, "ADS_VIDEO_WIDGET_CORNNER", aVar.t(), vASTFloatAd.getDuration(), aVar2.c());
        }
    }

    @Override
    public void a(ViewGroup viewGroup) {
        com.mgtv.a.b.c cVar;
        super.a(viewGroup);
        if (this.u == null || this.v.isEmpty() || !this.u.b(this.v.get(0)) || (cVar = this.u) == null) {
            return;
        }
        cVar.d();
    }

    public void a(d dVar, final com.mgmi.platform.view.a aVar, final com.mgmi.ads.api.c.a aVar2, final com.mgtv.a.b.c.a aVar3, final com.mgmi.g.a aVar4, final h4d h4dVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("requestAds：");
        sb.append(aVar == null ? "" : aVar.toString());
        SourceKitLogger.c("jili_corner", sb.toString());
        com.mgtv.a.b.c cVar = this.u;
        if (cVar != null) {
            cVar.s();
            this.u = null;
        }
        if (dVar != null && dVar.o() != null && dVar.o().g()) {
            List<VASTFloatAd> list = this.v;
            if (list != null) {
                list.clear();
            }
            if (dVar.o().b() != null) {
                c(dVar);
                ArrayList arrayList = new ArrayList();
                this.v = arrayList;
                arrayList.add(dVar.o().b());
                a(aVar, aVar2, aVar3, aVar4, h4dVar);
                return;
            }
            aVar.d();
            return;
        }
        a(dVar, new e.a() {
            @Override
            public void a() {
            }

            @Override
            public void a(r rVar) {
                if (rVar != null) {
                    i.this.v = rVar.d();
                    com.mgmi.b.b.a().a(aVar, rVar);
                    i.this.a(aVar, aVar2, aVar3, aVar4, h4dVar);
                }
            }
        }, "coner");
    }

    public void a(float f) {
        com.mgtv.a.b.c cVar = this.u;
        if (cVar != null) {
            com.mgmi.ads.api.a aVarP = cVar.p();
            if (aVarP != null && aVarP.isFullScreen()) {
                this.u.a("1");
            } else {
                this.u.a("2");
            }
        }
    }

    public void a(long j) {
        com.mgtv.a.b.c cVar = this.u;
        if (cVar != null) {
            cVar.a(j);
        }
    }

    @Override
    public void a() {
        super.a();
        com.mgtv.a.b.c cVar = this.u;
        if (cVar != null) {
            cVar.s();
        }
    }

    private void a(boolean z, String str, float f, int i, com.mgmi.ads.api.a aVar) {
        if (aVar != null) {
            try {
                if (z) {
                    AdWidgetInfo adWidgetInfo = new AdWidgetInfo(str);
                    adWidgetInfo.setTriggeringTime(f);
                    adWidgetInfo.setDuration(i);
                    aVar.onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_HAS_ADS, adWidgetInfo);
                } else {
                    aVar.onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_NO_ADS, new AdWidgetInfo(str));
                }
            } catch (Throwable unused) {
            }
        }
    }

    private boolean a(ViewGroup viewGroup, com.mgmi.ads.api.a aVar) {
        WeakReference<Context> weakReference;
        if (this.u == null && (weakReference = this.a) != null && weakReference.get() != null) {
            com.mgtv.a.b.c cVar = new com.mgtv.a.b.c();
            this.u = cVar;
            cVar.a((com.mgtv.a.b.a.b) this);
            if (aVar != null) {
                this.u.a(aVar);
            }
            this.u.a(this.a.get(), viewGroup);
        }
        return this.u != null;
    }
}
