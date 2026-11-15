package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.CancellableContinuationImpl;

public final class kc1 {
    private final g5 a;
    private final uw0 b;
    private final c31 c;

    public interface a {
        void a();
    }

    public static final class b implements c31.a {
        private final g5 a;
        private final a b;
        private final AtomicInteger c;

        public b(g5 g5Var, int i, c cVar) {
            y45.j(g5Var, "adLoadingPhasesManager");
            y45.j(cVar, "listener");
            this.a = g5Var;
            this.b = cVar;
            this.c = new AtomicInteger(i);
        }

        @Override
        public final void a() {
            if (this.c.decrementAndGet() == 0) {
                this.a.a(f5.s);
                this.b.a();
            }
        }
    }

    public static final class c implements a {
        final defpackage.cr0 a;

        public c(CancellableContinuationImpl cancellableContinuationImpl) {
            this.a = cancellableContinuationImpl;
        }

        @Override
        public final void a() {
            defpackage.cr0 cr0Var = this.a;
            Result.Companion companion = Result.INSTANCE;
            cr0Var.resumeWith(Result.m279constructorimpl(zfb.a));
        }
    }

    public kc1(g5 g5Var) {
        y45.j(g5Var, "adLoadingPhasesManager");
        this.a = g5Var;
        this.b = new uw0();
        this.c = new c31();
    }

    public final Object a(Context context, s41 s41Var, defpackage.wh1<? super zfb> wh1Var) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        Set<wu0> setA = this.b.a(s41Var);
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        int iD = ju1VarA != null ? ju1VarA.D() : 0;
        if (!oa.a(context) || iD == 0 || setA.isEmpty()) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(zfb.a));
        } else {
            b bVar = new b(this.a, setA.size(), new c(cancellableContinuationImpl));
            g5 g5Var = this.a;
            f5 f5Var = f5.s;
            bk.a(g5Var, f5Var, "adLoadingPhaseType", f5Var, null);
            Iterator<wu0> it = setA.iterator();
            while (it.hasNext()) {
                this.c.a(context, it.next(), bVar);
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            defpackage.pt1.c(wh1Var);
        }
        return result == z45.f() ? result : zfb.a;
    }
}
