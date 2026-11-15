package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

public final class c0 implements kotlinx.serialization.b {

    public static final c0 f65145a = new c0();

    private static final kotlinx.serialization.descriptors.f f65146b = new s1("kotlin.Double", kotlinx.serialization.descriptors.e.d.f65087a);

    private c0() {
    }

    @Override
    public Double deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return Double.valueOf(decoder.v());
    }

    public void b(sy.f encoder, double d10) {
        Intrinsics.h(encoder, "encoder");
        encoder.g(d10);
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f65146b;
    }

    @Override
    public void serialize(sy.f fVar, Object obj) {
        b(fVar, ((Number) obj).doubleValue());
    }
}
