package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

public final class h0 implements kotlinx.serialization.b {

    public static final h0 f65177a = new h0();

    private static final kotlinx.serialization.descriptors.f f65178b = new s1("kotlin.Float", kotlinx.serialization.descriptors.e.C0800e.f65088a);

    private h0() {
    }

    @Override
    public Float deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return Float.valueOf(decoder.t());
    }

    public void b(sy.f encoder, float f10) {
        Intrinsics.h(encoder, "encoder");
        encoder.t(f10);
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f65178b;
    }

    @Override
    public void serialize(sy.f fVar, Object obj) {
        b(fVar, ((Number) obj).floatValue());
    }
}
