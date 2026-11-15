package kotlinx.serialization.json.internal;

import java.util.ArrayList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

final class e0 extends AbstractJsonTreeEncoder {

    private final ArrayList f65330f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e0(kotlinx.serialization.json.a json, Function1 nodeConsumer) {
        super(json, nodeConsumer, null);
        Intrinsics.h(json, "json");
        Intrinsics.h(nodeConsumer, "nodeConsumer");
        this.f65330f = new ArrayList();
    }

    @Override
    protected String e0(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return String.valueOf(i10);
    }

    @Override
    public kotlinx.serialization.json.h v0() {
        return new kotlinx.serialization.json.b(this.f65330f);
    }

    @Override
    public void w0(String key, kotlinx.serialization.json.h element) {
        Intrinsics.h(key, "key");
        Intrinsics.h(element, "element");
        this.f65330f.add(Integer.parseInt(key), element);
    }
}
