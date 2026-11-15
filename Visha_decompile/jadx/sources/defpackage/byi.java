package defpackage;

import java.util.Collections;
import java.util.Map;

public abstract class byi implements fyi {
    public final Map a;

    public byi(Map map) {
        this.a = Collections.unmodifiableMap(map);
    }

    public final Map a() {
        return this.a;
    }
}
