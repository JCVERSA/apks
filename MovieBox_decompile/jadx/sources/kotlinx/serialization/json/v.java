package kotlinx.serialization.json;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;

public final class v implements kotlinx.serialization.b {

    public static final v f65397a = new v();

    private static final kotlinx.serialization.descriptors.f f65398b = SerialDescriptorsKt.d("kotlinx.serialization.json.JsonPrimitive", kotlinx.serialization.descriptors.e.i.f65092a, new kotlinx.serialization.descriptors.f[0], null, 8, null);

    private v() {
    }

    @Override
    public u deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        h hVarG = k.d(decoder).g();
        if (hVarG instanceof u) {
            return (u) hVarG;
        }
        throw kotlinx.serialization.json.internal.w.f(-1, "Unexpected JSON element, expected JsonPrimitive, had " + Reflection.b(hVarG.getClass()), hVarG.toString());
    }

    @Override
    public void serialize(sy.f encoder, u value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        k.h(encoder);
        if (value instanceof JsonNull) {
            encoder.e(r.f65388a, JsonNull.f65257c);
        } else {
            encoder.e(p.f65386a, (o) value);
        }
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f65398b;
    }
}
