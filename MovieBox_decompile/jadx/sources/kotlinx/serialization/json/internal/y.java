package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;

final class y extends c {

    private final kotlinx.serialization.json.u f65381f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(kotlinx.serialization.json.a json, kotlinx.serialization.json.u value) {
        super(json, value, null);
        Intrinsics.h(json, "json");
        Intrinsics.h(value, "value");
        this.f65381f = value;
        Z("primitive");
    }

    @Override
    protected kotlinx.serialization.json.h g0(String tag) {
        Intrinsics.h(tag, "tag");
        if (tag == "primitive") {
            return v0();
        }
        throw new IllegalArgumentException("This input can only handle primitives with 'primitive' tag");
    }

    @Override
    public int o(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return 0;
    }

    @Override
    public kotlinx.serialization.json.u v0() {
        return this.f65381f;
    }
}
