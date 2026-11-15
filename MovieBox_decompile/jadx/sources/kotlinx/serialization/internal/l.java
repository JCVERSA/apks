package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

public final class l implements kotlinx.serialization.b {

    public static final l f65195a = new l();

    private static final kotlinx.serialization.descriptors.f f65196b = new s1("kotlin.Byte", kotlinx.serialization.descriptors.e.b.f65085a);

    private l() {
    }

    @Override
    public Byte deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return Byte.valueOf(decoder.H());
    }

    public void b(sy.f encoder, byte b10) {
        Intrinsics.h(encoder, "encoder");
        encoder.h(b10);
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f65196b;
    }

    @Override
    public void serialize(sy.f fVar, Object obj) {
        b(fVar, ((Number) obj).byteValue());
    }
}
