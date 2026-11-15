package com.mgmi.ads.api.e;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.ads.api.AdWidgetInfoImp;
import com.mgmi.ads.api.render.AdWidgetInfo;
import com.mgmi.model.VASTAd;
import com.mgmi.model.r;
import defpackage.h4d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class h extends d implements h4d.b, com.mgtv.a.b.a.b, com.mgtv.a.b.c.a {
    protected com.mgtv.a.b.d d;
    private WeakReference<Context> e;
    private boolean f;
    private int g;
    private int h;
    private com.mgmi.ads.api.c.a i;
    private r j;
    private b k;
    private int l;
    private boolean m;
    private h4d n;
    private List<com.mgmi.platform.view.a> o;
    private boolean p;
    private Handler q;
    private com.mgmi.ads.api.a.d r;

    public static class a extends Handler {
        WeakReference<h> a;

        public a(Looper looper, h hVar) {
            super(looper);
            this.a = new WeakReference<>(hVar);
        }

        @Override
        public void handleMessage(Message message) {
            h hVar;
            super.handleMessage(message);
            WeakReference<h> weakReference = this.a;
            if (weakReference == null || weakReference.get() == null || message.what != 2305 || (hVar = this.a.get()) == null) {
                return;
            }
            hVar.l();
        }
    }

    public enum b {
        Running,
        Paused,
        Idle
    }

    public h(Context context, r rVar, com.mgmi.ads.api.c.a aVar, com.mgmi.ads.api.d.b bVar, com.mgmi.g.a aVar2) {
        super(aVar2, bVar);
        this.f = false;
        this.g = 0;
        this.h = 0;
        this.k = b.Idle;
        this.l = 0;
        this.m = false;
        this.q = new a(Looper.getMainLooper(), this);
        this.e = new WeakReference<>(context);
        this.i = aVar;
        this.n = new h4d(100L);
        this.j = rVar;
        this.o = rVar.l();
        b();
        a(aVar);
    }

    private void a(com.mgmi.ads.api.c.a aVar) {
    }

    private boolean s() {
        WeakReference<Context> weakReference;
        if (this.d == null && (weakReference = this.e) != null && weakReference.get() != null) {
            com.mgtv.a.b.d dVar = new com.mgtv.a.b.d();
            this.d = dVar;
            dVar.a((com.mgtv.a.b.a.b) this);
            com.mgmi.ads.api.d.b bVar = this.b;
            if (bVar != null) {
                this.d.a(bVar.i());
            }
            this.d.a(this.e.get(), this.i.d());
        }
        return this.d != null;
    }

    private void t() {
        List<com.mgmi.platform.view.a> listU = u();
        if (listU != null) {
            int size = listU.size();
            for (int i = 0; i < size; i++) {
                com.mgmi.platform.view.a aVar = listU.get(i);
                if (aVar != null && aVar.s() == 9) {
                    e(aVar);
                }
            }
        }
    }

    private List<com.mgmi.platform.view.a> u() {
        List<com.mgmi.platform.view.a> list = this.o;
        ArrayList arrayList = new ArrayList();
        if (list == null || list.size() == 0) {
            return null;
        }
        for (int i = 0; i < list.size(); i++) {
            try {
                if (list.get(i).s() == 9 && d(list.get(i))) {
                    list.get(i).f();
                    arrayList.add(list.get(i));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return arrayList;
    }

    private void v() {
        com.mgmi.ads.api.a aVarI;
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        com.mgmi.ads.api.d.b bVar = this.b;
        if (bVar != null && (aVarI = bVar.i()) != null && aVarI.isContentPlaying()) {
            this.l++;
        }
        List<com.mgmi.platform.view.a> list = this.o;
        if (list != null && list.size() > 0) {
            for (com.mgmi.platform.view.a aVar : list) {
                if (aVar != null && aVar.A() != null) {
                    aVar.A().b(jCurrentTimeMillis);
                }
            }
        }
        com.mgmi.platform.view.a aVarA = a(jCurrentTimeMillis);
        if (aVarA == null || aVarA.s() != 9) {
            return;
        }
        e(aVarA);
    }

    private void w() {
        this.l = 0;
        for (com.mgmi.platform.view.a aVar : this.j.l()) {
            SourceKitLogger.a("LIveVideoAdManager", "startAdCycle get entry=" + aVar.t() + "type=" + aVar.s());
        }
        this.n.b(this);
    }

    private void x() {
        com.mgtv.a.b.d dVar = this.d;
        if (dVar != null) {
            dVar.s();
            this.d = null;
        }
        com.mgmi.ads.api.a.EnumC0161a enumC0161a = com.mgmi.ads.api.a.EnumC0161a.START_POSITIVE_REQUESTED;
        com.mgmi.ads.api.d.b bVar = this.b;
        if (bVar != null) {
            com.mgmi.ads.api.a aVarI = bVar.i();
            if (aVarI != null) {
                aVarI.onAdListener(enumC0161a, (AdWidgetInfoImp) null);
            }
            this.b.a();
        }
        List<com.mgmi.platform.view.a> listL = this.j.l();
        if (listL != null) {
            for (com.mgmi.platform.view.a aVar : listL) {
                if (aVar != null && aVar.A() != null && !d(aVar)) {
                    aVar.A().b();
                }
            }
        }
        this.g = 0;
        this.h = 0;
        m();
    }

    private void y() {
        List<com.mgmi.platform.view.a> list = this.o;
        if (list != null) {
            for (com.mgmi.platform.view.a aVar : list) {
                if (aVar != null && aVar.A() != null) {
                    aVar.A().w();
                }
            }
        }
    }

    private void z() {
        List<com.mgmi.platform.view.a> list = this.o;
        if (list != null) {
            for (com.mgmi.platform.view.a aVar : list) {
                if (aVar != null && aVar.A() != null) {
                    aVar.A().C();
                }
            }
        }
    }

    public void b() {
    }

    @Override
    public void c(com.mgmi.platform.view.a aVar) {
    }

    @Override
    public void d() {
        super.d();
        SourceKitLogger.a("LIveVideoAdManager", "mgmi admanager destory");
        h4d h4dVar = this.n;
        if (h4dVar != null) {
            h4dVar.e();
        }
        com.mgtv.a.b.d dVar = this.d;
        if (dVar != null) {
            dVar.s();
            this.d = null;
        }
        List<com.mgmi.platform.view.a> listL = this.j.l();
        if (listL == null || listL.size() <= 0) {
            return;
        }
        for (com.mgmi.platform.view.a aVar : listL) {
            if (aVar != null && aVar.A() != null) {
                aVar.A().a();
            }
        }
    }

    @Override
    public void e() {
        SourceKitLogger.a("LIveVideoAdManager", "mgmi admanager pause");
        if (this.k == b.Running) {
            this.n.a();
            this.k = b.Paused;
        }
        com.mgtv.a.b.d dVar = this.d;
        if (dVar != null) {
            dVar.f_();
        }
    }

    @Override
    public void f() {
        SourceKitLogger.a("LIveVideoAdManager", "mgmi admanager resume");
        if (this.k == b.Paused) {
            this.n.d();
            this.k = b.Running;
        }
        com.mgtv.a.b.d dVar = this.d;
        if (dVar == null || !dVar.m()) {
            return;
        }
        this.d.g_();
    }

    @Override
    public void g() {
        com.mgtv.a.b.d dVar = this.d;
        if (dVar != null && dVar.m() && this.d.t() == 1) {
            this.d.s();
            this.d = null;
            com.mgmi.ads.api.a.EnumC0161a enumC0161a = com.mgmi.ads.api.a.EnumC0161a.START_POSITIVE_REQUESTED;
            com.mgmi.ads.api.a aVarI = this.b.i();
            if (aVarI != null) {
                aVarI.onAdListener(enumC0161a, (AdWidgetInfoImp) null);
            }
            List<com.mgmi.platform.view.a> listL = this.j.l();
            if (listL != null && listL.size() > 0) {
                for (com.mgmi.platform.view.a aVar : listL) {
                    if (aVar != null && aVar.A() != null && !d(aVar)) {
                        aVar.A().b();
                    }
                }
            }
            this.g = 0;
            this.h = 0;
            m();
        }
    }

    @Override
    public void h() {
        super.h();
        if (this.k == b.Paused) {
            this.n.d();
            this.k = b.Running;
        }
        com.mgtv.a.b.d dVar = this.d;
        if (dVar != null) {
            dVar.g_();
        }
    }

    public void k() {
        r rVar;
        WeakReference<Context> weakReference;
        if (this.i == null || (rVar = this.j) == null) {
            return;
        }
        if (rVar.g() == null || this.j.f() == 1) {
            m();
            return;
        }
        VASTAd vASTAdG = this.j.g();
        if (this.d == null) {
            boolean zS = s();
            com.mgtv.a.b.d dVar = this.d;
            if (dVar != null && zS && (weakReference = this.e) != null) {
                dVar.a(weakReference.get(), this.j.e());
            }
        }
        this.g = this.j.a();
        this.h = this.j.b();
        com.mgmi.ads.api.d.b bVar = this.b;
        if (bVar != null) {
            bVar.a(vASTAdG, this.i.d(), this.i);
            com.mgmi.ads.api.a aVarI = this.b.i();
            if (aVarI != null) {
                aVarI.onAdListener(com.mgmi.ads.api.a.EnumC0161a.START_PLAY_AD, new AdWidgetInfo("PRE_VIDEO_START"));
            }
        }
        com.mgtv.a.b.d dVar2 = this.d;
        if (dVar2 != null) {
            dVar2.a(this.j);
        }
        com.mgtv.a.b.d dVar3 = this.d;
        if (dVar3 == null || !dVar3.b(vASTAdG)) {
            try {
                com.mgtv.a.b.d dVar4 = this.d;
                if (dVar4 != null) {
                    dVar4.b();
                    return;
                }
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        this.d.a(this.g);
        this.d.b(this.h);
        this.d.d();
        com.mgmi.ads.api.d.b bVar2 = this.b;
        if (bVar2 != null) {
            bVar2.f();
        }
    }

    public void l() {
        if (this.r != null) {
            new com.mgmi.ads.api.a.a(this.e.get()).a(this.r, new com.mgmi.ads.api.a.a.InterfaceC0162a() {
                @Override
                public void a(r rVar) {
                    SourceKitLogger.a("LIveVideoAdManager", "updateRemote callback");
                    if (h.this.o != null) {
                        for (com.mgmi.platform.view.a aVar : h.this.o) {
                            if (aVar != null && aVar.A() != null) {
                                aVar.A().a();
                            }
                        }
                    }
                    h.this.o = rVar.l();
                    h.this.p = true;
                }
            });
        }
    }

    public boolean m() {
        if (this.i == null) {
            return false;
        }
        if (this.f) {
            SourceKitLogger.a("LIveVideoAdManager", "admanager is run");
            return true;
        }
        this.f = true;
        this.k = b.Running;
        w();
        return true;
    }

    @Override
    public void n() {
    }

    @Override
    public void o() {
        a(0, false);
    }

    @Override
    public void p() {
    }

    @Override
    public void q() {
    }

    @Override
    public void r() {
        a(com.mgmi.ads.api.h.AD_PLAY_END, "");
    }

    @Override
    public void b(com.mgmi.platform.view.a aVar) {
    }

    @Override
    public boolean c() {
        super.c();
        if (this.e.get() == null) {
            return true;
        }
        this.k = b.Running;
        this.n.d();
        k();
        t();
        return true;
    }

    @Override
    public void a() {
        v();
    }

    private boolean a(long j, com.mgmi.platform.view.a aVar) {
        if (!a(aVar.D())) {
            SourceKitLogger.c("jili_corner", "cnt逻辑过滤");
            return false;
        }
        if (aVar.e || aVar.q() || j < aVar.C() || aVar.A() != null) {
            return false;
        }
        aVar.b(false);
        return true;
    }

    private void e(com.mgmi.platform.view.a aVar) {
        if (this.e.get() == null) {
            return;
        }
        SourceKitLogger.a("LIveVideoAdManager", "geCornerAd");
        com.mgmi.ads.api.a.i iVarA = aVar.A();
        if (iVarA == null) {
            iVarA = new com.mgmi.ads.api.a.i(this.e.get(), this.n, this.i, this);
            iVarA.b(true);
            aVar.a(iVarA);
        } else if (iVarA.k() || iVarA.D()) {
            return;
        }
        iVarA.a(new com.mgmi.ads.api.a.c().b(this.a).b("ADS_VIDEO_WIDGET").a(aVar), aVar, this.i, this, this.a, this.n);
    }

    private com.mgmi.platform.view.a a(long j) {
        List<com.mgmi.platform.view.a> list = this.o;
        if (list != null && list.size() != 0) {
            for (int i = 0; i < list.size(); i++) {
                try {
                    if (list.get(i).s() == 9 && a(j, list.get(i))) {
                        list.get(i).f();
                        return list.get(i);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

    private boolean d(com.mgmi.platform.view.a aVar) {
        if (!aVar.e || !aVar.o()) {
            return false;
        }
        aVar.b(false);
        return true;
    }

    @Override
    public void a(com.mgmi.ads.api.h hVar, String str) {
        SourceKitLogger.a("LIveVideoAdManager", "OnlineVideoAdManager noticeAdControl type" + hVar + "extra=" + str);
        if (hVar.equals(com.mgmi.ads.api.h.AD_PLAY_END)) {
            if (this.d != null) {
                x();
                return;
            }
            return;
        }
        if (hVar.equals(com.mgmi.ads.api.h.PAUSEPLAYER)) {
            y();
            e();
            return;
        }
        if (hVar.equals(com.mgmi.ads.api.h.RESUMEPLAYER)) {
            z();
            f();
            return;
        }
        if (hVar.equals(com.mgmi.ads.api.h.PAUSE)) {
            e();
            return;
        }
        if (hVar.equals(com.mgmi.ads.api.h.RESUME)) {
            if (!com.mgmi.f.e.a().e() && !com.mgmi.f.e.a().f()) {
                z();
            }
            f();
            return;
        }
        if (hVar.equals(com.mgmi.ads.api.h.AD_PLAY_FIRST_FRAME)) {
            com.mgtv.a.b.d dVar = this.d;
            if (dVar != null && dVar.m() && this.d.t() == 1) {
                if (this.j.m() != null && this.j.m().x() == 4590) {
                    a(8, true);
                    return;
                } else if (this.j.m() != null && this.j.m().b() == 4590) {
                    a(4, true);
                    return;
                } else {
                    a(4, false);
                    return;
                }
            }
            com.mgtv.a.b.d dVar2 = this.d;
            if (dVar2 != null && dVar2.m() && this.d.t() == 5) {
                if (this.j.m() != null && this.j.m().x() == 4590) {
                    a(8, true);
                    return;
                } else if (this.j.m() != null && this.j.m().b() == 4590) {
                    a(4, true);
                    return;
                } else {
                    a(4, false);
                    return;
                }
            }
            return;
        }
        com.mgmi.ads.api.h hVar2 = com.mgmi.ads.api.h.AD_ONPAUSE;
        if (!hVar.equals(hVar2) && !hVar.equals(com.mgmi.ads.api.h.AD_ONRESUME)) {
            if (hVar.equals(com.mgmi.ads.api.h.CONTENT_FIRST_FRAME)) {
                return;
            }
            if (hVar.equals(com.mgmi.ads.api.h.CONTENT_ONEND)) {
                List<com.mgmi.platform.view.a> list = this.o;
                if (list == null || list.size() <= 0) {
                    return;
                }
                for (com.mgmi.platform.view.a aVar : list) {
                    if (aVar != null && aVar.A() != null) {
                        aVar.A().a();
                    }
                }
                return;
            }
            if (hVar.equals(com.mgmi.ads.api.h.HARLFSCREEN)) {
                List<com.mgmi.platform.view.a> list2 = this.o;
                if (list2 != null && list2.size() > 0) {
                    for (com.mgmi.platform.view.a aVar2 : list2) {
                        if (aVar2 != null && aVar2.A() != null) {
                            aVar2.A().y();
                        }
                    }
                }
                com.mgtv.a.b.d dVar3 = this.d;
                if (dVar3 == null || !dVar3.m()) {
                    return;
                }
                this.d.a("2");
                return;
            }
            if (hVar.equals(com.mgmi.ads.api.h.FULLSCREEN)) {
                List<com.mgmi.platform.view.a> list3 = this.o;
                if (list3 != null && list3.size() > 0) {
                    for (com.mgmi.platform.view.a aVar3 : list3) {
                        if (aVar3 != null && aVar3.A() != null) {
                            aVar3.A().z();
                        }
                    }
                }
                com.mgtv.a.b.d dVar4 = this.d;
                if (dVar4 == null || !dVar4.m()) {
                    return;
                }
                this.d.a("1");
                return;
            }
            if (!hVar.equals(com.mgmi.ads.api.h.DISPLAY_TYPE_FULL_VIDEO) && !hVar.equals(com.mgmi.ads.api.h.DISPLAY_TYPE_FULL_SCREEN)) {
                if (hVar.equals(com.mgmi.ads.api.h.AD_PLAY_ERROR)) {
                    this.m = true;
                    return;
                }
                return;
            }
            List<com.mgmi.platform.view.a> listL = this.j.l();
            if (listL == null || listL.size() <= 0) {
                return;
            }
            for (com.mgmi.platform.view.a aVar4 : listL) {
                if (aVar4 != null && aVar4.A() != null) {
                    aVar4.A().w();
                    aVar4.A().C();
                }
            }
            return;
        }
        com.mgtv.a.b.d dVar5 = this.d;
        if (dVar5 == null || !dVar5.m()) {
            return;
        }
        if (hVar.equals(hVar2)) {
            this.d.f_();
        } else if (hVar.equals(com.mgmi.ads.api.h.AD_ONRESUME)) {
            this.d.g_();
        }
    }

    @Override
    public void a(String str, int i, String str2) {
        this.m = true;
    }

    @Override
    public void a(int i, Object obj) {
        if (i == 206000) {
            if (this.d != null) {
                x();
            }
        } else if (i == 600000) {
            g();
        }
    }

    public void a(int i, boolean z) {
        com.mgmi.ads.api.d.b bVar = this.b;
        if (bVar == null || this.d == null) {
            return;
        }
        com.mgmi.ads.api.a.EnumC0161a enumC0161a = com.mgmi.ads.api.a.EnumC0161a.AD_PLAYER_ON_FIRST_FRAME;
        com.mgmi.ads.api.a aVarI = bVar.i();
        if (aVarI != null) {
            if (this.d.t() == 1) {
                aVarI.onAdListener(enumC0161a, new AdWidgetInfo("ADS_ONLINE_VIDEO"));
            } else {
                aVarI.onAdListener(enumC0161a, new AdWidgetInfo("ADS_VIDEO_WIDGET"));
            }
        }
    }
}
