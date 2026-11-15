package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.quality.base.AdQualityVerifierAdapter;
import com.monetization.ads.quality.base.model.configuration.AdQualityVerifierAdapterConfiguration;
import defpackage.y45;
import kotlin.Result;

public final class q7 {
    private final j7 a;
    private final k7 b;
    private final o7 c;

    public q7(int i) {
        this(new j7(), new k7(), new o7());
    }

    public final p7 a(Context context) {
        Object objM279constructorimpl;
        Object x6Var;
        y45.j(context, "context");
        try {
            Result.Companion companion = Result.INSTANCE;
            int i = pw1.l;
            ju1 ju1VarA = pw1.a.a().a(context);
            b7 b7VarF = ju1VarA != null ? ju1VarA.f() : null;
            if (b7VarF == null || !b7VarF.e()) {
                sp0.a(new Object[0]);
                x6Var = new x6();
            } else {
                this.b.getClass();
                AdQualityVerifierAdapterConfiguration adQualityVerifierAdapterConfigurationA = k7.a(b7VarF);
                this.a.getClass();
                AdQualityVerifierAdapter adQualityVerifierAdapterA = j7.a();
                if (adQualityVerifierAdapterA == null) {
                    sp0.a(new Object[0]);
                    x6Var = new x6();
                } else {
                    this.c.getClass();
                    d7 d7VarA = o7.a(b7VarF);
                    long verificationTimeoutInSec = 1 + adQualityVerifierAdapterConfigurationA.getVerificationTimeoutInSec();
                    n7 n7Var = new n7(d7VarA);
                    h7 h7Var = new h7(d7VarA);
                    sp0.a(new Object[0]);
                    x6Var = new y6(adQualityVerifierAdapterA, adQualityVerifierAdapterConfigurationA, verificationTimeoutInSec, n7Var, h7Var);
                }
            }
            objM279constructorimpl = Result.m279constructorimpl(x6Var);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null) {
            thM282exceptionOrNullimpl.getMessage();
            sp0.a(new Object[0]);
            objM279constructorimpl = new x6();
        }
        return (p7) objM279constructorimpl;
    }

    public q7(j7 j7Var, k7 k7Var, o7 o7Var) {
        y45.j(j7Var, "verifierAdapterCreator");
        y45.j(k7Var, "verifierAdapterConfigurationFactory");
        y45.j(o7Var, "adQualityVerifierVerificationPolicyFactory");
        this.a = j7Var;
        this.b = k7Var;
        this.c = o7Var;
    }
}
