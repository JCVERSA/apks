package defpackage;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.flow.StateFlowImpl;

public final class ix9 extends z3 {
    public final AtomicReference a = new AtomicReference(null);

    @Override
    public boolean a(StateFlowImpl stateFlowImpl) {
        if (ke1.a(this.a) != null) {
            return false;
        }
        ke1.b(this.a, hx9.a);
        return true;
    }

    public final Object e(wh1 wh1Var) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        if (!wk5.a(this.a, hx9.a, cancellableContinuationImpl)) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(zfb.a));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result == z45.f() ? result : zfb.a;
    }

    @Override
    public wh1[] b(StateFlowImpl stateFlowImpl) {
        ke1.b(this.a, null);
        return y3.a;
    }

    public final void g() {
        AtomicReference atomicReference = this.a;
        while (true) {
            Object objA = ke1.a(atomicReference);
            if (objA == null || objA == hx9.b) {
                return;
            }
            if (objA == hx9.a) {
                if (wk5.a(this.a, objA, hx9.b)) {
                    return;
                }
            } else if (wk5.a(this.a, objA, hx9.a)) {
                Result.Companion companion = Result.INSTANCE;
                ((CancellableContinuationImpl) objA).resumeWith(Result.m279constructorimpl(zfb.a));
                return;
            }
        }
    }

    public final boolean h() {
        Object andSet = this.a.getAndSet(hx9.a);
        y45.g(andSet);
        return andSet == hx9.b;
    }
}
