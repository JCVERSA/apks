package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.e74;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.Set;
import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.CancellableContinuationImpl;

public final class i91 {
    private final g5 a;
    private final bh b;
    private final ck0 c;
    private final kj0 d;
    private final hk0 e;
    private final e74 f;

    public i91(Context context, g5 g5Var) {
        this(context, g5Var, new bh(), new ck0(), new kj0(context), new hk0(), f91.b);
    }

    public final Object a(s41 s41Var, sj0 sj0Var, defpackage.wh1<? super zfb> wh1Var) {
        rj0 rj0Var = (rj0) this.f.invoke(sj0Var);
        hk0.a aVarA = this.e.a(s41Var);
        Set<xj0> setA = aVarA.a();
        Set<xj0> setB = aVarA.b();
        Set<xj0> setC = aVarA.c();
        rj0Var.a(setB);
        if (y45.e(s41Var.b().E(), c91.d.a())) {
            this.d.a(setC, new h91(sj0Var));
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        if (!setA.isEmpty()) {
            g5 g5Var = this.a;
            f5 f5Var = f5.q;
            bk.a(g5Var, f5Var, "adLoadingPhaseType", f5Var, null);
            this.d.a(setA, new g91(this, s41Var, sj0Var, cancellableContinuationImpl));
        } else if (cancellableContinuationImpl.isActive()) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(zfb.a));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            defpackage.pt1.c(wh1Var);
        }
        if (result != z45.f()) {
            result = zfb.a;
        }
        return result == z45.f() ? result : zfb.a;
    }

    public i91(Context context, g5 g5Var, bh bhVar, ck0 ck0Var, kj0 kj0Var, hk0 hk0Var, e74 e74Var) {
        y45.j(context, "context");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(bhVar, "assetsFilter");
        y45.j(ck0Var, "imageValuesFilter");
        y45.j(kj0Var, "imageLoadManager");
        y45.j(hk0Var, "imagesForPreloadingProvider");
        y45.j(e74Var, "previewPreloadingFactory");
        this.a = g5Var;
        this.b = bhVar;
        this.c = ck0Var;
        this.d = kj0Var;
        this.e = hk0Var;
        this.f = e74Var;
    }
}
