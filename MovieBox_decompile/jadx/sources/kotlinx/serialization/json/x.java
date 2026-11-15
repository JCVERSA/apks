package kotlinx.serialization.json;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.TreeJsonEncoderKt;

public abstract class x implements kotlinx.serialization.b {
    private final kotlinx.serialization.b tSerializer;

    public x(kotlinx.serialization.b tSerializer) {
        Intrinsics.h(tSerializer, "tSerializer");
        this.tSerializer = tSerializer;
    }

    @Override
    public final Object deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        g gVarD = k.d(decoder);
        return gVarD.d().d(this.tSerializer, transformDeserialize(gVarD.g()));
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.tSerializer.getDescriptor();
    }

    @Override
    public final void serialize(sy.f encoder, Object value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        l lVarE = k.e(encoder);
        lVarE.A(transformSerialize(TreeJsonEncoderKt.c(lVarE.d(), value, this.tSerializer)));
    }

    protected abstract h transformDeserialize(h hVar);

    protected h transformSerialize(h element) {
        Intrinsics.h(element, "element");
        return element;
    }
}
