package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

public final class h1 implements kotlinx.serialization.b {

    private final kotlinx.serialization.b f65179a;

    private final kotlinx.serialization.descriptors.f f65180b;

    public h1(kotlinx.serialization.b serializer) {
        Intrinsics.h(serializer, "serializer");
        this.f65179a = serializer;
        this.f65180b = new v1(serializer.getDescriptor());
    }

    @Override
    public Object deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return decoder.D() ? decoder.G(this.f65179a) : decoder.j();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && Intrinsics.c(Reflection.b(h1.class), Reflection.b(obj.getClass())) && Intrinsics.c(this.f65179a, ((h1) obj).f65179a);
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f65180b;
    }

    public int hashCode() {
        return this.f65179a.hashCode();
    }

    @Override
    public void serialize(sy.f encoder, Object obj) {
        Intrinsics.h(encoder, "encoder");
        if (obj == null) {
            encoder.o();
        } else {
            encoder.v();
            encoder.e(this.f65179a, obj);
        }
    }
}
