package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

public final class r0 implements kotlinx.serialization.b {

    public static final r0 f65223a = new r0();

    private static final kotlinx.serialization.descriptors.f f65224b = new s1("kotlin.Int", kotlinx.serialization.descriptors.e.f.f65089a);

    private r0() {
    }

    @Override
    public Integer deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return Integer.valueOf(decoder.h());
    }

    public void b(sy.f encoder, int i10) {
        Intrinsics.h(encoder, "encoder");
        encoder.B(i10);
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f65224b;
    }

    @Override
    public void serialize(sy.f fVar, Object obj) {
        b(fVar, ((Number) obj).intValue());
    }
}
