package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;
import java.util.Objects;
import kotlin.Result;
import kotlinx.coroutines.CancellableContinuationImpl;

public final class ae2 implements dq1<List<? extends mb2>> {
    final defpackage.cr0 a;

    public ae2(CancellableContinuationImpl cancellableContinuationImpl) {
        this.a = cancellableContinuationImpl;
    }

    @Override
    public final void a(sb2 sb2Var) {
        y45.j(sb2Var, "error");
        Objects.toString(sb2Var);
        sp0.b(new Object[0]);
        if (this.a.isActive()) {
            defpackage.cr0 cr0Var = this.a;
            Result.Companion companion = Result.INSTANCE;
            cr0Var.resumeWith(Result.m279constructorimpl(new zd2.a(sb2Var)));
        }
    }

    @Override
    public final void a(List<? extends mb2> list) {
        List<? extends mb2> list2 = list;
        y45.j(list2, "result");
        if (this.a.isActive()) {
            defpackage.cr0 cr0Var = this.a;
            Result.Companion companion = Result.INSTANCE;
            cr0Var.resumeWith(Result.m279constructorimpl(new zd2.b(list2)));
        }
    }
}
