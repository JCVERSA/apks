package h1;

import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

final class c {

    private final ArrayList f61221a = new ArrayList();

    public final void a(b listener) {
        Intrinsics.h(listener, "listener");
        this.f61221a.add(listener);
    }

    public final void b() {
        for (int iN = CollectionsKt.n(this.f61221a); -1 < iN; iN--) {
            ((b) this.f61221a.get(iN)).onRelease();
        }
    }

    public final void c(b listener) {
        Intrinsics.h(listener, "listener");
        this.f61221a.remove(listener);
    }
}
