package kotlinx.serialization.json.internal;

import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonObject;

final class g0 extends c0 {

    private String f65335g;

    private boolean f65336h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(kotlinx.serialization.json.a json, Function1 nodeConsumer) {
        super(json, nodeConsumer);
        Intrinsics.h(json, "json");
        Intrinsics.h(nodeConsumer, "nodeConsumer");
        this.f65336h = true;
    }

    @Override
    public kotlinx.serialization.json.h v0() {
        return new JsonObject(x0());
    }

    @Override
    public void w0(String key, kotlinx.serialization.json.h element) {
        Intrinsics.h(key, "key");
        Intrinsics.h(element, "element");
        if (!this.f65336h) {
            Map mapX0 = x0();
            String str = this.f65335g;
            if (str == null) {
                Intrinsics.y("tag");
                str = null;
            }
            mapX0.put(str, element);
            this.f65336h = true;
            return;
        }
        if (element instanceof kotlinx.serialization.json.u) {
            this.f65335g = ((kotlinx.serialization.json.u) element).a();
            this.f65336h = false;
        } else {
            if (element instanceof JsonObject) {
                throw w.d(kotlinx.serialization.json.t.f65391a.getDescriptor());
            }
            if (!(element instanceof kotlinx.serialization.json.b)) {
                throw new NoWhenBranchMatchedException();
            }
            throw w.d(kotlinx.serialization.json.c.f65268a.getDescriptor());
        }
    }
}
