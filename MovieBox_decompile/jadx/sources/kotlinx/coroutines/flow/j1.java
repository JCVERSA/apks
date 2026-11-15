package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

final class j1 extends kotlinx.coroutines.flow.internal.c {

    private final AtomicReference f64851a = new AtomicReference(null);

    @Override
    public boolean a(StateFlowImpl stateFlowImpl) {
        if (kotlinx.coroutines.internal.c.a(this.f64851a) != null) {
            return false;
        }
        kotlinx.coroutines.internal.c.b(this.f64851a, i1.f64817a);
        return true;
    }

    public final Object e(Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        if (!androidx.compose.animation.core.j0.a(this.f64851a, i1.f64817a, cancellableContinuationImpl)) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m453constructorimpl(Unit.f64096a));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result == IntrinsicsKt.f() ? result : Unit.f64096a;
    }

    @Override
    public Continuation[] b(StateFlowImpl stateFlowImpl) {
        kotlinx.coroutines.internal.c.b(this.f64851a, null);
        return kotlinx.coroutines.flow.internal.b.f64838a;
    }

    public final void g() {
        AtomicReference atomicReference = this.f64851a;
        while (true) {
            Object objA = kotlinx.coroutines.internal.c.a(atomicReference);
            if (objA == null || objA == i1.f64818b) {
                return;
            }
            if (objA == i1.f64817a) {
                if (androidx.compose.animation.core.j0.a(this.f64851a, objA, i1.f64818b)) {
                    return;
                }
            } else if (androidx.compose.animation.core.j0.a(this.f64851a, objA, i1.f64817a)) {
                Result.Companion companion = Result.INSTANCE;
                ((CancellableContinuationImpl) objA).resumeWith(Result.m453constructorimpl(Unit.f64096a));
                return;
            }
        }
    }

    public final boolean h() {
        Object andSet = this.f64851a.getAndSet(i1.f64817a);
        Intrinsics.e(andSet);
        return andSet == i1.f64818b;
    }
}
