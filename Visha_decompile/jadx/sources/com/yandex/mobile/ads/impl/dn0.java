package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import defpackage.blb;
import defpackage.ubc;
import defpackage.y45;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class dn0 {
    private final r5 a;
    private final ol b;
    private final ql c;
    private final ks0 d;
    private final p60 e;
    private final uj1 f;
    private final com.google.android.exoplayer2.t.d g;
    private final nb2 h;
    private final r9 i;
    private final p5 j;
    private final b70 k;
    private final vi1 l;
    private et m;
    private com.google.android.exoplayer2.t n;
    private Object o;
    private boolean p;
    private boolean q;

    public dn0(p9 p9Var, r5 r5Var, ol olVar, ql qlVar, ks0 ks0Var, ti1 ti1Var, p60 p60Var, uj1 uj1Var, w60 w60Var, nb2 nb2Var, r9 r9Var, p5 p5Var, b70 b70Var, vi1 vi1Var) {
        y45.j(p9Var, "adStateDataController");
        y45.j(r5Var, "adPlaybackStateCreator");
        y45.j(olVar, "bindingControllerCreator");
        y45.j(qlVar, "bindingControllerHolder");
        y45.j(ks0Var, "loadingController");
        y45.j(ti1Var, "playerStateController");
        y45.j(p60Var, "exoPlayerAdPrepareHandler");
        y45.j(uj1Var, "positionProviderHolder");
        y45.j(w60Var, "playerListener");
        y45.j(nb2Var, "videoAdCreativePlaybackProxyListener");
        y45.j(r9Var, "adStateHolder");
        y45.j(p5Var, "adPlaybackStateController");
        y45.j(b70Var, "currentExoPlayerProvider");
        y45.j(vi1Var, "playerStateHolder");
        this.a = r5Var;
        this.b = olVar;
        this.c = qlVar;
        this.d = ks0Var;
        this.e = p60Var;
        this.f = uj1Var;
        this.g = w60Var;
        this.h = nb2Var;
        this.i = r9Var;
        this.j = p5Var;
        this.k = b70Var;
        this.l = vi1Var;
    }

    public static final void b(dn0 dn0Var, et etVar) {
        dn0Var.j.a(dn0Var.a.a(etVar, dn0Var.o));
    }

    public final void a(int i, int i2) {
        this.e.a(i, i2);
    }

    public final void a(int i, int i2, IOException iOException) {
        y45.j(iOException, "exception");
        this.e.b(i, i2, iOException);
    }

    public final void b() {
        com.google.android.exoplayer2.t tVarA = this.k.a();
        if (tVarA != null) {
            if (this.m != null) {
                long jT0 = blb.t0(tVarA.getCurrentPosition());
                if (!tVarA.isPlayingAd()) {
                    jT0 = 0;
                }
                com.google.android.exoplayer2.source.ads.a aVarL = this.j.a().l(jT0);
                y45.i(aVarL, "withAdResumePositionUs(...)");
                this.j.a(aVarL);
            }
            tVarA.b(this.g);
            this.j.a((com.google.android.exoplayer2.source.ads.b) null);
            this.k.a((com.google.android.exoplayer2.t) null);
            this.p = true;
        }
    }

    public final void a(ViewGroup viewGroup, List<xb2> list) {
        if (this.q || this.m != null || viewGroup == null) {
            return;
        }
        this.q = true;
        if (list == null) {
            list = defpackage.y71.k();
        }
        this.d.a(viewGroup, list, new a());
    }

    public final void a() {
        this.q = false;
        this.p = false;
        this.m = null;
        this.f.a((pi1) null);
        this.i.a();
        this.i.a((cj1) null);
        this.c.c();
        this.j.b();
        this.d.a();
        this.h.a((lo0) null);
        ml mlVarA = this.c.a();
        if (mlVarA != null) {
            mlVarA.c();
        }
        ml mlVarA2 = this.c.a();
        if (mlVarA2 != null) {
            mlVarA2.d();
        }
    }

    public final class a implements ks0.b {
        public a() {
        }

        @Override
        public final void a(ViewGroup viewGroup, List<xb2> list, et etVar) {
            y45.j(viewGroup, "viewGroup");
            y45.j(list, "friendlyOverlays");
            y45.j(etVar, "loadedInstreamAd");
            dn0.this.q = false;
            dn0.this.m = etVar;
            et etVar2 = dn0.this.m;
            if (etVar2 != null) {
                dn0.this.getClass();
                etVar2.b();
            }
            ml mlVarA = dn0.this.b.a(viewGroup, list, etVar);
            dn0.this.c.a(mlVarA);
            mlVarA.a(dn0.this.h);
            mlVarA.c();
            mlVarA.d();
            if (dn0.this.k.b()) {
                dn0.this.p = true;
                dn0.b(dn0.this, etVar);
            }
        }

        @Override
        public final void a(String str) {
            y45.j(str, "reason");
            dn0.this.q = false;
            p5 p5Var = dn0.this.j;
            com.google.android.exoplayer2.source.ads.a aVar = com.google.android.exoplayer2.source.ads.a.h;
            y45.i(aVar, "NONE");
            p5Var.a(aVar);
        }
    }

    public final void a(rn2 rn2Var) {
        this.h.a(rn2Var);
    }

    public final void a(com.google.android.exoplayer2.t tVar) {
        this.n = tVar;
    }

    public final void a(com.google.android.exoplayer2.source.ads.b bVar, defpackage.a8 a8Var, Object obj) {
        y45.j(bVar, "eventListener");
        com.google.android.exoplayer2.t tVar = this.n;
        this.k.a(tVar);
        this.o = obj;
        if (tVar != null) {
            tVar.d(this.g);
            this.j.a(bVar);
            this.f.a(new pi1(tVar, this.l));
            if (this.p) {
                this.j.a(this.j.a());
                ml mlVarA = this.c.a();
                if (mlVarA != null) {
                    mlVarA.a();
                    return;
                }
                return;
            }
            et etVar = this.m;
            if (etVar != null) {
                this.j.a(this.a.a(etVar, this.o));
                return;
            }
            if (a8Var != null) {
                ViewGroup adViewGroup = a8Var.getAdViewGroup();
                ArrayList arrayList = new ArrayList();
                Iterator it = a8Var.getAdOverlayInfos().iterator();
                if (!it.hasNext()) {
                    a(adViewGroup, arrayList);
                    return;
                }
                ubc.a(it.next());
                y45.g(null);
                y45.j(null, "adOverlayInfo");
                throw null;
            }
        }
    }
}
