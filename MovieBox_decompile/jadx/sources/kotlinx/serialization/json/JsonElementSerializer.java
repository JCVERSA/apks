package kotlinx.serialization.json;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;

public final class JsonElementSerializer implements kotlinx.serialization.b {

    public static final JsonElementSerializer f65255a = new JsonElementSerializer();

    private static final kotlinx.serialization.descriptors.f f65256b = SerialDescriptorsKt.c("kotlinx.serialization.json.JsonElement", kotlinx.serialization.descriptors.d.b.f65083a, new kotlinx.serialization.descriptors.f[0], new Function1<kotlinx.serialization.descriptors.a, Unit>() {
        @Override
        public Object invoke(Object obj) {
            invoke((kotlinx.serialization.descriptors.a) obj);
            return Unit.f64096a;
        }

        public final void invoke(kotlinx.serialization.descriptors.a buildSerialDescriptor) {
            Intrinsics.h(buildSerialDescriptor, "$this$buildSerialDescriptor");
            kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "JsonPrimitive", k.f(new Function0<kotlinx.serialization.descriptors.f>() {
                @Override
                public final kotlinx.serialization.descriptors.f invoke() {
                    return v.f65397a.getDescriptor();
                }
            }), null, false, 12, null);
            kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "JsonNull", k.f(new Function0<kotlinx.serialization.descriptors.f>() {
                @Override
                public final kotlinx.serialization.descriptors.f invoke() {
                    return r.f65388a.getDescriptor();
                }
            }), null, false, 12, null);
            kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "JsonLiteral", k.f(new Function0<kotlinx.serialization.descriptors.f>() {
                @Override
                public final kotlinx.serialization.descriptors.f invoke() {
                    return p.f65386a.getDescriptor();
                }
            }), null, false, 12, null);
            kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "JsonObject", k.f(new Function0<kotlinx.serialization.descriptors.f>() {
                @Override
                public final kotlinx.serialization.descriptors.f invoke() {
                    return t.f65391a.getDescriptor();
                }
            }), null, false, 12, null);
            kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "JsonArray", k.f(new Function0<kotlinx.serialization.descriptors.f>() {
                @Override
                public final kotlinx.serialization.descriptors.f invoke() {
                    return c.f65268a.getDescriptor();
                }
            }), null, false, 12, null);
        }
    });

    private JsonElementSerializer() {
    }

    @Override
    public h deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return k.d(decoder).g();
    }

    @Override
    public void serialize(sy.f encoder, h value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        k.h(encoder);
        if (value instanceof u) {
            encoder.e(v.f65397a, value);
        } else if (value instanceof JsonObject) {
            encoder.e(t.f65391a, value);
        } else if (value instanceof b) {
            encoder.e(c.f65268a, value);
        }
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f65256b;
    }
}
