package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

public final class b1 implements kotlinx.serialization.b {

    public static final b1 f65141a = new b1();

    private static final kotlinx.serialization.descriptors.f f65142b = new s1("kotlin.Long", kotlinx.serialization.descriptors.e.g.f65090a);

    private b1() {
    }

    @Override
    public Long deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return Long.valueOf(decoder.l());
    }

    public void b(sy.f encoder, long j10) {
        Intrinsics.h(encoder, "encoder");
        encoder.m(j10);
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f65142b;
    }

    @Override
    public void serialize(sy.f fVar, Object obj) {
        b(fVar, ((Number) obj).longValue());
    }
}
