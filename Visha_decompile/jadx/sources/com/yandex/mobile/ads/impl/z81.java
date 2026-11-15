package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import defpackage.hz9;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

public abstract class z81 {
    private final v62 A;
    private final rc1 B;
    private final p51 C;
    private final String D;
    private final e31 E;
    private final o62 F;
    private final i3 G;
    private final bp H;
    private final pg I;
    private g71 J;
    private final gh1.b K;
    private final List<b30> L;
    private final n91 M;
    private final Context a;
    private final e51 b;
    private final dc1 c;
    private final na1 d;
    private final fc1 e;
    private final s51 f;
    private final o3 g;
    private final o8<?> h;
    private final y61 i;
    private final yx1 j;
    private final t81 k;
    private final yt l;
    private final g42 m;
    private final pk0 n;
    private final bm o;
    private final h71 p;
    private final ox0 q;
    private final vg r;
    private final tk0 s;
    private final vo1 t;
    private final rl u;
    private final k70 v;
    private final i41 w;
    private final fo1 x;
    private final l70 y;
    private final fh z;

    public final class a implements gh1.b {
        public a() {
        }

        @Override
        public final void a(dh1 dh1Var) {
            y45.j(dh1Var, "phoneState");
            boolean z = !z81.this.f().b();
            Objects.toString(dh1Var);
            a.class.toString();
            sp0.d(new Object[0]);
            z81.this.E.a(dh1Var, z);
        }
    }

    public final class b implements j62 {
        public b() {
        }

        @Override
        public final n92 a(int i) {
            return z81.this.f().b(z81.this.a, i);
        }

        @Override
        public final n92 b(int i) {
            return z81.this.f().a(z81.this.a, i);
        }
    }

    public z81(Context context, kl klVar, e51 e51Var) {
        dc1 dc1VarH = klVar.h();
        na1 na1VarG = klVar.g();
        fc1 fc1VarI = klVar.i();
        s41 s41VarD = klVar.d();
        bv1 bv1VarJ = klVar.j();
        s51 s51VarE = klVar.e();
        r81 r81VarC = klVar.c();
        sa saVarB = klVar.b();
        g41 g41VarF = klVar.f();
        s9 s9VarA = klVar.a();
        o3 o3VarA = s41VarD.a();
        ts tsVarB = o3VarA.b();
        o8<?> o8VarB = s41VarD.b();
        y61 y61VarC = s41VarD.c();
        List<ig<?>> listB = fc1VarI.b();
        String strA = fc1VarI.a();
        yx1 yx1VarH = y61VarC.h();
        t81 t81Var = new t81();
        yt ytVar = new yt(t81Var);
        g42 g42Var = new g42();
        pk0 pk0Var = new pk0();
        td1 td1Var = new td1();
        gh1 gh1VarA = gh1.h.a(context);
        xo1 xo1Var = new xo1();
        bm bmVar = new bm();
        rk0 rk0Var = new rk0();
        y4 y4VarA = s51VarE.a();
        int i = h71.d;
        h71 h71VarA = h71.a.a();
        ox0 ox0Var = new ox0(context, o3VarA);
        p71 p71Var = new p71(na1VarG);
        u7 u7Var = new u7(p71Var, saVarB);
        vg vgVar = new vg(listB);
        o91 o91Var = new o91(vgVar);
        tk0 tk0Var = new tk0(context, o8VarB, o3VarA, fc1VarI.c());
        vo1 vo1Var = new vo1(listB);
        rl rlVar = new rl(y4VarA, tsVarB, o8VarB, strA, o3VarA.q().c());
        k70 k70Var = new k70(context, o3VarA, y4VarA, tsVarB, o8VarB, strA);
        i41 i41Var = new i41(context, o3VarA, y4VarA, tsVarB, strA);
        fo1 fo1Var = new fo1(context, o3VarA, y4VarA, tsVarB, o8VarB, strA);
        l70 l70Var = new l70(listB);
        fh fhVar = new fh(listB);
        z51 z51Var = new z51(strA);
        this(context, klVar, e51Var, dc1VarH, na1VarG, fc1VarI, s41VarD, bv1VarJ, s51VarE, r81VarC, saVarB, g41VarF, s9VarA, o3VarA, tsVarB, o8VarB, y61VarC, listB, yx1VarH, t81Var, ytVar, g42Var, pk0Var, td1Var, gh1VarA, xo1Var, bmVar, rk0Var, y4VarA, h71VarA, ox0Var, p71Var, u7Var, vgVar, o91Var, tk0Var, vo1Var, rlVar, k70Var, i41Var, fo1Var, l70Var, fhVar, z51Var, new s4(z51Var), new v62(), new rc1(o3VarA, o8VarB, listB, g41VarF != null ? g41VarF.e() : null));
    }

