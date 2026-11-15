package kotlinx.serialization.json;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.PublishedApi;
import kotlin.jvm.internal.Intrinsics;

public final class s {

    private final Map f65390a = new LinkedHashMap();

    @PublishedApi
    public s() {
    }

    public final JsonObject a() {
        return new JsonObject(this.f65390a);
    }

    public final h b(String key, h element) {
        Intrinsics.h(key, "key");
        Intrinsics.h(element, "element");
        return (h) this.f65390a.put(key, element);
    }
}
