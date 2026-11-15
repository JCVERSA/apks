package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;

public final class Latch {

    private final Object f3304a = new Object();

    private List f3305b = new ArrayList();

    private List f3306c = new ArrayList();

    private boolean f3307d = true;

    public final Object c(Continuation continuation) {
        if (e()) {
            return Unit.f64096a;
        }
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        synchronized (this.f3304a) {
            this.f3305b.add(cancellableContinuationImpl);
        }
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.f64096a;
            }

            public final void invoke(Throwable th2) {
                Object obj = this.this$0.f3304a;
                Latch latch = this.this$0;
                kotlinx.coroutines.n nVar = cancellableContinuationImpl;
                synchronized (obj) {
                    latch.f3305b.remove(nVar);
                    Unit unit = Unit.f64096a;
                }
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result == IntrinsicsKt.f() ? result : Unit.f64096a;
    }

    public final void d() {
        synchronized (this.f3304a) {
            this.f3307d = false;
            Unit unit = Unit.f64096a;
        }
    }

    public final boolean e() {
        boolean z10;
        synchronized (this.f3304a) {
            z10 = this.f3307d;
        }
        return z10;
    }

    public final void f() {
        synchronized (this.f3304a) {
            try {
                if (e()) {
                    return;
                }
                List list = this.f3305b;
                this.f3305b = this.f3306c;
                this.f3306c = list;
                this.f3307d = true;
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Continuation continuation = (Continuation) list.get(i10);
                    Result.Companion companion = Result.INSTANCE;
                    continuation.resumeWith(Result.m453constructorimpl(Unit.f64096a));
                }
                list.clear();
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
