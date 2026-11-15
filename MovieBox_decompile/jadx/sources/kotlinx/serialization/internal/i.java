package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

public final class i implements kotlinx.serialization.b {

    public static final i f65183a = new i();

    private static final kotlinx.serialization.descriptors.f f65184b = new s1("kotlin.Boolean", kotlinx.serialization.descriptors.e.a.f65084a);

    private i() {
    }

    @Override
    public Boolean deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return Boolean.valueOf(decoder.w());
    }

    public void b(sy.f encoder, boolean z10) {
        Intrinsics.h(encoder, "encoder");
        encoder.r(z10);
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f65184b;
    }

    @Override
    public void serialize(sy.f fVar, Object obj) {
        b(fVar, ((Boolean) obj).booleanValue());
    }
}
