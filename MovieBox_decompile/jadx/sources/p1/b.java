package p1;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b extends a {
    /* JADX WARN: Multi-variable type inference failed */
    public b() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override
    public Object a(a.b key) {
        Intrinsics.h(key, "key");
        return b().get(key);
    }

    public final void c(a.b key, Object obj) {
        Intrinsics.h(key, "key");
        b().put(key, obj);
    }

    public b(a initialExtras) {
        Intrinsics.h(initialExtras, "initialExtras");
        b().putAll(initialExtras.b());
    }

    public b(a aVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? a.C0848a.f68963b : aVar);
    }
}
