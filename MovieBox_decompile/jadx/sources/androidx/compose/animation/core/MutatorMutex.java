package androidx.compose.animation.core;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.t1;

public final class MutatorMutex {

    private final AtomicReference f2077a = new AtomicReference(null);

    private final kotlinx.coroutines.sync.a f2078b = kotlinx.coroutines.sync.g.b(false, 1, null);

    static final class a {

        private final MutatePriority f2079a;

        private final t1 f2080b;

        public a(MutatePriority mutatePriority, t1 t1Var) {
            this.f2079a = mutatePriority;
            this.f2080b = t1Var;
        }

        public final boolean a(a aVar) {
            return this.f2079a.compareTo(aVar.f2079a) >= 0;
        }

        public final void b() {
            this.f2080b.cancel(new MutationInterruptedException());
        }
    }

    public static Object e(MutatorMutex mutatorMutex, MutatePriority mutatePriority, Function1 function1, Continuation continuation, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return mutatorMutex.d(mutatePriority, function1, continuation);
    }

    public final void f(a aVar) {
        a aVar2;
        do {
            aVar2 = (a) this.f2077a.get();
            if (aVar2 != null && !aVar.a(aVar2)) {
                throw new CancellationException("Current mutation had a higher priority");
            }
        } while (!j0.a(this.f2077a, aVar2, aVar));
        if (aVar2 != null) {
            aVar2.b();
        }
    }

    public final Object d(MutatePriority mutatePriority, Function1 function1, Continuation continuation) {
        return kotlinx.coroutines.o0.e(new MutatorMutex$mutate$2(mutatePriority, this, function1, null), continuation);
    }
}
