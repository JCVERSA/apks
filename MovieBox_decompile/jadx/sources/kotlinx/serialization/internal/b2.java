package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

public final class b2 implements kotlinx.serialization.b {

    public static final b2 f65143a = new b2();

    private static final kotlinx.serialization.descriptors.f f65144b = new s1("kotlin.String", kotlinx.serialization.descriptors.e.i.f65092a);

    private b2() {
    }

    @Override
    public String deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return decoder.z();
    }

    @Override
    public void serialize(sy.f encoder, String value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        encoder.G(value);
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f65144b;
    }
}
