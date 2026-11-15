package defpackage;

import java.util.Collections;
import java.util.HashMap;

public final class vhi {
    public HashMap a = new HashMap();

    public final xhi a() {
        if (this.a == null) {
            throw new IllegalStateException("cannot call build() twice");
        }
        xhi xhiVar = new xhi(Collections.unmodifiableMap(this.a), null);
        this.a = null;
        return xhiVar;
    }
}
