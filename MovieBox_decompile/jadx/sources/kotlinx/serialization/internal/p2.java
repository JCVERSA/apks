package kotlinx.serialization.internal;

import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.ShortCompanionObject;

public final class p2 implements kotlinx.serialization.b {

    public static final p2 f65214a = new p2();

    private static final kotlinx.serialization.descriptors.f f65215b = o0.a("kotlin.UShort", ry.a.F(ShortCompanionObject.f64323a));

    private p2() {
    }

    public short a(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return UShort.b(decoder.q(getDescriptor()).s());
    }

    public void b(sy.f encoder, short s10) {
        Intrinsics.h(encoder, "encoder");
        encoder.l(getDescriptor()).q(s10);
    }

    @Override
    public Object deserialize(sy.e eVar) {
        return UShort.a(a(eVar));
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f65215b;
    }

    @Override
    public void serialize(sy.f fVar, Object obj) {
        b(fVar, ((UShort) obj).getData());
    }
}
