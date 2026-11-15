package kotlinx.serialization.json;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.json.internal.JsonDecodingException;

public final class r implements kotlinx.serialization.b {

    public static final r f65388a = new r();

    private static final kotlinx.serialization.descriptors.f f65389b = SerialDescriptorsKt.d("kotlinx.serialization.json.JsonNull", kotlinx.serialization.descriptors.h.b.f65100a, new kotlinx.serialization.descriptors.f[0], null, 8, null);

    private r() {
    }

    @Override
    public JsonNull deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        k.g(decoder);
        if (decoder.D()) {
            throw new JsonDecodingException("Expected 'null' literal");
        }
        decoder.j();
        return JsonNull.f65257c;
    }

    @Override
    public void serialize(sy.f encoder, JsonNull value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        k.h(encoder);
        encoder.o();
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f65389b;
    }
}
