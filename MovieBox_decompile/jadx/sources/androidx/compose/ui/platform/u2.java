package androidx.compose.ui.platform;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

public final class u2 {

    private final androidx.compose.runtime.collection.b f5556a = new androidx.compose.runtime.collection.b(new Reference[16], 0);

    private final ReferenceQueue f5557b = new ReferenceQueue();

    private final void a() {
        Reference referencePoll;
        do {
            referencePoll = this.f5557b.poll();
            if (referencePoll != null) {
                this.f5556a.t(referencePoll);
            }
        } while (referencePoll != null);
    }

    public final Object b() {
        a();
        while (this.f5556a.q()) {
            androidx.compose.runtime.collection.b bVar = this.f5556a;
            Object obj = ((Reference) bVar.v(bVar.n() - 1)).get();
            if (obj != null) {
                return obj;
            }
        }
        return null;
    }

    public final void c(Object obj) {
        a();
        this.f5556a.b(new WeakReference(obj, this.f5557b));
    }
}
