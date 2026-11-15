package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;

public final class JsonElementMarker {

    private final kotlinx.serialization.internal.e0 f65306a;

    private boolean f65307b;

    public JsonElementMarker(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        this.f65306a = new kotlinx.serialization.internal.e0(descriptor, new JsonElementMarker$origin$1(this));
    }

    public final boolean e(kotlinx.serialization.descriptors.f fVar, int i10) {
        boolean z10 = !fVar.j(i10) && fVar.h(i10).b();
        this.f65307b = z10;
        return z10;
    }

    public final boolean b() {
        return this.f65307b;
    }

    public final void c(int i10) {
        this.f65306a.a(i10);
    }

    public final int d() {
        return this.f65306a.d();
    }
}
