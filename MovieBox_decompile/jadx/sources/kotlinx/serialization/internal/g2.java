package kotlinx.serialization.internal;

import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;

public final class g2 implements kotlinx.serialization.b {

    public static final g2 f65174a = new g2();

    private static final kotlinx.serialization.descriptors.f f65175b = o0.a("kotlin.UByte", ry.a.z(ByteCompanionObject.f64303a));

    private g2() {
    }

    public byte a(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return UByte.b(decoder.q(getDescriptor()).H());
    }

    public void b(sy.f encoder, byte b10) {
        Intrinsics.h(encoder, "encoder");
        encoder.l(getDescriptor()).h(b10);
    }

    @Override
    public Object deserialize(sy.e eVar) {
        return UByte.a(a(eVar));
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f65175b;
    }

    @Override
    public void serialize(sy.f fVar, Object obj) {
        b(fVar, ((UByte) obj).getData());
    }
}
