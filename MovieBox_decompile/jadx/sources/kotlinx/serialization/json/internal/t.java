package kotlinx.serialization.json.internal;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class t {
    public static final Map a(int i10) {
        return new ConcurrentHashMap(i10);
    }
}
