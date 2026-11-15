package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.hisavana.common.tracking.TrackingKey;
import defpackage.abb;
import defpackage.y45;
import java.util.Map;
import kotlin.Pair;

public final class u62 {
    private final o3 a;
    private final sp1 b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public u62(Context context, o3 o3Var) {
        this(context, o3Var, nd.a(context, jn2.a, o3Var.q().b()));
        o3Var.q().f();
    }

    public final void a(Map map, ju1 ju1Var) {
        op1.b bVar = op1.b.Z;
        y45.j(bVar, "reportType");
        y45.j(map, "reportData");
        if (ju1Var == null || !ju1Var.I()) {
            return;
        }
        o3 o3Var = this.a;
        Pair pairA = abb.a(TrackingKey.AD_TYPE, o3Var.b().a());
        String strC = o3Var.c();
        if (strC == null) {
            strC = "";
        }
        Map mapS = kotlin.collections.a.s(kotlin.collections.a.p(pairA, abb.a("ad_unit_id", strC)), map);
        y45.j(bVar, "reportType");
        y45.j(mapS, "reportData");
        this.b.a(new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapS), (f) null));
    }

    public u62(Context context, o3 o3Var, sp1 sp1Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(sp1Var, "metricaReporter");
        this.a = o3Var;
        this.b = sp1Var;
    }
}
