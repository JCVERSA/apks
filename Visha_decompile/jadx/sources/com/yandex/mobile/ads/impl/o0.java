package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.hisavana.common.tracking.TrackingKey;
import defpackage.af5;
import defpackage.y45;
import java.util.Map;
import java.util.Objects;

public final class o0 {
    static final af5[] m = {ta.a(o0.class, "activityInteractionEventListener", "getActivityInteractionEventListener()Lcom/monetization/ads/base/tracker/interaction/ActivityInteractionEventListener;", 0)};
    private final o3 a;
    private final o8<?> b;
    private final m80 c;
    private final c8 d;
    private final sp1 e;
    private final t80 f;
    private final p80 g;
    private final boolean h;
    private final go1 i;
    private a j;
    private x71 k;
    private long l;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.o0$a[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.o0$a[]) from 0x002a: INVOKE (r0v1 com.yandex.mobile.ads.impl.o0$a[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {
        c("browser"),
        d("webview"),
        e("custom");

        private final String b;

        static {
            kotlin.enums.a.a(aVarArr);
        }

        private a(String str) {
            super(str, i);
            this.b = str;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) f.clone();
        }

        public final String a() {
            return this.b;
        }
    }

    public o0(Context context, o3 o3Var, o8 o8Var, n0 n0Var, m80 m80Var) {
        c8 c8Var = new c8();
        o3Var.q().f();
        s01 s01VarA = nd.a(context, jn2.a, o3Var.q().b());
        t80 t80Var = m80Var != null ? new t80(context, o3Var, m80Var) : null;
        p80 p80VarA = p80.a.a(context);
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        this(context, o3Var, o8Var, n0Var, m80Var, c8Var, s01VarA, t80Var, p80VarA, ju1VarA != null && ju1VarA.r0());
    }

    private final op1 a(a aVar, String str) {
        pp1 pp1VarA = this.d.a(this.a.a());
        pp1VarA.b(aVar.a(), "type");
        pp1VarA.b(this.a.b().a(), TrackingKey.AD_TYPE);
        pp1VarA.b(this.a.c(), "block_id");
        pp1VarA.b(this.a.c(), "ad_unit_id");
        pp1VarA.b(str, "interval");
        x71 x71Var = this.k;
        if (x71Var != null) {
            pp1VarA = qp1.a(pp1VarA, x71Var.a());
        }
        op1.b bVar = op1.b.M;
        Map<String, Object> mapB = pp1VarA.b();
        o8<?> o8Var = this.b;
        f fVarA = o8Var != null ? o8Var.a() : null;
        y45.j(bVar, "reportType");
        y45.j(mapB, "reportData");
        return new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), fVarA);
    }

    public final void b(a aVar) {
        y45.j(aVar, "type");
        Objects.toString(aVar);
        sp0.a(new Object[0]);
        this.l = System.currentTimeMillis();
        this.j = aVar;
        if (aVar == a.c && this.h) {
            Map<String, Object> mapB = a(aVar, null).b();
            o8<?> o8Var = this.b;
            this.g.a(new n80(this.a.b(), this.l, aVar, this.c, mapB, o8Var != null ? o8Var.a() : null));
        }
    }

    public o0(Context context, o3 o3Var, o8 o8Var, n0 n0Var, m80 m80Var, c8 c8Var, sp1 sp1Var, t80 t80Var, p80 p80Var, boolean z) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(n0Var, "activityInteractionEventListener");
        y45.j(c8Var, "adRequestReportDataProvider");
        y45.j(sp1Var, "metricaReporter");
        y45.j(p80Var, "falseClickDataStorage");
        this.a = o3Var;
        this.b = o8Var;
        this.c = m80Var;
        this.d = c8Var;
        this.e = sp1Var;
        this.f = t80Var;
        this.g = p80Var;
        this.h = z;
        this.i = ho1.a(n0Var);
    }

    public final void a(a aVar) {
        y45.j(aVar, "type");
        Objects.toString(aVar);
        sp0.a(new Object[0]);
        if (this.l == 0 || this.j != aVar) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.l;
        String strA = gq0.a(jCurrentTimeMillis);
        y45.j(aVar, "type");
        y45.j(strA, "interval");
        this.e.a(a(aVar, strA));
        sp0.d(aVar.a(), strA);
        n0 n0Var = (n0) this.i.getValue(this, m[0]);
        if (n0Var != null) {
            n0Var.onReturnedToApplication();
        }
        t80 t80Var = this.f;
        if (t80Var != null) {
            t80Var.a(jCurrentTimeMillis);
            if (this.h) {
                this.g.a(this.l);
            }
        }
        this.l = 0L;
        this.j = null;
    }

    public final void a(x71 x71Var) {
        this.k = x71Var;
    }
}
