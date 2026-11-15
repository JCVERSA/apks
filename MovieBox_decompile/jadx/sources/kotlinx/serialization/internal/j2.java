package kotlinx.serialization.internal;

import kotlin.UInt;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;

public final class j2 implements kotlinx.serialization.b {

    public static final j2 f65189a = new j2();

    private static final kotlinx.serialization.descriptors.f f65190b = o0.a("kotlin.UInt", ry.a.D(IntCompanionObject.f64317a));

    private j2() {
    }

    public int a(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return UInt.b(decoder.q(getDescriptor()).h());
    }

    public void b(sy.f encoder, int i10) {
        Intrinsics.h(encoder, "encoder");
        encoder.l(getDescriptor()).B(i10);
    }

    @Override
    public Object deserialize(sy.e eVar) {
        return UInt.a(a(eVar));
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f65190b;
    }

    @Override
    public void serialize(sy.f fVar, Object obj) {
        b(fVar, ((UInt) obj).getData());
    }
}
