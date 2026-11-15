package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.yandex.mobile.ads.impl.jd2;
import defpackage.af5;
import defpackage.xq8;
import defpackage.y45;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

public final class jd2 implements md2.a, bd2.a {
    static final af5[] k = {xq8.f(new MutablePropertyReference1Impl(jd2.class, "adParameterManager", "getAdParameterManager()Lcom/monetization/ads/video/render/report/VideoAdRenderingResultReporter$ResponseReportParameterManager;", 0)), xq8.f(new MutablePropertyReference1Impl(jd2.class, "requestParameterManager", "getRequestParameterManager()Lcom/monetization/ads/video/render/report/VideoAdRenderingResultReporter$RequestReportParameterManager;", 0))};
    private static final long l = TimeUnit.SECONDS.toMillis(10);
    private final g5 a;
    private final mg2 b;
    private final mg1 c;
    private final md2 d;
    private final bd2 e;
    private final ld2 f;
    private final ff2 g;
    private boolean h;
    private final hd2 i;
    private final id2 j;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public jd2(Context context, o3 o3Var, o8 o8Var, zb2 zb2Var, g5 g5Var, qd2 qd2Var, sg2 sg2Var, uf2 uf2Var, ng2 ng2Var) {
        this(context, o3Var, o8Var, zb2Var, g5Var, qd2Var, sg2Var, uf2Var, ng2Var, mg1.a.a(false));
        int i = mg1.a;
    }

    public static final void b(jd2 jd2Var) {
        y45.j(jd2Var, "this$0");
        jd2Var.a(new xc2(xc2.a.i, new v00()));
    }

    public final void d() {
        this.d.b();
        this.e.b();
        this.c.stop();
    }

    public final void e() {
        this.h = false;
        this.f.b(null);
        this.d.b();
        this.e.b();
        this.c.stop();
    }

    public final void f() {
        this.d.a();
    }

    public final void a(xc2 xc2Var) {
        y45.j(xc2Var, "error");
        this.d.b();
        this.e.b();
        this.c.stop();
        if (this.h) {
            return;
        }
        this.h = true;
        String lowerCase = xc2Var.a().name().toLowerCase(Locale.ROOT);
        y45.i(lowerCase, "toLowerCase(...)");
        String message = xc2Var.b().getMessage();
        if (message == null) {
            message = "";
        }
        this.f.a(lowerCase, message);
    }

    public final void c() {
        this.d.b();
        this.e.b();
        this.c.stop();
    }

    public jd2(Context context, o3 o3Var, o8 o8Var, zb2 zb2Var, g5 g5Var, qd2 qd2Var, sg2 sg2Var, uf2 uf2Var, ng2 ng2Var, mg1 mg1Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(qd2Var, "videoAdStatusController");
        y45.j(sg2Var, "videoViewProvider");
        y45.j(uf2Var, "renderValidator");
        y45.j(ng2Var, "videoTracker");
        y45.j(mg1Var, "pausableTimer");
        this.a = g5Var;
        this.b = ng2Var;
        this.c = mg1Var;
        this.d = new md2(uf2Var, this);
        this.e = new bd2(qd2Var, this);
        this.f = new ld2(context, o3Var, o8Var, g5Var);
        this.g = new ff2(zb2Var, sg2Var);
        defpackage.l72 l72Var = defpackage.l72.a;
        this.i = new hd2(this);
        this.j = new id2(this);
    }

    @Override
    public final void b() {
        this.f.b(this.g.a());
        this.a.a(f5.w);
        if (this.h) {
            return;
        }
        this.h = true;
        this.f.a();
    }

    @Override
    public final void a() {
        this.d.b();
        g5 g5Var = this.a;
        f5 f5Var = f5.w;
        bk.a(g5Var, f5Var, "adLoadingPhaseType", f5Var, null);
        this.b.i();
        this.e.a();
        this.c.a(l, new og1() {
            @Override
            public final void a() {
                jd2.b(this.a);
            }
        });
    }

    public final void a(ld2.b bVar) {
        this.i.setValue(this, k[0], bVar);
    }

    public final void a(ld2.a aVar) {
        this.j.setValue(this, k[1], aVar);
    }
}
