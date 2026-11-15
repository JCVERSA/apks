package kotlinx.serialization.json.internal;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonObject;

final class f0 extends JsonTreeDecoder {

    private final JsonObject f65331k;

    private final List f65332l;

    private final int f65333m;

    private int f65334n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f0(kotlinx.serialization.json.a json, JsonObject value) {
        super(json, value, null, null, 12, null);
        Intrinsics.h(json, "json");
        Intrinsics.h(value, "value");
        this.f65331k = value;
        List listR0 = CollectionsKt.R0(v0().keySet());
        this.f65332l = listR0;
        this.f65333m = listR0.size() * 2;
        this.f65334n = -1;
    }

    @Override
    public void c(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
    }

    @Override
    protected String c0(kotlinx.serialization.descriptors.f desc, int i10) {
        Intrinsics.h(desc, "desc");
        return (String) this.f65332l.get(i10 / 2);
    }

    @Override
    protected kotlinx.serialization.json.h g0(String tag) {
        Intrinsics.h(tag, "tag");
        return this.f65334n % 2 == 0 ? kotlinx.serialization.json.j.c(tag) : (kotlinx.serialization.json.h) MapsKt.i(v0(), tag);
    }

    @Override
    public int o(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        int i10 = this.f65334n;
        if (i10 >= this.f65333m - 1) {
            return -1;
        }
        int i11 = i10 + 1;
        this.f65334n = i11;
        return i11;
    }

    @Override
    public JsonObject v0() {
        return this.f65331k;
    }
}
