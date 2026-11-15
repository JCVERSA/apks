package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

public final class r implements kotlinx.serialization.b {

    public static final r f65221a = new r();

    private static final kotlinx.serialization.descriptors.f f65222b = new s1("kotlin.Char", kotlinx.serialization.descriptors.e.c.f65086a);

    private r() {
    }

    @Override
    public Character deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return Character.valueOf(decoder.x());
    }

    public void b(sy.f encoder, char c10) {
        Intrinsics.h(encoder, "encoder");
        encoder.u(c10);
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f65222b;
    }

    @Override
    public void serialize(sy.f fVar, Object obj) {
        b(fVar, ((Character) obj).charValue());
    }
}
