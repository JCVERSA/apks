package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;

final class d0 extends c {

    private final kotlinx.serialization.json.b f65327f;

    private final int f65328g;

    private int f65329h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(kotlinx.serialization.json.a json, kotlinx.serialization.json.b value) {
        super(json, value, null);
        Intrinsics.h(json, "json");
        Intrinsics.h(value, "value");
        this.f65327f = value;
        this.f65328g = v0().size();
        this.f65329h = -1;
    }

    @Override
    protected String c0(kotlinx.serialization.descriptors.f desc, int i10) {
        Intrinsics.h(desc, "desc");
        return String.valueOf(i10);
    }

    @Override
    protected kotlinx.serialization.json.h g0(String tag) {
        Intrinsics.h(tag, "tag");
        return v0().get(Integer.parseInt(tag));
    }

    @Override
    public int o(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        int i10 = this.f65329h;
        if (i10 >= this.f65328g - 1) {
            return -1;
        }
        int i11 = i10 + 1;
        this.f65329h = i11;
        return i11;
    }

    @Override
    public kotlinx.serialization.json.b v0() {
        return this.f65327f;
    }
}
