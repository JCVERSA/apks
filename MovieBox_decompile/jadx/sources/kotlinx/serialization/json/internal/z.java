package kotlinx.serialization.json.internal;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

final class z extends AbstractJsonTreeEncoder {

    private kotlinx.serialization.json.h f65382f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(kotlinx.serialization.json.a json, Function1 nodeConsumer) {
        super(json, nodeConsumer, null);
        Intrinsics.h(json, "json");
        Intrinsics.h(nodeConsumer, "nodeConsumer");
        c0("primitive");
    }

    @Override
    public kotlinx.serialization.json.h v0() {
        kotlinx.serialization.json.h hVar = this.f65382f;
        if (hVar != null) {
            return hVar;
        }
        throw new IllegalArgumentException("Primitive element has not been recorded. Is call to .encodeXxx is missing in serializer?");
    }

    @Override
    public void w0(String key, kotlinx.serialization.json.h element) {
        Intrinsics.h(key, "key");
        Intrinsics.h(element, "element");
        if (key != "primitive") {
            throw new IllegalArgumentException("This output can only consume primitives with 'primitive' tag");
        }
        if (this.f65382f != null) {
            throw new IllegalArgumentException("Primitive element was already recorded. Does call to .encodeXxx happen more than once?");
        }
        this.f65382f = element;
    }
}
