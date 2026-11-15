package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class ssi {
    public final Map a = new HashMap();
    public Map b;

    public final synchronized Map a() {
        try {
            if (this.b == null) {
                this.b = Collections.unmodifiableMap(new HashMap(this.a));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.b;
    }
}
