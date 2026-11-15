package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class wgi {
    public final Map a = new HashMap();
    public final Map b = new HashMap();

    public wgi(xgi xgiVar) {
    }

    public final wgi a(Enum r2, Object obj) {
        this.a.put(r2, obj);
        this.b.put(obj, r2);
        return this;
    }

    public final ygi b() {
        return new ygi(Collections.unmodifiableMap(this.a), Collections.unmodifiableMap(this.b), null);
    }
}
