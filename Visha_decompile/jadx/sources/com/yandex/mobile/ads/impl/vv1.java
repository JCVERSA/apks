package com.yandex.mobile.ads.impl;

import defpackage.y45;
import kotlin.Result;
import kotlinx.coroutines.CancellableContinuationImpl;

public final class vv1 implements ov1.a {
    final defpackage.cr0 a;

    public vv1(CancellableContinuationImpl cancellableContinuationImpl) {
        this.a = cancellableContinuationImpl;
    }

    @Override
    public final void a(w3 w3Var) {
        y45.j(w3Var, "error");
        if (this.a.isActive()) {
            defpackage.cr0 cr0Var = this.a;
            Result.Companion companion = Result.INSTANCE;
            cr0Var.resumeWith(Result.m279constructorimpl(Boolean.FALSE));
        }
    }

    @Override
    public final void a(jc jcVar, o50 o50Var) {
        y45.j(jcVar, "advertisingConfiguration");
        y45.j(o50Var, "environmentConfiguration");
        if (this.a.isActive()) {
            defpackage.cr0 cr0Var = this.a;
            Result.Companion companion = Result.INSTANCE;
            cr0Var.resumeWith(Result.m279constructorimpl(Boolean.TRUE));
        }
    }
}
