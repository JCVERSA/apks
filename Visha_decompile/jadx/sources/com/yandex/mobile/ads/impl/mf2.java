package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.hisavana.common.tracking.TrackingKey;
import defpackage.y45;
import java.util.Map;

public final class mf2 {
    private final sp1 a;
    private final uc2 b;

    public mf2(Context context, o3 o3Var, o8<?> o8Var, sp1 sp1Var, uc2 uc2Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(sp1Var, "metricaReporter");
        y45.j(uc2Var, "reportParametersProvider");
        this.a = sp1Var;
        this.b = uc2Var;
    }

    public final void a(String str) {
        pp1 pp1VarA = this.b.a();
        pp1VarA.b(str, TrackingKey.ERROR_MESSAGE);
        op1.b bVar = op1.b.s;
        Map<String, Object> mapB = pp1VarA.b();
        this.a.a(new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(pp1VarA, bVar, "reportType", mapB, "reportData")));
    }
}
