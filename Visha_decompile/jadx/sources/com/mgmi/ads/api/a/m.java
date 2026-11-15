package com.mgmi.ads.api.a;

import android.content.Context;
import android.text.TextUtils;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.ads.api.render.AdWidgetInfo;
import com.mgmi.model.r;
import java.lang.ref.WeakReference;

public class m extends e {
    protected com.mgmi.ads.api.d.a u;
    private com.mgmi.net.bean.b v;

    public m(Context context) {
        super(context);
        this.u = new com.mgmi.ads.api.d.a(context);
    }

    private void e(d dVar) {
        if (dVar != null) {
            try {
                if (dVar.k() != null) {
                    if (dVar.k().t() == 1) {
                        com.mgmi.thirdparty.a.a.a("live");
                    } else {
                        com.mgmi.thirdparty.a.a.a(dVar.k().u());
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private void o() {
        if (com.mgmi.ads.api.e.i.a().c() > 0) {
            com.mgmi.ads.api.a.EnumC0161a enumC0161a = com.mgmi.ads.api.a.EnumC0161a.AD_PRE_REQUEST_REACTDATA_SUCCESS;
            d dVar = this.f;
            if (dVar == null || dVar.h() == null) {
                return;
            }
            this.f.h().onAdListener(enumC0161a, new AdWidgetInfo(this.f.j()));
        }
    }

    @Override
    public void a() {
        super.a();
        com.mgmi.ads.api.d.a aVar = this.u;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override
    public void b() {
        super.b();
        com.mgmi.ads.api.d.a aVar = this.u;
        if (aVar != null) {
            aVar.c();
        }
    }

    @Override
    public void b_() {
        com.mgmi.ads.api.d.a aVar = this.u;
        if (aVar != null) {
            aVar.g();
        }
    }

    @Override
    public void c() {
        super.c();
        com.mgmi.ads.api.d.a aVar = this.u;
        if (aVar != null) {
            aVar.d();
        }
    }

    @Override
    public void c_() {
        com.mgmi.ads.api.d.a aVar = this.u;
        if (aVar != null) {
            aVar.h();
        }
    }

    @Override
    public void d(d dVar) {
        com.mgmi.g.a aVarK = dVar.k();
        if (aVarK != null) {
            if (aVarK.t() == 1) {
                String strU = aVarK.u();
                if ("social_live".equals(strU)) {
                    aVarK.b(strU);
                } else {
                    aVarK.b("live");
                }
                com.mgmi.ads.api.j.a().a("2");
                return;
            }
            if (TextUtils.isEmpty(aVarK.n())) {
                if (!TextUtils.isEmpty(aVarK.u()) && aVarK.u().equals("sc_room")) {
                    com.mgmi.ads.api.j.a().a("7");
                    return;
                } else if (TextUtils.isEmpty(aVarK.u()) || !aVarK.u().equals("feed")) {
                    com.mgmi.ads.api.j.a().a("1");
                    return;
                } else {
                    aVarK.b("feed");
                    com.mgmi.ads.api.j.a().a("3");
                    return;
                }
            }
            String strN = aVarK.n();
            if (strN.equals("a1001")) {
                com.mgmi.ads.api.j.a().a("4");
                return;
            }
            if (strN.equals("a1003")) {
                com.mgmi.ads.api.j.a().a("6");
                return;
            }
            if (strN.equals("a1002")) {
                com.mgmi.ads.api.j.a().a("5");
            } else if (strN.equals("a1005")) {
                com.mgmi.ads.api.j.a().a("8");
            } else {
                com.mgmi.ads.api.j.a().a("1000");
            }
        }
    }

    @Override
    public void f() {
    }

    public void n() {
        com.mgmi.net.bean.b bVar;
        if (this.e == null || (bVar = this.v) == null || bVar.i() == null || this.v.i().x() != 4580 || this.v.i().b() == 4590) {
            return;
        }
        this.e.a(this.v);
    }

    public void a(com.mgmi.g.a aVar) {
        if (this.e == null || aVar == null || aVar.x() != 4580 || aVar.b() == 4590) {
            return;
        }
        com.mgmi.net.bean.b bVar = new com.mgmi.net.bean.b();
        this.v = bVar;
        bVar.a(aVar);
        this.v.c(this.f.i());
        this.v.b(this.i);
        this.e.b(this.v);
        com.mgmi.ads.api.d.a aVar2 = this.u;
        if (aVar2 != null) {
            aVar2.a(this.v);
        }
    }

    @Override
    public void b(d dVar) {
        com.mgmi.ads.api.e.i.a().b();
        e(dVar);
        a(dVar, new e.a() {
            @Override
            public void a(r rVar) {
                m.this.a(rVar);
            }

            @Override
            public void a() {
                m.this.a(false, 700001);
            }
        }, "VdoAdsloader");
        if (dVar != null) {
            a(dVar.k());
            a(dVar.k(), dVar);
        }
    }

    @Override
    public void a(boolean z, int i) {
        d dVar = this.f;
        if (dVar != null && dVar.h() != null) {
            if (z) {
                this.f.h().onAdListener(com.mgmi.ads.api.a.EnumC0161a.VIP_START_POSITIVE_REQUESTED, new AdWidgetInfo("ADS_ONLINE_VIDEO").setErrorCode(i));
            } else {
                SourceKitLogger.a("VdoAdsloader", "request vod ad onRequestAdfail");
                this.f.h().onAdListener(com.mgmi.ads.api.a.EnumC0161a.START_POSITIVE_REQUESTED, new AdWidgetInfo("ADS_ONLINE_VIDEO").setErrorCode(i));
            }
        }
        n();
    }

    @Override
    public void a(r rVar) {
        Context context;
        WeakReference<Context> weakReference = this.a;
        if (weakReference == null || (context = weakReference.get()) == null) {
            return;
        }
        super.a(rVar);
        o();
        int iA = com.mgmi.ads.api.d.a.a(rVar);
        if (iA == -2) {
            a(context, rVar);
            a(true, 700001);
            return;
        }
        if (iA == -1) {
            a(context, rVar);
            com.mgmi.ads.api.a.EnumC0161a enumC0161a = com.mgmi.ads.api.a.EnumC0161a.NO_PRE_AD;
            d dVar = this.f;
            if (dVar != null && dVar.h() != null) {
                this.f.h().onAdListener(enumC0161a, new AdWidgetInfo("ADS_ONLINE_VIDEO"));
            }
            a(false, 700001);
            return;
        }
        if (iA == -3) {
            a(context, rVar);
        } else if (iA == -4) {
            SourceKitLogger.a("VdoAdsloader", "startManager");
            a(context, rVar);
        }
    }

    private void a(Context context, r rVar) {
        com.mgmi.ads.api.c.a aVar;
        d dVar = this.f;
        if (dVar == null || this.u == null) {
            aVar = null;
        } else {
            if (rVar != null) {
                rVar.a(dVar.k());
            }
            aVar = new com.mgmi.ads.api.c.a(context, this.u, this.f.l(), this.f.h(), this.f.n());
        }
        if (aVar == null || this.u == null) {
            return;
        }
        if (this.f.k().t() == 1) {
            com.mgmi.ads.api.e.h hVar = new com.mgmi.ads.api.e.h(context, rVar, aVar, this.u, this.f.k());
            com.mgmi.ads.api.d.a aVar2 = this.u;
            if (aVar2 != null) {
                aVar2.a(rVar, hVar, aVar, this.f.h(), this.f.m(), context);
                this.u.j();
                return;
            }
            return;
        }
        com.mgmi.ads.api.e.a.a aVar3 = new com.mgmi.ads.api.e.a.a(context, rVar, aVar, this.u, this.f.k());
        d dVar2 = this.f;
        if (dVar2 instanceof n) {
            n nVar = (n) dVar2;
            aVar.a(nVar.u());
            if (this.f.h() != null && this.f.h().isFullScreen()) {
                aVar.a("1");
            } else {
                aVar.a("2");
            }
            aVar3.a(nVar.v());
            aVar3.a(nVar.u());
        }
        com.mgmi.ads.api.d.a aVar4 = this.u;
        if (aVar4 != null) {
            aVar4.a(rVar, aVar3, aVar, this.f.h(), this.f.m(), context);
            this.u.j();
        }
    }

    @Override
    public void a(com.mgmi.ads.api.h hVar, String str) {
        com.mgmi.ads.api.d.a aVar = this.u;
        if (aVar != null) {
            aVar.a(hVar, str);
        }
        if (hVar.equals(com.mgmi.ads.api.h.PIP_ENTER)) {
            com.mgmi.ads.api.e.e.a().a(true);
        } else if (hVar.equals(com.mgmi.ads.api.h.PIP_QUIT)) {
            com.mgmi.ads.api.e.e.a().a(false);
        }
    }

    private void a(com.mgmi.g.a aVar, d dVar) {
        com.mgmi.ads.api.d.a aVar2;
        if (aVar == null || !"vod".equals(aVar.u()) || (aVar2 = this.u) == null) {
            return;
        }
        aVar2.a(dVar);
    }
}
