package defpackage;

import java.util.Collections;
import java.util.Map;

public final class esi {
    public static volatile esi b;
    public static final esi c = new esi(true);
    public final Map a = Collections.emptyMap();

    public esi(boolean z) {
    }

    public static esi a() {
        xti xtiVar = xti.c;
        return c;
    }

    public static esi b() {
        esi esiVar = b;
        if (esiVar != null) {
            return esiVar;
        }
        synchronized (esi.class) {
            try {
                esi esiVar2 = b;
                if (esiVar2 != null) {
                    return esiVar2;
                }
                xti xtiVar = xti.c;
                esi esiVarA = jsi.a(esi.class);
                b = esiVarA;
                return esiVarA;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final nsi c(rti rtiVar, int i) {
        ubc.a(this.a.get(new dsi(rtiVar, i)));
        return null;
    }
}
