package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.quality.base.result.AdQualityVerificationResult;
import defpackage.y45;
import java.util.Map;

public final class e7 {
    private final o3 a;
    private final w6 b;
    private final f7 c;

    public e7(o3 o3Var) {
        this(o3Var, new w6(), new f7());
    }

    public final void a(Context context, AdQualityVerificationResult adQualityVerificationResult, o8<?> o8Var) {
        y45.j(context, "context");
        y45.j(adQualityVerificationResult, "verificationResult");
        if (adQualityVerificationResult instanceof AdQualityVerificationResult.NotImplemented) {
            return;
        }
        pp1 pp1VarA = this.b.a(o8Var, this.a);
        this.c.getClass();
        pp1 pp1VarA2 = qp1.a(pp1VarA, f7.b(adQualityVerificationResult));
        op1.b bVar = op1.b.a0;
        Map<String, Object> mapB = pp1VarA2.b();
        op1 op1Var = new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(pp1VarA2, bVar, "reportType", mapB, "reportData"));
        this.a.q().f();
        nd.a(context, jn2.a, this.a.q().b()).a(op1Var);
    }

    public e7(o3 o3Var, w6 w6Var, f7 f7Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(w6Var, "adQualityAdapterReportDataProvider");
        y45.j(f7Var, "adQualityVerificationResultReportDataProvider");
        this.a = o3Var;
        this.b = w6Var;
        this.c = f7Var;
    }
}
