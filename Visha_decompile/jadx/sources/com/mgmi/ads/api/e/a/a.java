package com.mgmi.ads.api.e.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import com.hunantv.media.player.MgtvPlayerListener;
import com.hunantv.media.widget.IVideoView;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.ads.api.AdWidgetInfoImp;
import com.mgmi.ads.api.e.d;
import com.mgmi.ads.api.e.j;
import com.mgmi.ads.api.e.k;
import com.mgmi.ads.api.e.l;
import com.mgmi.ads.api.h;
import com.mgmi.ads.api.i;
import com.mgmi.ads.api.render.AdWidgetInfo;
import com.mgmi.model.VASTAd;
import com.mgmi.model.r;
import com.mgtv.a.b.a.b;
import com.mgtv.a.b.c;
import com.mgtv.a.b.e;
import defpackage.h4d;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class a extends d implements h4d.b, com.mgmi.a.a, j.c, b, c.a {
    private long A;
    private int B;
    private com.mgmi.ads.api.b.a C;
    private boolean D;
    private boolean E;
    private WeakReference<ViewGroup> F;
    private i G;
    private com.mgmi.a.b H;
    private HashMap<String, r> I;
    private r J;
    private int K;
    private float L;
    private boolean M;
    private long N;
    private boolean O;
    protected WeakReference<Context> d;
    protected com.mgtv.a.b.d e;
    protected e f;
    List<VASTAd> g;
    r h;
    protected com.mgmi.ads.api.c.a i;
    protected r j;
    protected h4d k;
    protected com.mgmi.ads.api.a.e l;
    protected final Handler m;
    boolean n;
    private boolean o;
    private boolean p;
    private com.mgmi.model.j q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private com.mgmi.platform.view.a w;
    private EnumC0164a x;
    private boolean y;
    private int z;

    public enum EnumC0164a {
        Running,
        Paused,
        Idle
    }

    public a(Context context, r rVar, com.mgmi.ads.api.c.a aVar, com.mgmi.ads.api.d.b bVar, com.mgmi.g.a aVar2) {
        super(aVar2, bVar);
        this.o = false;
        this.s = 0;
        this.t = 0;
        this.u = 0;
        this.v = 0;
        this.x = EnumC0164a.Idle;
        this.y = false;
        this.z = 0;
        this.A = 0L;
        this.B = 0;
        this.C = null;
        this.D = true;
        this.E = false;
        this.K = 0;
        this.L = 1.0f;
        this.M = false;
        this.N = 0L;
        this.O = false;
        this.m = new Handler(Looper.getMainLooper());
        this.n = false;
        this.d = new WeakReference<>(context);
        this.i = aVar;
        m();
        this.k = new h4d(100L);
        this.j = rVar;
        a(aVar);
    }

    private void A() {
        com.mgmi.ads.api.a aVarI;
        SourceKitLogger.a("PatchOnlineVideoAdManager", "notifyNotHasAiAd result11 = ");
        com.mgmi.ads.api.d.b bVar = this.b;
        if (bVar == null || (aVarI = bVar.i()) == null) {
            return;
        }
        SourceKitLogger.a("PatchOnlineVideoAdManager", "notifyNotHasAiAd result2 = ");
        aVarI.onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_NO_AIAD, (AdWidgetInfoImp) null);
    }

    private void B() {
    }

    public void C() {
        List<com.mgmi.platform.view.a> listL = this.j.l();
        if (listL == null || listL.size() <= 0) {
            return;
        }
        for (com.mgmi.platform.view.a aVar : listL) {
            if (aVar != null && aVar.A() != null) {
                aVar.A().s();
            }
        }
    }

    public void D() {
        List<com.mgmi.platform.view.a> listL = this.j.l();
        if (listL == null || listL.size() <= 0) {
            return;
        }
        for (com.mgmi.platform.view.a aVar : listL) {
            if (aVar != null && aVar.A() != null) {
                aVar.A().t();
            }
        }
    }

    private void E() {
    }

    private void F() {
        VASTAd vASTAd = this.g.get(this.r);
        vASTAd.setmMIDAdTotalTime(this.u);
        com.mgmi.ads.api.d.b bVar = this.b;
        if (bVar != null) {
            bVar.a(vASTAd, this.i.d(), this.i);
        }
        this.N = System.currentTimeMillis();
        com.mgtv.a.b.d dVar = this.e;
        if (dVar == null || !dVar.b(vASTAd)) {
            try {
                com.mgtv.a.b.d dVar2 = this.e;
                if (dVar2 != null) {
                    dVar2.b();
                }
            } catch (Throwable unused) {
            }
            SourceKitLogger.a("PatchOnlineVideoAdManager", "mid play fail");
            return;
        }
        com.mgtv.a.b.d dVar3 = this.e;
        if (dVar3 != null) {
            dVar3.b(this.v);
            this.e.a(this.u);
            this.e.d();
        }
    }

    private void G() {
        if (this.i.c() != null) {
            this.i.c().onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_HAS_FOCUS, new AdWidgetInfo("ADS_VIDEO_WIDGET_FOCUS"));
        }
    }

    private void H() {
        com.mgmi.model.j jVar = this.q;
        if (jVar != null) {
            jVar.a();
        }
    }

    private void I() {
        this.I = null;
        this.J = null;
    }

    private void J() {
    }

    private void K() {
        com.mgmi.ads.api.d.b bVar;
        com.mgmi.ads.api.a aVarI;
        if (this.j == null || (bVar = this.b) == null || (aVarI = bVar.i()) == null) {
            return;
        }
        long contentCurrentPosition = aVarI.getContentCurrentPosition();
        int i = (int) (contentCurrentPosition / 1000);
        if (aVarI.isContentPlaying()) {
            this.z++;
        }
        if (aVarI.isContentPlaying()) {
            List<com.mgmi.platform.view.a> listL = this.j.l();
            if (listL != null && listL.size() > 0) {
                for (com.mgmi.platform.view.a aVar : listL) {
                    if (aVar != null && aVar.A() != null) {
                        aVar.A().a(i);
                    }
                }
            }
            long j = i;
            if (j != this.A) {
                this.A = j;
                this.H.a(contentCurrentPosition, this.j);
            }
        }
    }

    private void L() {
        this.z = 0;
        this.A = 0L;
        h4d h4dVar = this.k;
        if (h4dVar != null) {
            h4dVar.b(this);
        }
    }

    private void M() {
        if (this.b != null) {
            com.mgmi.ads.api.a.EnumC0161a enumC0161a = com.mgmi.ads.api.a.EnumC0161a.START_POSITIVE_REQUESTED;
            AdWidgetInfo adWidgetInfo = new AdWidgetInfo("PRE_VIDEO_END");
            com.mgmi.ads.api.a aVarI = this.b.i();
            if (aVarI != null) {
                aVarI.onAdListener(enumC0161a, adWidgetInfo);
            }
            this.b.a();
            this.b.a(false);
        }
    }

    private void N() {
        List<com.mgmi.platform.view.a> listL;
        this.N = 0L;
        try {
            a(false);
            com.mgtv.a.b.d dVar = this.e;
            if (dVar != null) {
                dVar.s();
                this.e = null;
            }
            com.mgmi.ads.api.e.i.a().b();
            M();
            r rVar = this.j;
            if (rVar != null && (listL = rVar.l()) != null) {
                for (com.mgmi.platform.view.a aVar : listL) {
                    if (aVar != null && aVar.A() != null) {
                        aVar.A().b();
                    }
                }
            }
            this.s = 0;
            this.t = 0;
            t();
            SourceKitLogger.a("mgmiad", "PatchOnlineVideoAdManager.onPreAdOver");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void O() {
        List<com.mgmi.platform.view.a> listL = this.j.l();
        if (listL != null) {
            for (com.mgmi.platform.view.a aVar : listL) {
                if (aVar != null && aVar.A() != null) {
                    aVar.A().x();
                }
            }
        }
    }

    private void P() {
        List<com.mgmi.platform.view.a> listL;
        r rVar = this.j;
        if (rVar != null && (listL = rVar.l()) != null) {
            for (com.mgmi.platform.view.a aVar : listL) {
                if (aVar != null && aVar.A() != null) {
                    aVar.A().a();
                    aVar.a((com.mgmi.ads.api.a.i) null);
                }
            }
            listL.clear();
        }
        e eVar = this.f;
        if (eVar != null) {
            eVar.s();
            this.f = null;
        }
    }

    private void Q() {
        List<com.mgmi.platform.view.a> listL = this.j.l();
        if (listL != null) {
            for (com.mgmi.platform.view.a aVar : listL) {
                if (aVar != null && aVar.A() != null) {
                    aVar.A().B();
                }
            }
        }
    }

    private void R() {
        VASTAd vASTAd;
        try {
            List<VASTAd> list = this.g;
            if (list == null || (vASTAd = list.get(this.r)) == null) {
                return;
            }
            int vastAid = vASTAd.getVastAid();
            List<com.mgmi.platform.view.a> listL = this.j.l();
            if (listL != null) {
                return;
            }
            int size = listL.size();
            for (int i = 0; i < size; i++) {
                if (vastAid == listL.get(i).v()) {
                    if (listL.get(i).z() <= 1 || !listL.get(i).q()) {
                        return;
                    }
                    listL.get(i).d();
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void S() {
        com.mgmi.ads.api.a aVarI;
        this.N = 0L;
        com.mgtv.a.b.d dVar = this.e;
        if (dVar != null) {
            dVar.s();
            this.e = null;
        }
        List<VASTAd> list = this.g;
        if (list != null && list.size() > 0 && this.g.get(0) != null && this.g.get(0).getVastAdPres() != null) {
            H();
        }
        com.mgmi.ads.api.d.b bVar = this.b;
        if (bVar != null) {
            aVarI = bVar.i();
            this.b.a(false);
        } else {
            aVarI = null;
        }
        com.mgmi.platform.view.a aVar = this.w;
        if (aVar != null && aVar.y() == 3 && this.w.t() == 0.0f) {
            if (aVarI != null) {
                aVarI.onAdListener(com.mgmi.ads.api.a.EnumC0161a.ON_FOCUSHEAD_COMPLETE, (AdWidgetInfoImp) null);
            }
        } else if (aVarI != null) {
            com.mgmi.ads.api.a.EnumC0161a enumC0161a = com.mgmi.ads.api.a.EnumC0161a.RESUME_POSITIVE_REQUESTED;
            if (this.p) {
                aVarI.onAdListener(enumC0161a, new AdWidgetInfo("ADS_TYPE_BACK_VIDEO"));
            } else {
                aVarI.onAdListener(enumC0161a, new AdWidgetInfo("ADS_TYPE_VIDEO_WIDGET_MID_END"));
            }
        }
        List<com.mgmi.platform.view.a> listL = this.j.l();
        if (listL != null && listL.size() > 0) {
            for (com.mgmi.platform.view.a aVar2 : listL) {
                if (aVar2 != null && aVar2.A() != null) {
                    aVar2.A().B();
                }
            }
        }
        this.h = null;
        this.g = null;
        this.u = 0;
        this.v = 0;
        com.mgmi.platform.view.a aVar3 = this.w;
        if (aVar3 != null) {
            aVar3.B();
        }
        a(false);
    }

    private boolean T() {
        WeakReference<Context> weakReference;
        if (this.e == null && (weakReference = this.d) != null && weakReference.get() != null) {
            com.mgtv.a.b.d dVar = new com.mgtv.a.b.d();
            this.e = dVar;
            dVar.a((b) this);
            com.mgmi.ads.api.d.b bVar = this.b;
            if (bVar != null) {
                this.e.a(bVar.i());
            }
            this.e.a(this.d.get(), this.i.d());
        }
        return this.e != null;
    }

    private void U() {
        com.mgmi.ads.api.d.b bVar;
        com.mgmi.ads.api.a aVarI;
        e eVar = this.f;
        if (eVar == null || !eVar.m() || (bVar = this.b) == null || (aVarI = bVar.i()) == null) {
            return;
        }
        this.f.a(aVarI.isFullScreen() ? "1" : "2");
    }

    private void a(Context context) {
    }

    private boolean g(com.mgmi.platform.view.a aVar) {
        List<VASTAd> listI;
        if (aVar.z() == 2) {
            if (aVar.y() == 2) {
                r rVar = this.J;
                if (rVar != null && rVar.i() != null && this.J.i().size() > 0) {
                    r rVar2 = this.J;
                    this.h = rVar2;
                    if (rVar2.i().get(0) != null && this.J.i().get(0).isInteractAd()) {
                        this.J.i().get(0).updateInteractResource();
                    }
                    com.mgmi.ads.api.d.b bVar = this.b;
                    if (bVar != null) {
                        com.mgmi.ads.api.a aVarI = bVar.i();
                        if (this.h != null && aVarI != null) {
                            aVarI.onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_REQUEST_SUCCESS, new AdWidgetInfo("ADS_TYPE_BACK_VIDEO"));
                        }
                    }
                    return true;
                }
            } else {
                HashMap<String, r> map = this.I;
                if (map == null || map.isEmpty()) {
                    return false;
                }
                r rVar3 = this.I.get(String.valueOf(aVar.v()));
                if (rVar3 != null && (listI = rVar3.i()) != null && listI.size() > 0) {
                    try {
                        a(aVar, rVar3);
                        return true;
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        return false;
    }

    private void h(final com.mgmi.platform.view.a aVar) {
        if (aVar.y() == 3) {
            j(aVar);
        } else {
            if (g(aVar)) {
                return;
            }
            new com.mgmi.ads.api.a.e(this.d.get()).a(new com.mgmi.ads.api.a.c().b(i(aVar)).b(this.a).a(aVar), new com.mgmi.ads.api.a.e.a() {
                @Override
                public void a(r rVar) {
                    a.this.c(aVar, rVar);
                }

                @Override
                public void a() {
                    a.this.a(false, "ADS_TYPE_VIDEO_WIDGET_MID", 0.0f, 0, 0);
                }
            }, "paster");
        }
    }

    private String i(com.mgmi.platform.view.a aVar) {
        return aVar.y() == 4 ? "ADS_VIDEO_WIDGET_FOCUS" : "ADS_VIDEO_WIDGET";
    }

    private boolean j(com.mgmi.platform.view.a aVar) {
        this.g = this.j.i();
        this.u = this.j.j();
        this.v = this.j.c();
        this.r = 0;
        List<VASTAd> list = this.g;
        if (list == null || list.size() <= 0) {
            SourceKitLogger.a("PatchOnlineVideoAdManager", "parseMid mMIDAdTotalTime=" + this.u);
            return false;
        }
        com.mgmi.platform.view.a aVar2 = this.w;
        if (aVar2 != null) {
            aVar2.i();
        }
        if (aVar.t() == 0.0f || this.g.get(0) == null || !this.g.get(0).isInteractAd()) {
            return true;
        }
        this.g.get(0).updateInteractResource();
        return true;
    }

    private void z() {
        i iVar = this.G;
        if (iVar != null) {
            iVar.a(new IVideoView.OnAVPlayListener() {
                @Override
                public void onAVPauseOrPlay(boolean z) {
                    if (z) {
                        a.this.C();
                    } else {
                        a.this.D();
                    }
                }
            });
            this.G.a(new IVideoView.OnFrameListener() {
                @Override
                public void onVFrameClockCome(MgtvPlayerListener.FrameClock frameClock) {
                    if (frameClock != null && frameClock.clock_type == 1) {
                        a.this.a(frameClock.tTimeMs);
                        final long j = frameClock.tTimeMs;
                        a.this.m.post(new Runnable() {
                            @Override
                            public void run() {
                                if (a.this.H != null) {
                                    a.this.H.a(a.this.j, j);
                                }
                            }
                        });
                        return;
                    }
                    if (frameClock != null && frameClock.clock_type == 2) {
                        a.this.c(frameClock.pkt_pts);
                        a.this.b(frameClock.pkt_pts);
                        return;
                    }
                    if (frameClock != null && frameClock.clock_type == 5) {
                        a.this.c(-1L);
                        a.this.b(frameClock.pkt_pts);
                        return;
                    }
                    if (frameClock != null && frameClock.clock_type == 3) {
                        a.this.c(frameClock.pkt_pts);
                        a.this.b(frameClock.pkt_pts);
                    } else if (frameClock != null && frameClock.clock_type == 6) {
                        a.this.c(frameClock.pkt_pts);
                        a.this.b(frameClock.pkt_pts);
                    } else {
                        if (frameClock == null || frameClock.clock_type != 4) {
                            return;
                        }
                        a.this.c(frameClock.pkt_pts);
                        a.this.b(frameClock.pkt_pts);
                    }
                }
            });
        }
    }

    @Override
    public com.mgmi.ads.api.e.b b() {
        return this;
    }

    @Override
    public void c(com.mgmi.platform.view.a aVar) {
    }

    @Override
    public void d() {
        super.d();
        SourceKitLogger.a("PatchOnlineVideoAdManager", "mgmi admanager destory");
        h4d h4dVar = this.k;
        if (h4dVar != null) {
            h4dVar.e();
        }
        com.mgmi.ads.api.b.a aVar = this.C;
        if (aVar != null) {
            aVar.e();
            this.C = null;
        }
        com.mgtv.a.b.d dVar = this.e;
        if (dVar != null) {
            dVar.s();
            this.e = null;
        }
        List<com.mgmi.platform.view.a> listL = this.j.l();
        if (listL != null && listL.size() > 0) {
            for (com.mgmi.platform.view.a aVar2 : listL) {
                if (aVar2 != null && aVar2.A() != null) {
                    aVar2.A().a();
                }
            }
        }
        com.mgmi.ads.api.a.e eVar = this.l;
        if (eVar != null) {
            eVar.a();
        }
        e eVar2 = this.f;
        if (eVar2 != null) {
            eVar2.s();
            this.f = null;
        }
        com.mgmi.a.b bVar = this.H;
        if (bVar != null) {
            bVar.a();
        }
        this.G = null;
        I();
        this.L = 1.0f;
        this.B = 0;
    }

    @Override
    public void e() {
        SourceKitLogger.a("PatchOnlineVideoAdManager", "mgmi admanager pause");
        if (this.x == EnumC0164a.Running) {
            this.k.a();
            com.mgmi.ads.api.b.a aVar = this.C;
            if (aVar != null && aVar.d()) {
                this.C.f();
            }
            this.x = EnumC0164a.Paused;
        }
        com.mgtv.a.b.d dVar = this.e;
        if (dVar != null) {
            dVar.f_();
        }
        e eVar = this.f;
        if (eVar != null) {
            eVar.f_();
        }
    }

    @Override
    public void f() {
        SourceKitLogger.a("PatchOnlineVideoAdManager", "mgmi admanager resume");
        if (this.x == EnumC0164a.Paused) {
            this.k.d();
            com.mgmi.ads.api.b.a aVar = this.C;
            if (aVar != null && aVar.d()) {
                this.C.h();
            }
            this.x = EnumC0164a.Running;
        }
        com.mgtv.a.b.d dVar = this.e;
        if (dVar != null && dVar.m()) {
            this.e.g_();
        }
        e eVar = this.f;
        if (eVar == null || !eVar.m()) {
            return;
        }
        this.f.g_();
    }

    public void k() {
        SourceKitLogger.a("PatchOnlineVideoAdManager", "mgmi admanager onSyspause");
        com.mgtv.a.b.d dVar = this.e;
        if (dVar != null) {
            dVar.f_();
        }
        e eVar = this.f;
        if (eVar != null) {
            eVar.f_();
        }
    }

    public void l() {
        SourceKitLogger.a("PatchOnlineVideoAdManager", "mgmi admanager onSysResume");
        e eVar = this.f;
        if (eVar == null || !eVar.m()) {
            return;
        }
        this.f.g_();
    }

    public void m() {
    }

    @Override
    public void n() {
    }

    @Override
    public void o() {
        com.mgmi.ads.api.b.a aVar = this.C;
        if (aVar != null && aVar.d()) {
            SourceKitLogger.a("MidVideoCountDownView", "MidVideoCountDownView getValid");
            this.C.g();
        }
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
        a(h.AD_PLAY_END, "");
    }

    public void s() {
        SourceKitLogger.a("mgmiad", "PatchOnlineVideoAdManager.startPrePlay");
        com.mgmi.ads.api.c.a aVar = this.i;
        if (aVar == null || this.j == null || aVar.d() == null) {
            M();
            SourceKitLogger.a("mgmiad", "PatchOnlineVideoAdManager.startPrePlay mContainer == null || mModel == null || mContainer.getViewParent() == null");
            return;
        }
        if (!this.j.p()) {
            A();
        }
        if (this.j.g() != null && this.j.f() != 1) {
            a(this.j.g());
        } else {
            SourceKitLogger.a("mgmiad", "PatchOnlineVideoAdManager.startPrePlay-nopre-end");
            t();
        }
    }

    public boolean t() {
        if (this.i == null) {
            return false;
        }
        if (this.y) {
            SourceKitLogger.a("PatchOnlineVideoAdManager", "admanager is run");
            return true;
        }
        this.y = true;
        this.x = EnumC0164a.Running;
        L();
        return true;
    }

    public boolean u() {
        com.mgmi.ads.api.b.a aVar = this.C;
        if (aVar != null && aVar.d()) {
            return false;
        }
        com.mgtv.a.b.d dVar = this.e;
        return dVar == null || !dVar.m();
    }

    public boolean v() {
        com.mgmi.ads.api.a aVarI;
        com.mgmi.ads.api.d.b bVar = this.b;
        if (bVar == null || (aVarI = bVar.i()) == null) {
            return false;
        }
        return aVarI.isOpenBarrage();
    }

    public int w() {
        return this.z;
    }

    public void x() {
        com.mgmi.ads.api.d.b bVar = this.b;
        if (bVar == null || this.j == null) {
            return;
        }
        com.mgmi.ads.api.a aVarI = bVar.i();
        VASTAd vASTAdG = this.j.g();
        if (aVarI == null || vASTAdG == null || vASTAdG.getAdStyle() != 5) {
            return;
        }
        aVarI.onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_REQUEST_FINISH_SHOWTIME, new AdWidgetInfo("PRE_VIDEO_START"));
    }

    public void y() {
    }

    private void a(com.mgmi.ads.api.c.a aVar) {
    }

    private void m(com.mgmi.platform.view.a aVar) {
    }

    @Override
    public void a(j.d dVar) {
    }

    public void c(long j) {
        SourceKitLogger.a("zhengfeng", "onAvPlayerClockFrameComePts time=" + j);
    }

    private void l(com.mgmi.platform.view.a aVar) {
        this.d.get();
    }

    @Override
    public void b(com.mgmi.platform.view.a aVar) {
        B();
    }

    @Override
    public void i() {
        com.mgtv.a.b.d dVar = this.e;
        if (dVar != null) {
            dVar.a(true);
        }
    }

    public void b(long j) {
        List<com.mgmi.platform.view.a> listL = this.j.l();
        if (listL == null || listL.size() <= 0) {
            return;
        }
        for (com.mgmi.platform.view.a aVar : listL) {
            if (aVar != null && aVar.A() != null && aVar.A().A()) {
                aVar.A().c(j);
            }
        }
    }

    @Override
    public boolean c() {
        super.c();
        Context context = this.d.get();
        if (context == null) {
            return true;
        }
        com.mgmi.f.e.a().g(false);
        this.x = EnumC0164a.Running;
        this.H = new com.mgmi.a.b(this);
        this.I = new HashMap<>();
        this.J = null;
        a(context);
        z();
        this.N = 0L;
        this.k.b(this);
        this.k.d();
        s();
        return true;
    }

    private void k(com.mgmi.platform.view.a aVar) {
        if (aVar != null) {
            if (aVar.s() == 100) {
                this.w = aVar;
                h(aVar);
                return;
            }
            if (aVar.s() != 1 && aVar.s() != 13) {
                if (aVar.s() == 3) {
                    l(aVar);
                    return;
                } else {
                    if (aVar.s() == 5 && com.mgmi.platform.c.b()) {
                        m(aVar);
                        return;
                    }
                    return;
                }
            }
            e(aVar);
        }
    }

    @Override
    public void h() {
        super.h();
        if (this.x == EnumC0164a.Paused) {
            this.k.d();
            com.mgmi.ads.api.b.a aVar = this.C;
            if (aVar != null && aVar.d()) {
                this.C.h();
            }
            this.x = EnumC0164a.Running;
        }
        com.mgtv.a.b.d dVar = this.e;
        if (dVar != null) {
            dVar.g_();
        }
    }

    public void a(WeakReference<ViewGroup> weakReference) {
        this.F = weakReference;
    }

    public void a(i iVar) {
        this.G = iVar;
    }

    @Deprecated
    public void a(long j) {
        List<com.mgmi.platform.view.a> listL = this.j.l();
        if (listL == null || listL.size() <= 0) {
            return;
        }
        for (com.mgmi.platform.view.a aVar : listL) {
            if (aVar != null && aVar.A() != null && aVar.A().A() && aVar.A().n() == j) {
                aVar.A().c(j);
            }
        }
    }

    private void f(com.mgmi.platform.view.a aVar) {
        int iY = aVar.y();
        boolean z = iY == 3 || iY == 4;
        if (z) {
            aVar.j();
        }
        b(z);
    }

    public void e(com.mgmi.platform.view.a aVar) {
        if (this.d.get() == null) {
            return;
        }
        com.mgmi.ads.api.a.i iVarA = aVar.A();
        if (iVarA == null) {
            iVarA = new com.mgmi.ads.api.a.i(this.d.get(), this.k, this.i, this);
            aVar.a(iVarA);
        } else if (iVarA.k() || iVarA.D()) {
            return;
        }
        com.mgmi.ads.api.a.i iVar = iVarA;
        com.mgmi.ads.api.a.d dVarA = new com.mgmi.ads.api.a.c().b(this.a).b("ADS_VIDEO_WIDGET").a(aVar);
        iVar.c(this.M);
        iVar.a(dVarA, aVar, this.i, this, this.a, this.k);
    }

    private void b(boolean z) {
        com.mgmi.ads.api.a aVarI;
        com.mgtv.a.b.d dVar;
        WeakReference<Context> weakReference;
        this.r = 0;
        List<VASTAd> list = this.g;
        if (list == null || list.size() <= 0) {
            return;
        }
        SourceKitLogger.a("PatchOnlineVideoAdManager", "Admanager start play mid ad");
        List<com.mgmi.platform.view.a> listL = this.j.l();
        if (listL != null && listL.size() > 0) {
            for (com.mgmi.platform.view.a aVar : listL) {
                if (aVar != null && aVar.A() != null) {
                    aVar.A().u();
                }
            }
        }
        e eVar = this.f;
        if (eVar != null) {
            eVar.s();
            this.f = null;
        }
        if (this.e == null && T() && (dVar = this.e) != null && (weakReference = this.d) != null) {
            dVar.a(weakReference.get(), this.g);
        }
        com.mgtv.a.b.d dVar2 = this.e;
        if (dVar2 == null || dVar2.m()) {
            return;
        }
        this.D = false;
        com.mgmi.ads.api.d.b bVar = this.b;
        if (bVar != null && (aVarI = bVar.i()) != null) {
            aVarI.onAdListener(com.mgmi.ads.api.a.EnumC0161a.PAUSE_POSITIVE_REQUESTED, (AdWidgetInfoImp) null);
            aVarI.onAdListener(com.mgmi.ads.api.a.EnumC0161a.START_PLAY_AD, new AdWidgetInfo("ADS_TYPE_VIDEO_WIDGET_MID"));
            com.mgmi.ads.api.d.b bVar2 = this.b;
            if (bVar2 != null) {
                bVar2.f();
            }
        }
        E();
        F();
        this.D = true;
    }

    @Override
    public void j() {
        com.mgtv.a.b.d dVar = this.e;
        if (dVar != null) {
            dVar.a(false);
        }
    }

    public void c(com.mgmi.platform.view.a aVar, r rVar) {
        if (aVar.y() == 2) {
            if (rVar != null && rVar.i() != null && rVar.i().size() > 0) {
                this.h = rVar;
                if (rVar.i().get(0) != null && rVar.i().get(0).isInteractAd()) {
                    rVar.i().get(0).updateInteractResource();
                }
                com.mgmi.ads.api.a aVarI = this.b.i();
                if (this.h != null && aVarI != null) {
                    aVarI.onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_REQUEST_SUCCESS, new AdWidgetInfo("ADS_TYPE_BACK_VIDEO"));
                    a(true, "ADS_TYPE_BACK_VIDEO", aVar.t(), rVar.j(), com.mgmi.a.b.a(a(aVar.y()), aVar, this.A));
                }
            }
        } else if (rVar != null) {
            com.mgtv.a.b.d dVar = this.e;
            if (dVar != null && dVar.m()) {
                SourceKitLogger.a("PatchOnlineVideoAdManager", "mid load it is bad vast data so skip");
            } else {
                a(aVar, rVar);
            }
        }
        b(aVar, rVar);
    }

    @Override
    public void a() {
        if (this.y) {
            K();
        }
    }

    @Override
    public void g() {
        com.mgmi.ads.api.a aVarI;
        com.mgtv.a.b.d dVar = this.e;
        if (dVar != null && dVar.m() && this.e.t() == 1) {
            this.e.s();
            this.e = null;
            if (this.b != null) {
                com.mgmi.ads.api.a.EnumC0161a enumC0161a = com.mgmi.ads.api.a.EnumC0161a.START_POSITIVE_REQUESTED;
                AdWidgetInfo adWidgetInfo = new AdWidgetInfo("PRE_VIDEO_END");
                com.mgmi.ads.api.a aVarI2 = this.b.i();
                if (aVarI2 != null) {
                    aVarI2.onAdListener(enumC0161a, adWidgetInfo);
                }
                this.b.a(false);
            }
            List<com.mgmi.platform.view.a> listL = this.j.l();
            if (listL != null && listL.size() > 0) {
                for (com.mgmi.platform.view.a aVar : listL) {
                    if (aVar != null && aVar.A() != null) {
                        aVar.A().b();
                    }
                }
            }
            this.s = 0;
            this.t = 0;
            a(false);
            t();
            return;
        }
        com.mgtv.a.b.d dVar2 = this.e;
        if (dVar2 == null || !dVar2.m()) {
            return;
        }
        this.e.s();
        this.e = null;
        com.mgmi.ads.api.a.EnumC0161a enumC0161a2 = com.mgmi.ads.api.a.EnumC0161a.RESUME_POSITIVE_REQUESTED;
        com.mgmi.ads.api.d.b bVar = this.b;
        if (bVar != null && (aVarI = bVar.i()) != null) {
            if (this.p) {
                aVarI.onAdListener(enumC0161a2, new AdWidgetInfo("ADS_TYPE_BACK_VIDEO"));
            } else {
                aVarI.onAdListener(enumC0161a2, new AdWidgetInfo("ADS_TYPE_VIDEO_WIDGET_MID_END"));
            }
            this.b.a(false);
        }
        List<com.mgmi.platform.view.a> listL2 = this.j.l();
        if (listL2 != null && listL2.size() > 0) {
            for (com.mgmi.platform.view.a aVar2 : listL2) {
                if (aVar2 != null && aVar2.A() != null) {
                    aVar2.A().B();
                }
            }
        }
        R();
        this.g = null;
        this.u = 0;
        this.v = 0;
        a(false);
    }

    private synchronized void a(boolean z) {
        this.o = z;
    }

    private void a(VASTAd vASTAd) {
        WeakReference<Context> weakReference;
        com.mgmi.ads.api.c.a aVar = this.i;
        if (aVar != null && this.j != null && aVar.d() != null) {
            if (this.e == null) {
                boolean zT = T();
                com.mgtv.a.b.d dVar = this.e;
                if (dVar != null && zT && (weakReference = this.d) != null) {
                    dVar.a(weakReference.get(), this.j.e());
                }
            }
            a(true);
            com.mgmi.ads.api.d.b bVar = this.b;
            if (bVar != null) {
                bVar.a(vASTAd, this.i.d(), this.i);
                com.mgmi.ads.api.a aVarI = this.b.i();
                if (aVarI != null) {
                    aVarI.onAdListener(com.mgmi.ads.api.a.EnumC0161a.START_PLAY_AD, new AdWidgetInfo("PRE_VIDEO_START"));
                }
            }
            this.N = System.currentTimeMillis();
            com.mgtv.a.b.d dVar2 = this.e;
            if (dVar2 != null) {
                dVar2.a(this.j);
            }
            com.mgtv.a.b.d dVar3 = this.e;
            if (dVar3 != null && dVar3.b(vASTAd)) {
                com.mgtv.a.b.d dVar4 = this.e;
                if (dVar4 != null) {
                    dVar4.a(this.j.a());
                    this.e.b(this.j.b());
                    this.e.d();
                    com.mgmi.ads.api.d.b bVar2 = this.b;
                    if (bVar2 != null) {
                        bVar2.f();
                        return;
                    }
                    return;
                }
                return;
            }
            try {
                com.mgtv.a.b.d dVar5 = this.e;
                if (dVar5 != null) {
                    dVar5.b();
                    return;
                }
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        SourceKitLogger.a("mgmiad", "PatchOnlineVideoAdManager.toPlayPreAd mContainer == null || mModel == null || mContainer.getViewParent() == null");
    }

    public void d(com.mgmi.platform.view.a aVar) {
        SourceKitLogger.a("PatchOnlineVideoAdManager", "gePausetAd");
        if (this.d.get() == null) {
            return;
        }
        com.mgmi.ads.api.a.d dVarA = new com.mgmi.ads.api.a.c().b(this.a).b("ADS_TYPE_PAUSED").a(aVar);
        if (this.l == null) {
            this.l = new com.mgmi.ads.api.a.e(this.d.get());
        }
        if (this.l.k()) {
            return;
        }
        this.l.a(dVarA, new com.mgmi.ads.api.a.e.a() {
            @Override
            public void a() {
            }

            @Override
            public void a(r rVar) {
                a.this.a(rVar);
            }
        }, "pause");
    }

    private void b(com.mgmi.platform.view.a aVar, r rVar) {
        if (aVar == null || aVar.z() != 2) {
            return;
        }
        if (aVar.y() == 2) {
            this.J = rVar;
            return;
        }
        if (this.I == null) {
            this.I = new HashMap<>();
        }
        if (rVar != null) {
            this.I.put(String.valueOf(aVar.v()), rVar);
        }
    }

    private void b(int i) {
        try {
            com.mgtv.a.b.d dVar = this.e;
            if (dVar != null && dVar.o()) {
                this.e.b(i == 1);
            }
            e eVar = this.f;
            if (eVar != null && eVar.m()) {
                com.mgmi.ads.api.d.b bVar = this.b;
                if (bVar == null || bVar.i() == null) {
                    return;
                }
                this.f.a(this.b.i().isFullScreen() ? "1" : "2");
                return;
            }
            if (i == 1) {
                O();
            } else {
                if (com.mgmi.f.e.a().e() || com.mgmi.f.e.a().f()) {
                    return;
                }
                Q();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public boolean a(long j, com.mgmi.platform.view.a aVar) {
        i iVar = this.G;
        if ((iVar != null && !iVar.a()) || aVar.e()) {
            return false;
        }
        if (d.a(aVar)) {
            if (!a(aVar.D())) {
                SourceKitLogger.c("jili_corner", "cnt逻辑过滤");
                return false;
            }
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            long jM = aVar.m();
            long jC = aVar.C();
            if (!aVar.n() && jCurrentTimeMillis < jC) {
                aVar.d();
                return false;
            }
            if (!aVar.n() && jCurrentTimeMillis == jM) {
                com.mgmi.ads.api.a.i iVarA = aVar.A();
                if (iVarA == null) {
                    if (!aVar.q()) {
                        aVar.b(false);
                        SourceKitLogger.c("jili_corner", "adsLoader == null" + jCurrentTimeMillis + StringUtils.COMMA + aVar.toString());
                        return true;
                    }
                } else {
                    aVar.b(true);
                    B();
                    iVarA.a((ViewGroup) null);
                    SourceKitLogger.c("jili_corner", "到点渲染：natureTime" + jCurrentTimeMillis + StringUtils.COMMA + aVar.toString());
                    return false;
                }
            } else {
                if (jCurrentTimeMillis < jC || jCurrentTimeMillis >= jM || aVar.n() || aVar.q() || !aVar.p()) {
                    return false;
                }
                aVar.b(false);
                return true;
            }
        } else {
            long jT = (long) aVar.t();
            long j2 = jT - 10;
            if (j2 <= 0) {
                j2 = 0;
            }
            if (!aVar.n() && aVar.w() && (j < j2 || j > jT)) {
                aVar.d();
                return false;
            }
            if (!aVar.w()) {
                if (j >= jT && !aVar.n() && !aVar.q()) {
                    return true;
                }
            } else if (jT == j && aVar.w() && !aVar.n()) {
                com.mgmi.ads.api.a.i iVarA2 = aVar.A();
                if (iVarA2 == null) {
                    if (!aVar.q()) {
                        aVar.b(false);
                        return true;
                    }
                } else {
                    if (!iVarA2.A()) {
                        aVar.b(true);
                        B();
                        iVarA2.a((ViewGroup) null);
                    }
                    return false;
                }
            } else {
                if (j < j2 || j >= jT || aVar.n() || !aVar.w() || aVar.q() || !aVar.p()) {
                    return false;
                }
                aVar.b(false);
                return true;
            }
        }
        return false;
    }

    @Override
    public void b(j.d dVar) {
        dVar.d = this.o;
        com.mgmi.ads.api.e.i.a().b(dVar);
    }

    public VASTAd a(int i) {
        List<VASTAd> listI;
        if (i == 2) {
            r rVar = this.h;
            if (rVar == null || (listI = rVar.i()) == null || listI.size() < 1) {
                return null;
            }
            return listI.get(0);
        }
        List<VASTAd> list = this.g;
        if (list == null || list.size() < 1) {
            return null;
        }
        return this.g.get(0);
    }

    private void a(com.mgmi.platform.view.a aVar, int i) {
        com.mgmi.g.a aVar2;
        List<com.mgmi.platform.view.a> listL = this.j.l();
        if (listL != null && listL.size() > 0) {
            for (com.mgmi.platform.view.a aVar3 : listL) {
                if (aVar3 != null && aVar3.A() != null) {
                    aVar3.A().u();
                }
            }
        }
        e eVar = this.f;
        if (eVar != null) {
            eVar.s();
            this.f = null;
        }
        if (this.i == null) {
            return;
        }
        this.C = new com.mgmi.ads.api.b.a(this.d.get(), this.i.d(), "ADS_VIDEO_WIDGET") {
            @Override
            public void c() {
            }
        };
        if (this.i.c() != null) {
            this.C.a(this.i.c());
        }
        this.C.a(true);
        if (i > 0) {
            this.C.a(i);
            if (com.mgmi.ads.api.e.e.a().b() && (aVar2 = this.a) != null && !aVar2.u().equals("feed") && !this.a.u().equals("chat_room") && !this.a.u().equals(NotificationCompat.CATEGORY_SOCIAL) && !this.a.u().equals("live")) {
                this.C.b();
            } else {
                this.C.a();
            }
        }
        com.mgmi.ads.api.d.b bVar = this.b;
        if (bVar != null) {
            bVar.a(true);
        }
    }

    private void a(com.mgmi.platform.view.a aVar, r rVar) {
        float fT;
        this.g = rVar.i();
        this.u = rVar.j();
        this.v = rVar.c();
        this.r = 0;
        List<VASTAd> list = this.g;
        if (list != null && list.size() > 0) {
            com.mgmi.platform.view.a aVar2 = this.w;
            if (aVar2 != null) {
                aVar2.i();
            }
            if (aVar != null) {
                fT = aVar.t();
            } else {
                fT = this.A;
            }
            float f = fT;
            if (aVar != null) {
                a(true, "ADS_TYPE_VIDEO_WIDGET_MID", f, this.u, com.mgmi.a.b.a(a(aVar.y()), aVar, this.A));
            }
            List<VASTAd> list2 = this.g;
            if (list2 != null && list2.size() > 0 && this.g.get(0) != null && this.g.get(0).isInteractAd()) {
                this.g.get(0).updateInteractResource();
            }
        }
        SourceKitLogger.a("PatchOnlineVideoAdManager", "parseMid mMIDAdTotalTime=" + this.u);
    }

    @Override
    public void a(h hVar, String str) {
        com.mgmi.ads.api.a aVarI;
        SourceKitLogger.a("PatchOnlineVideoAdManager", "PatchOnlineVideoAdManager noticeAdControl type" + hVar + "extra=" + str);
        this.n = false;
        if (hVar.equals(h.AD_PLAY_END)) {
            com.mgtv.a.b.d dVar = this.e;
            if (dVar != null) {
                if (dVar.t() == 1) {
                    N();
                    return;
                } else {
                    S();
                    return;
                }
            }
            return;
        }
        if (hVar.equals(h.PAUSEPLAYER)) {
            com.mgmi.f.e.a().f(true);
            com.mgmi.g.a aVar = this.a;
            if (aVar != null && "vod".equals(aVar.u())) {
                com.mgmi.f.e.a().b(false);
            }
            a(this.i.d());
            O();
            e();
            return;
        }
        if (hVar.equals(h.CLEAR_ALL_MIDDER_AD)) {
            P();
            return;
        }
        if (hVar.equals(h.RESUMEPLAYER)) {
            com.mgmi.f.e.a().f(false);
            e eVar = this.f;
            if (eVar != null) {
                eVar.s();
                this.f = null;
            }
            com.mgmi.g.a aVar2 = this.a;
            if (aVar2 != null && "vod".equals(aVar2.u())) {
                com.mgmi.f.e.a().b(true);
            }
            try {
                if (!this.n && (!com.mgmi.ads.api.e.e.a().b() || this.a.u().equals("feed") || this.a.u().equals("chat_room") || this.a.u().equals(NotificationCompat.CATEGORY_SOCIAL) || this.a.u().equals("live"))) {
                    Q();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            f();
            return;
        }
        if (hVar.equals(h.PAUSE)) {
            k();
            O();
            return;
        }
        if (hVar.equals(h.RESUME)) {
            l();
            if (com.mgmi.f.e.a().e() || com.mgmi.f.e.a().f()) {
                return;
            }
            Q();
            return;
        }
        if (hVar.equals(h.RESUME_CORNER)) {
            try {
                if (this.n) {
                    return;
                }
                if (com.mgmi.ads.api.e.e.a().b() && !this.a.u().equals("feed") && !this.a.u().equals("chat_room") && !this.a.u().equals(NotificationCompat.CATEGORY_SOCIAL) && !this.a.u().equals("live")) {
                    return;
                }
                Q();
                return;
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        if (hVar.equals(h.PAUSE_CORNER)) {
            O();
            return;
        }
        if (hVar.equals(h.CONTENT_FIRST_FRAME)) {
            D();
            com.mgmi.g.a aVar3 = this.a;
            if (aVar3 == null || !"vod".equals(aVar3.u())) {
                return;
            }
            com.mgmi.f.e.a().b(true);
            return;
        }
        if (hVar.equals(h.SET_DISPLAY_SIZE)) {
            return;
        }
        if (hVar.equals(h.AD_PLAY_FIRST_FRAME)) {
            this.N = -1L;
            com.mgtv.a.b.d dVar2 = this.e;
            if (dVar2 != null && dVar2.m() && this.e.t() == 1) {
                J();
                if (this.j.m() != null && this.j.m().x() == 4590) {
                    a(8, true);
                } else if (this.j.m() != null && this.j.m().b() == 4590) {
                    a(4, true);
                } else {
                    a(4, false);
                }
                y();
                return;
            }
            com.mgtv.a.b.d dVar3 = this.e;
            if (dVar3 != null && dVar3.m() && this.e.t() == 5) {
                if (this.j.m() != null && this.j.m().x() == 4590) {
                    a(8, true);
                } else if (this.j.m() != null && this.j.m().b() == 4590) {
                    a(4, true);
                } else {
                    a(4, false);
                }
                y();
                a(true);
                return;
            }
            return;
        }
        h hVar2 = h.AD_ONPAUSE;
        if (!hVar.equals(hVar2) && !hVar.equals(h.AD_ONRESUME)) {
            if (hVar.equals(h.CONTENT_ONEND)) {
                List<com.mgmi.platform.view.a> listL = this.j.l();
                if (listL != null && listL.size() > 0) {
                    for (com.mgmi.platform.view.a aVar4 : listL) {
                        if (aVar4 != null && aVar4.A() != null) {
                            aVar4.A().a();
                        }
                    }
                }
                this.p = false;
                r rVar = this.h;
                if (rVar != null) {
                    this.g = rVar.i();
                    this.p = true;
                    this.u = this.h.k();
                    this.v = this.h.c();
                    b(false);
                    return;
                }
                com.mgmi.ads.api.d.b bVar = this.b;
                if (bVar == null || (aVarI = bVar.i()) == null) {
                    return;
                }
                aVarI.onAdListener(com.mgmi.ads.api.a.EnumC0161a.RESUME_POSITIVE_REQUESTED, new AdWidgetInfo("ADS_TYPE_VIDEO_WIDGET_MID_END"));
                return;
            }
            if (hVar.equals(h.HARLFSCREEN)) {
                com.mgmi.ads.api.c.a aVar5 = this.i;
                if (aVar5 != null) {
                    aVar5.a("2");
                }
                List<com.mgmi.platform.view.a> listL2 = this.j.l();
                if (listL2 != null && listL2.size() > 0) {
                    for (com.mgmi.platform.view.a aVar6 : listL2) {
                        if (aVar6 != null && aVar6.A() != null) {
                            aVar6.A().y();
                        }
                    }
                }
                e eVar2 = this.f;
                if (eVar2 != null && eVar2.m()) {
                    this.f.a("2");
                }
                com.mgtv.a.b.d dVar4 = this.e;
                if (dVar4 != null && dVar4.m()) {
                    this.e.a("2");
                }
                try {
                    l.a().a(l.b);
                    return;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
            }
            if (hVar.equals(h.FULLSCREEN)) {
                List<com.mgmi.platform.view.a> listL3 = this.j.l();
                if (listL3 != null && listL3.size() > 0) {
                    for (com.mgmi.platform.view.a aVar7 : listL3) {
                        if (aVar7 != null && aVar7.A() != null) {
                            aVar7.A().z();
                        }
                    }
                }
                com.mgmi.ads.api.c.a aVar8 = this.i;
                if (aVar8 != null) {
                    aVar8.a("1");
                }
                e eVar3 = this.f;
                if (eVar3 != null && eVar3.m()) {
                    this.f.a("1");
                }
                com.mgtv.a.b.d dVar5 = this.e;
                if (dVar5 == null || !dVar5.m()) {
                    return;
                }
                this.e.a("1");
                return;
            }
            if (!hVar.equals(h.DISPLAY_TYPE_FULL_VIDEO) && !hVar.equals(h.DISPLAY_TYPE_FULL_SCREEN)) {
                if (hVar.equals(h.PIP_ENTER)) {
                    this.M = true;
                    com.mgmi.ads.api.e.e.a().a(true);
                    e eVar4 = this.f;
                    if (eVar4 != null) {
                        eVar4.s();
                        this.f = null;
                    }
                    List<com.mgmi.platform.view.a> listL4 = this.j.l();
                    if (listL4 != null && listL4.size() > 0) {
                        for (com.mgmi.platform.view.a aVar9 : listL4) {
                            if (aVar9 != null && aVar9.A() != null) {
                                aVar9.A().c(true);
                                aVar9.A().v();
                            }
                        }
                    }
                    k.a().a(hVar);
                    return;
                }
                if (hVar.equals(h.PIP_QUIT)) {
                    this.M = false;
                    com.mgmi.ads.api.e.e.a().a(false);
                    com.mgmi.ads.api.b.a aVar10 = this.C;
                    if (aVar10 != null && aVar10.d()) {
                        this.C.a();
                    }
                    List<com.mgmi.platform.view.a> listL5 = this.j.l();
                    if (listL5 == null || listL5.size() <= 0) {
                        return;
                    }
                    for (com.mgmi.platform.view.a aVar11 : listL5) {
                        if (aVar11 != null && aVar11.A() != null) {
                            aVar11.A().c(false);
                            aVar11.A().B();
                        }
                    }
                    return;
                }
                if (hVar.equals(h.PIP_SIZE_CHANGED)) {
                    return;
                }
                if (hVar.equals(h.AD_PLAY_ERROR)) {
                    this.E = true;
                    return;
                }
                if (hVar.equals(h.SHOW_TIME_ANIM_END)) {
                    return;
                }
                if (hVar.equals(h.ONLAYOUT)) {
                    this.L = 1.0f;
                    if (!TextUtils.isEmpty(str)) {
                        try {
                            this.L = Float.parseFloat(str);
                        } catch (Exception e4) {
                            e4.printStackTrace();
                            this.L = 1.0f;
                        }
                    } else {
                        this.L = 1.0f;
                    }
                    List<com.mgmi.platform.view.a> listL6 = this.j.l();
                    if (listL6 != null && listL6.size() > 0) {
                        for (com.mgmi.platform.view.a aVar12 : listL6) {
                            if (aVar12 != null && aVar12.A() != null) {
                                aVar12.A().a(this.L);
                            }
                        }
                    }
                    U();
                    return;
                }
                if (hVar.equals(h.SHOW_TIME_CLICK_FULL_SCREEN)) {
                    return;
                }
                if (h.DISPLAY_IS_INVISIBLE.equals(hVar)) {
                    e eVar5 = this.f;
                    if (eVar5 == null || !eVar5.m()) {
                        return;
                    }
                    this.f.f_();
                    return;
                }
                if (h.DISPLAY_IS_VISIBLE.equals(hVar)) {
                    e eVar6 = this.f;
                    if (eVar6 == null || !eVar6.m()) {
                        return;
                    }
                    this.f.g_();
                    return;
                }
                if (h.TURN_ON_AD_SOUND.equals(hVar)) {
                    com.mgmi.f.e.a().a(true);
                    return;
                }
                if (h.TURN_OFF_AD_SOUND.equals(hVar)) {
                    com.mgmi.f.e.a().a(false);
                    return;
                }
                if (h.MEDIA_NORMAL_SIZE.equals(hVar)) {
                    U();
                    return;
                }
                if (h.MEDIA_SMALL_SIZE.equals(hVar)) {
                    U();
                    return;
                }
                if (h.UPDATE_VIP_TXT.equals(hVar)) {
                    return;
                }
                if (hVar.equals(h.FLOAT_MODE)) {
                    b(1);
                    return;
                } else {
                    if (hVar.equals(h.NORMAL_MODE)) {
                        b(0);
                        return;
                    }
                    return;
                }
            }
            List<com.mgmi.platform.view.a> listL7 = this.j.l();
            if (listL7 == null || listL7.size() <= 0) {
                return;
            }
            for (com.mgmi.platform.view.a aVar13 : listL7) {
                if (aVar13 != null && aVar13.A() != null) {
                    aVar13.A().v();
                    aVar13.A().B();
                }
            }
            return;
        }
        com.mgtv.a.b.d dVar6 = this.e;
        if (dVar6 == null || !dVar6.m()) {
            return;
        }
        if (hVar.equals(hVar2)) {
            this.e.f_();
        } else if (hVar.equals(h.AD_ONRESUME)) {
            this.e.g_();
        }
    }

    @Override
    public void a(int i, Object... objArr) {
        if (i == 1) {
            k((com.mgmi.platform.view.a) objArr[0]);
            return;
        }
        if (i == 2) {
            G();
            return;
        }
        if (i == 3) {
            int iIntValue = ((Integer) objArr[0]).intValue();
            com.mgmi.platform.view.a aVar = (com.mgmi.platform.view.a) objArr[1];
            if (iIntValue >= 0) {
                a(aVar, iIntValue);
                return;
            } else {
                a(aVar, 5);
                return;
            }
        }
        if (i != 6) {
            if (i != 7) {
                return;
            }
            f((com.mgmi.platform.view.a) objArr[0]);
        } else {
            long jLongValue = ((Long) objArr[0]).longValue();
            i iVar = this.G;
            if (iVar != null) {
                iVar.a(jLongValue);
            }
        }
    }

    @Override
    public void a(ViewGroup viewGroup) {
        com.mgmi.platform.view.a next;
        com.mgmi.ads.api.b.a aVar = this.C;
        if (aVar != null && aVar.d()) {
            SourceKitLogger.a("PatchOnlineVideoAdManager", "requestPauseAd and mVideoCountDownView run");
            return;
        }
        if (!this.D) {
            SourceKitLogger.a("PatchOnlineVideoAdManager", "canShowPause forbidden");
            return;
        }
        if (this.j.l().size() <= 0) {
            SourceKitLogger.a("PatchOnlineVideoAdManager", "requestPauseAd but no entry");
            return;
        }
        com.mgtv.a.b.d dVar = this.e;
        if (dVar != null && dVar.m()) {
            SourceKitLogger.a("PatchOnlineVideoAdManager", "requestPauseAd pre and mid is showing");
            return;
        }
        Iterator<com.mgmi.platform.view.a> it = this.j.l().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (next.s() != 2);
        if (next != null) {
            d(next);
        }
    }

    public void a(r rVar) {
        com.mgmi.ads.api.d.b bVar;
        WeakReference<Context> weakReference;
        List<VASTAd> listE = rVar.e();
        SourceKitLogger.a("PatchOnlineVideoAdManager", "parsePauseAd");
        if (listE != null && listE.size() > 0 && (bVar = this.b) != null) {
            com.mgmi.ads.api.a aVarI = bVar.i();
            if (aVarI == null || aVarI.isContentPlaying()) {
                return;
            }
            com.mgtv.a.b.d dVar = this.e;
            if ((dVar != null && dVar.m()) || (weakReference = this.d) == null || weakReference.get() == null) {
                return;
            }
            e eVar = new e();
            this.f = eVar;
            eVar.a(aVarI);
            this.f.a(this.d.get(), this.i.d());
            VASTAd vASTAd = listE.get(0);
            this.f.a(listE);
            e eVar2 = this.f;
            if (eVar2 != null) {
                eVar2.d();
            }
            SourceKitLogger.a("PatchOnlineVideoAdManager", "parsePauseAd sdd ");
            com.mgmi.ads.api.a.EnumC0161a enumC0161a = com.mgmi.ads.api.a.EnumC0161a.AD_PAUSED_SUCCESS;
            AdWidgetInfo adWidgetInfo = new AdWidgetInfo("ADS_TYPE_PAUSED");
            adWidgetInfo.setPauseType(vASTAd.getAdStyle());
            aVarI.onAdListener(enumC0161a, adWidgetInfo);
            com.mgmi.ads.api.render.b.a(vASTAd);
            return;
        }
        SourceKitLogger.a("PatchOnlineVideoAdManager", "parsePauseAd  isEmpty ");
    }

    public void a(boolean z, String str, float f, int i, int i2) {
        com.mgmi.ads.api.a aVarI;
        com.mgmi.ads.api.d.b bVar = this.b;
        if (bVar == null || (aVarI = bVar.i()) == null) {
            return;
        }
        if (z) {
            AdWidgetInfo adWidgetInfo = new AdWidgetInfo(str);
            adWidgetInfo.setTriggeringTime(f);
            adWidgetInfo.setDuration(i);
            adWidgetInfo.setCountDown(i2);
            aVarI.onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_HAS_ADS, adWidgetInfo);
            return;
        }
        aVarI.onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_NO_ADS, new AdWidgetInfo(str));
    }

    @Override
    public void a(String str, int i, String str2) {
        this.E = true;
        com.mgtv.a.b.d dVar = this.e;
        if (dVar != null && dVar.m() && this.e.t() == 1) {
            SourceKitLogger.a("PatchOnlineVideoAdManager", "ad play error and notiey start");
            x();
            return;
        }
        com.mgtv.a.b.d dVar2 = this.e;
        if (dVar2 != null && dVar2.m() && this.e.t() == 5) {
            SourceKitLogger.a("PatchOnlineVideoAdManager", "ad play error and notiey resume");
        }
    }

    @Override
    public void a(int i, Object obj) {
        if (i != 206000) {
            if (i == 600000) {
                g();
                return;
            }
            return;
        }
        com.mgtv.a.b.d dVar = this.e;
        if (dVar != null && dVar.t() == 1) {
            N();
            return;
        }
        com.mgtv.a.b.d dVar2 = this.e;
        if (dVar2 == null || dVar2.t() != 5) {
            return;
        }
        S();
    }

    public void a(int i, boolean z) {
        com.mgmi.ads.api.d.b bVar = this.b;
        if (bVar == null || this.e == null) {
            return;
        }
        com.mgmi.ads.api.a.EnumC0161a enumC0161a = com.mgmi.ads.api.a.EnumC0161a.AD_PLAYER_ON_FIRST_FRAME;
        com.mgmi.ads.api.a aVarI = bVar.i();
        if (aVarI != null) {
            if (this.e.t() == 1) {
                aVarI.onAdListener(enumC0161a, new AdWidgetInfo("ADS_ONLINE_VIDEO"));
            } else {
                aVarI.onAdListener(enumC0161a, new AdWidgetInfo("ADS_VIDEO_WIDGET"));
            }
        }
    }
}
