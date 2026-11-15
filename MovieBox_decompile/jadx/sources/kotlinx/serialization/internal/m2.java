package kotlinx.serialization.internal;

import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;

public final class m2 implements kotlinx.serialization.b {

    public static final m2 f65201a = new m2();

    private static final kotlinx.serialization.descriptors.f f65202b = o0.a("kotlin.ULong", ry.a.E(LongCompanionObject.f64318a));

    private m2() {
    }

    public long a(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return ULong.b(decoder.q(getDescriptor()).l());
    }

    public void b(sy.f encoder, long j10) {
        Intrinsics.h(encoder, "encoder");
        encoder.l(getDescriptor()).m(j10);
    }

    @Override
    public Object deserialize(sy.e eVar) {
        return ULong.a(a(eVar));
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f65202b;
    }

    @Override
    public void serialize(sy.f fVar, Object obj) {
        b(fVar, ((ULong) obj).getData());
    }
}
