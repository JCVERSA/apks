package androidx.compose.runtime;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Unit;

public final class v2 {

    private final AtomicReference f3746a = new AtomicReference(androidx.compose.runtime.internal.g.a());

    private final Object f3747b = new Object();

    private Object f3748c;

    public final Object a() {
        long id2 = Thread.currentThread().getId();
        return id2 == ActualAndroid_androidKt.d() ? this.f3748c : ((androidx.compose.runtime.internal.f) this.f3746a.get()).b(id2);
    }

    public final void b(Object obj) {
        long id2 = Thread.currentThread().getId();
        if (id2 == ActualAndroid_androidKt.d()) {
            this.f3748c = obj;
            return;
        }
        synchronized (this.f3747b) {
            androidx.compose.runtime.internal.f fVar = (androidx.compose.runtime.internal.f) this.f3746a.get();
            if (fVar.d(id2, obj)) {
                return;
            }
            this.f3746a.set(fVar.c(id2, obj));
            Unit unit = Unit.f64096a;
        }
    }
}
