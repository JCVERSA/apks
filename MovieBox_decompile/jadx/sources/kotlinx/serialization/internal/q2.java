package kotlinx.serialization.internal;

import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class q2 implements kotlinx.serialization.b {

    public static final q2 f65219b = new q2();

    private final ObjectSerializer f65220a = new ObjectSerializer("kotlin.Unit", Unit.f64096a);

    private q2() {
    }

    public void a(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        this.f65220a.deserialize(decoder);
    }

    @Override
    public void serialize(sy.f encoder, Unit value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        this.f65220a.serialize(encoder, value);
    }

    @Override
    public Object deserialize(sy.e eVar) {
        a(eVar);
        return Unit.f64096a;
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f65220a.getDescriptor();
    }
}
