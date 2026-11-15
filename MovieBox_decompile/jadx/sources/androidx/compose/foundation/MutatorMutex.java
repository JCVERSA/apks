package androidx.compose.foundation;

import androidx.compose.animation.core.j0;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;

public final class MutatorMutex {

    private final AtomicReference f2300a = new AtomicReference(null);

    private final kotlinx.coroutines.sync.a f2301b = kotlinx.coroutines.sync.g.b(false, 1, null);

    static final class a {

        private final MutatePriority f2302a;

        private final t1 f2303b;

        public a(MutatePriority mutatePriority, t1 t1Var) {
            this.f2302a = mutatePriority;
            this.f2303b = t1Var;
        }

        public final boolean a(a aVar) {
            return this.f2302a.compareTo(aVar.f2302a) >= 0;
        }

        public final void b() {
            this.f2303b.cancel(new MutationInterruptedException());
        }
    }

    public final void e(a aVar) {
        a aVar2;
        do {
            aVar2 = (a) this.f2300a.get();
            if (aVar2 != null && !aVar.a(aVar2)) {
                throw new CancellationException("Current mutation had a higher priority");
            }
        } while (!j0.a(this.f2300a, aVar2, aVar));
        if (aVar2 != null) {
            aVar2.b();
        }
    }

    public final Object d(Object obj, MutatePriority mutatePriority, Function2 function2, Continuation continuation) {
        return o0.e(new MutatorMutex$mutateWith$2(mutatePriority, this, function2, obj, null), continuation);
    }
}
