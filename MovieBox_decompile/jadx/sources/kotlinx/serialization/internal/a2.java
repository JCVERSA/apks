package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

public final class a2 implements kotlinx.serialization.b {

    public static final a2 f65138a = new a2();

    private static final kotlinx.serialization.descriptors.f f65139b = new s1("kotlin.Short", kotlinx.serialization.descriptors.e.h.f65091a);

    private a2() {
    }

    @Override
    public Short deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return Short.valueOf(decoder.s());
    }

    public void b(sy.f encoder, short s10) {
        Intrinsics.h(encoder, "encoder");
        encoder.q(s10);
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f65139b;
    }

    @Override
    public void serialize(sy.f fVar, Object obj) {
        b(fVar, ((Number) obj).shortValue());
    }
}