    public final List<b30> c() {
        return this.L;
    }

    public final void destroy() {
        g71 g71Var = this.J;
        if (g71Var != null) {
            g71Var.b();
        }
    }

    public final o8<?> e() {
        return this.h;
    }

    public final na1 f() {
        return this.d;
    }

    public final fc1 g() {
        return this.e;
    }

    public yt getNativeAdVideoController() {
        return this.l;
    }

    public final void h() {
        j();
        this.A.a(this.a);
        g71 g71Var = this.J;
        if (g71Var != null) {
            this.c.a(g71Var);
            this.F.a(g71Var);
            this.z.a(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0013  */
    public final void i() {
        boolean z;
        View viewE;
        g71 g71Var = this.J;
        if (g71Var != null && (viewE = g71Var.e()) != null) {
            z = viewE.isAttachedToWindow();
        }
        sp0.d(new Object[0]);
        if (z) {
            this.F.a(this.a, this.K, this.J);
        }
    }

    public final void j() {
        sp0.d(new Object[0]);
        this.F.a(this.a, this.K);
    }

    public abstract void loadImages();

    public final void a(View view, sj0 sj0Var, r71 r71Var, dp dpVar, uo uoVar) throws e61 {
        y45.j(view, "nativeAdView");
        y45.j(sj0Var, "imageProvider");
        y45.j(r71Var, "nativeAdWeakViewHolder");
        y45.j(dpVar, "clickListenerFactory");
        y45.j(uoVar, "clickConnector");
        int i = h71.d;
        h71 h71VarA = h71.a.a();
        z81 z81VarA = h71VarA.a(view);
        if (y45.e(this, z81VarA)) {
            return;
        }
        if (z81VarA != null) {
            z81VarA.h();
        }
        if (h71VarA.a(this)) {
            h();
        }
        h71VarA.a(view, this);
        g71 g71Var = new g71(r71Var, this.g, sj0Var, this.n, dpVar, this.f, this.r, this.M, this.k, this.h, this.e, this.b, this.q, this.j);
        g71Var.a();
        this.J = g71Var;
        this.z.a(g71Var);
        this.d.a(g71Var);
        this.c.a(g71Var);
        uoVar.a(this.I.a(dpVar, g71Var));
        b(g71Var);
        this.A.a(view, new a91(this));
    }

    public final n91 b() {
        return this.M;
    }

    private final void b(g71 g71Var) throws e61 {
        this.c.a(g71Var, this.H);
        boolean z = y45.e(this.h.E(), c91.c.a()) || y45.e(this.h.E(), c91.d.a());
        if (this.B.a() && !z) {
            loadImages();
        }
        this.w.a(this.t.a(g71Var), op1.b.I);
        sp0.d(new Object[0]);
        i();
    }

    public final void a(View view, sj0 sj0Var, r71 r71Var, dp dpVar) throws e61 {
        y45.j(view, "nativeAdView");
        y45.j(sj0Var, "imageProvider");
        y45.j(r71Var, "nativeAdWeakViewHolder");
        y45.j(dpVar, "clickListenerFactory");
        z81 z81VarA = this.p.a(view);
        if (y45.e(this, z81VarA)) {
            return;
        }
        if (z81VarA != null) {
            z81VarA.h();
        }
        if (this.p.a(this)) {
            h();
        }
        this.p.a(view, this);
        a(new g71(r71Var, this.g, sj0Var, this.n, dpVar, this.f, this.r, this.M, this.k, this.h, this.e, this.b, this.q, this.j));
        this.A.a(view, new a91(this));
    }

    private final void a(g71 g71Var) throws e61 {
        g71Var.a();
        this.x.a();
        this.o.getClass();
        y45.j(g71Var, "viewAdapter");
        Map<String, jg<?>> mapC = g71Var.c();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, jg<?>> entry : mapC.entrySet()) {
            jg<?> value = entry.getValue();
            if (value != null && value.b()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add((String) ((Map.Entry) it.next()).getKey());
        }
        this.w.a(arrayList, op1.b.H);
        ArrayList arrayListA = this.y.a(g71Var);
        if (!arrayListA.isEmpty()) {
            this.v.a(arrayListA);
        }
        this.J = g71Var;
        this.z.a(g71Var);
        this.d.a(g71Var);
        qq1 qq1VarA = this.d.a();
        if (qq1VarA.a()) {
            this.c.a(g71Var);
            b(g71Var);
            return;
        }
        String strB = qq1VarA.b();
        this.u.a(strB);
        hz9 hz9Var = hz9.a;
        throw new e61(z0.a(new Object[0], 0, "Resource for required view " + strB + " is not present", "format(...)"));
    }

    public z81(Context context, kl klVar, e51 e51Var, dc1 dc1Var, na1 na1Var, fc1 fc1Var, s41 s41Var, bv1 bv1Var, s51 s51Var, r81 r81Var, sa saVar, g41 g41Var, s9 s9Var, o3 o3Var, ts tsVar, o8 o8Var, y61 y61Var, List list, yx1 yx1Var, t81 t81Var, yt ytVar, g42 g42Var, pk0 pk0Var, td1 td1Var, gh1 gh1Var, wo1 wo1Var, bm bmVar, rk0 rk0Var, y4 y4Var, h71 h71Var, ox0 ox0Var, p71 p71Var, u7 u7Var, vg vgVar, o91 o91Var, tk0 tk0Var, vo1 vo1Var, rl rlVar, k70 k70Var, i41 i41Var, fo1 fo1Var, l70 l70Var, fh fhVar, z51 z51Var, s4 s4Var, v62 v62Var, rc1 rc1Var) {
        y45.j(context, "context");
        y45.j(klVar, "binderConfiguration");
        y45.j(e51Var, "nativeAdControllers");
        y45.j(dc1Var, "renderer");
        y45.j(na1Var, "nativeAdValidator");
        y45.j(fc1Var, "nativeVisualBlock");
        y45.j(s41Var, "nativeAdBlock");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(s51Var, "nativeAdFactoriesProvider");
        y45.j(r81Var, "forceImpressionConfigurator");
        y45.j(saVar, "adViewRenderingValidator");
        y45.j(s9Var, "adStructureType");
        y45.j(o3Var, "adConfiguration");
        y45.j(tsVar, "adType");
        y45.j(o8Var, "adResponse");
        y45.j(y61Var, "nativeAdResponse");
        y45.j(list, "assets");
        y45.j(t81Var, "nativeForcePauseObserver");
        y45.j(ytVar, "nativeAdVideoController");
        y45.j(g42Var, "targetUrlHandlerProvider");
        y45.j(pk0Var, "impressionEventsObservable");
        y45.j(td1Var, "noticeTrackingManagerProvider");
        y45.j(gh1Var, "phoneStateTracker");
        y45.j(wo1Var, "renderedTimer");
        y45.j(bmVar, "boundAssetsProvider");
        y45.j(rk0Var, "impressionManagerCreator");
        y45.j(y4Var, "infoReportDataProviderFactory");
        y45.j(h71Var, "bindingManager");
        y45.j(ox0Var, "mediaViewRenderController");
        y45.j(p71Var, "nativeAdVisibilityValidator");
        y45.j(u7Var, "adRenderingValidator");
        y45.j(vgVar, "assetValueProvider");
        y45.j(o91Var, "nativeMediaContentFactory");
        y45.j(tk0Var, "impressionReporter");
        y45.j(vo1Var, "renderedAssetsProvider");
        y45.j(rlVar, "bindingFailureReporter");
        y45.j(k70Var, "expectedViewMissingReporter");
        y45.j(i41Var, "nativeAdAssetNamesReporter");
        y45.j(fo1Var, "rebindAdReporter");
        y45.j(l70Var, "expectedViewsAssetProvider");
        y45.j(fhVar, "assetsRenderedReportParameterProvider");
        y45.j(z51Var, "adIdProvider");
        y45.j(s4Var, "adIdStorageManager");
        y45.j(v62Var, "trackingTrigger");
        y45.j(rc1Var, "needLoadChecker");
        this.a = context;
        this.b = e51Var;
        this.c = dc1Var;
        this.d = na1Var;
        this.e = fc1Var;
        this.f = s51Var;
        this.g = o3Var;
        this.h = o8Var;
        this.i = y61Var;
        this.j = yx1Var;
        this.k = t81Var;
        this.l = ytVar;
        this.m = g42Var;
        this.n = pk0Var;
        this.o = bmVar;
        this.p = h71Var;
        this.q = ox0Var;
        this.r = vgVar;
        this.s = tk0Var;
        this.t = vo1Var;
        this.u = rlVar;
        this.v = k70Var;
        this.w = i41Var;
        this.x = fo1Var;
        this.y = l70Var;
        this.z = fhVar;
        this.A = v62Var;
        this.B = rc1Var;
        p51 p51VarA = s51Var.b().a(context, o8Var, o3Var);
        this.C = p51VarA;
        String strA = oa.a(this);
        this.D = strA;
        this.K = new a();
        b bVar = new b();
        this.L = y61Var.c();
        this.M = o91Var.a();
        rk0Var.getClass();
        qk0 qk0VarA = rk0.a(context, p51VarA, tk0Var, s4Var, pk0Var);
        List<ey1> listE = fc1Var.e();
        qk0VarA.a(listE, fc1Var.c());
        i3 i3Var = new i3(context, bv1Var, o8Var, o3Var, p51VarA, g42Var);
        this.G = i3Var;
        this.H = new bp(i3Var, wo1Var, pk0Var);
        e31 e31VarA = td1Var.a(context, o3Var, tk0Var, bVar, strA, s9Var);
        this.E = e31VarA;
        r81Var.a(pk0Var);
        pk0Var.a(new qd1(e31VarA));
        o62 o62VarA = s51Var.e().a(e31VarA, new to1(context, u7Var, o8Var, o3Var, s9Var, s4Var, pk0Var, wo1Var, fc1Var.d()), new bl0(na1Var, listE), gh1Var);
        this.F = o62VarA;
        o62VarA.a(pk0Var);
        o62VarA.a((o8<?>) o8Var, listE);
        this.I = new pg(list, i3Var, wo1Var, pk0Var, g41Var != null ? g41Var.e() : null);
    }

    public final y61 a() {
        return this.i;
    }

    public final void a(com.yandex.mobile.ads.nativeads.c cVar) {
        this.m.a(cVar);
    }

    public void a(st stVar) {
        this.C.a(stVar);
    }

    public final void a(x71 x71Var) {
        y45.j(x71Var, "reportParameterManager");
        this.G.a(x71Var);
        this.s.a(x71Var);
        this.C.a(x71Var);
        this.F.a(new u91(x71Var, this.z));
        this.u.a(x71Var);
        this.v.a(x71Var);
        this.w.a(x71Var);
        this.x.a(x71Var);
    }
}
