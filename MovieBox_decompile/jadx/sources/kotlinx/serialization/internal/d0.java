package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

public final class d0 implements kotlinx.serialization.b {

    public static final d0 f65152a = new d0();

    private static final kotlinx.serialization.descriptors.f f65153b = new s1("kotlin.time.Duration", kotlinx.serialization.descriptors.e.i.f65092a);

    private d0() {
    }

    public long a(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return Duration.INSTANCE.d(decoder.z());
    }

    public void b(sy.f encoder, long j10) {
        Intrinsics.h(encoder, "encoder");
        encoder.G(Duration.H(j10));
    }

    @Override
    public Object deserialize(sy.e eVar) {
        return Duration.g(a(eVar));
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f65153b;
    }

    @Override
    public void serialize(sy.f fVar, Object obj) {
        b(fVar, ((Duration) obj).getRawValue());
    }
}
