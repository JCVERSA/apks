package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.hisavana.common.tracking.TrackingKey;
import defpackage.abb;
import defpackage.y45;
import java.util.Map;

public final class ld2 {
    private final o8<?> a;
    private final s01 b;
    private final kd2 c;
    private a d;
    private b e;
    private Map<String, ? extends Object> f;

    public interface a {
        Map<String, Object> a();
    }

    public interface b {
        pp1 a();
    }

    public ld2(Context context, o3 o3Var, o8<?> o8Var, g5 g5Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(g5Var, "adLoadingPhasesManager");
        this.a = o8Var;
        o3Var.q().f();
        this.b = nd.a(context, jn2.a, o3Var.q().b());
        this.c = new kd2(g5Var);
    }

    public final void a(String str, String str2) {
        y45.j(str, "failureReason");
        y45.j(str2, "errorMessage");
        a(kotlin.collections.a.q(abb.a("status", "error"), abb.a("failure_reason", str), abb.a(TrackingKey.ERROR_MESSAGE, str2)));
    }

    public final void b(Map<String, ? extends Object> map) {
        this.f = map;
    }

    private final void a(Map<String, Object> map) {
        Map<String, ? extends Object> mapL = this.f;
        if (mapL == null) {
            mapL = kotlin.collections.a.l();
        }
        map.putAll(mapL);
        a aVar = this.d;
        Map<String, Object> mapA = aVar != null ? aVar.a() : null;
        if (mapA == null) {
            mapA = kotlin.collections.a.l();
        }
        map.putAll(mapA);
        b bVar = this.e;
        Map<String, Object> mapB = bVar != null ? bVar.a().b() : null;
        if (mapB == null) {
            mapB = kotlin.collections.a.l();
        }
        map.putAll(mapB);
        op1.b bVar2 = op1.b.O;
        o8<?> o8Var = this.a;
        f fVarA = o8Var != null ? o8Var.a() : null;
        y45.j(bVar2, "reportType");
        y45.j(map, "reportData");
        this.b.a(new op1(bVar2.a(), (Map<String, Object>) kotlin.collections.a.C(map), fVarA));
    }

    public final void a() {
        a(kotlin.collections.a.q(abb.a("status", "success"), abb.a("durations", this.c.a())));
    }

    public final void a(b bVar) {
        this.e = bVar;
    }

    public final void a(a aVar) {
        this.d = aVar;
    }
}
