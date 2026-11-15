package defpackage;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.b;

public final class eb5 {
    public final Map a = new LinkedHashMap();

    public final JsonObject a() {
        return new JsonObject(this.a);
    }

    public final b b(String str, b bVar) {
        y45.j(str, "key");
        y45.j(bVar, "element");
        return (b) this.a.put(str, bVar);
    }
}
