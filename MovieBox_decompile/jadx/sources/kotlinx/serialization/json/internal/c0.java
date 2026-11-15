package kotlinx.serialization.json.internal;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonObject;

class c0 extends AbstractJsonTreeEncoder {

    private final Map f65326f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c0(kotlinx.serialization.json.a json, Function1 nodeConsumer) {
        super(json, nodeConsumer, null);
        Intrinsics.h(json, "json");
        Intrinsics.h(nodeConsumer, "nodeConsumer");
        this.f65326f = new LinkedHashMap();
    }

    @Override
    public void i(kotlinx.serialization.descriptors.f descriptor, int i10, kotlinx.serialization.g serializer, Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(serializer, "serializer");
        if (obj != null || this.f65301d.f()) {
            super.i(descriptor, i10, serializer, obj);
        }
    }

    @Override
    public kotlinx.serialization.json.h v0() {
        return new JsonObject(this.f65326f);
    }

    @Override
    public void w0(String key, kotlinx.serialization.json.h element) {
        Intrinsics.h(key, "key");
        Intrinsics.h(element, "element");
        this.f65326f.put(key, element);
    }

    protected final Map x0() {
        return this.f65326f;
    }
}
