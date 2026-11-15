package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

public final class q1 extends y0 {

    private final String f65218c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q1(kotlinx.serialization.descriptors.f primitive) {
        super(primitive, null);
        Intrinsics.h(primitive, "primitive");
        this.f65218c = primitive.i() + "Array";
    }

    @Override
    public String i() {
        return this.f65218c;
    }
}
