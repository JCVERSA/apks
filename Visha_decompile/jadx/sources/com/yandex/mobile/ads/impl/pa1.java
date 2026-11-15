package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.CancellableContinuationImpl;

public final class pa1 {
    private final bb2 a;
    private final oa1 b;

    public static final class a implements cb2 {
        final defpackage.cr0 a;

        public a(CancellableContinuationImpl cancellableContinuationImpl) {
            this.a = cancellableContinuationImpl;
        }

        @Override
        public final void a() {
            defpackage.cr0 cr0Var = this.a;
            Result.Companion companion = Result.INSTANCE;
            cr0Var.resumeWith(Result.m279constructorimpl(zfb.a));
        }
    }

    public pa1(Context context, db2 db2Var) {
        this(context, db2Var, db2Var.a(context), new oa1());
    }

    public final void a() {
        bb2 bb2Var = this.a;
        if (bb2Var != null) {
            bb2Var.a();
        }
    }

    public final Object a(s41 s41Var, defpackage.wh1<? super zfb> wh1Var) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        if (this.a == null || !this.b.a(s41Var)) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(zfb.a));
        } else {
            this.a.a(new a(cancellableContinuationImpl));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            defpackage.pt1.c(wh1Var);
        }
        return result == z45.f() ? result : zfb.a;
    }

    public pa1(Context context, db2 db2Var, bb2 bb2Var, oa1 oa1Var) {
        y45.j(context, "context");
        y45.j(db2Var, "verificationResourcesLoaderProvider");
        y45.j(oa1Var, "verificationPresenceValidator");
        this.a = bb2Var;
        this.b = oa1Var;
    }
}
