package defpackage;

import java.util.Map;

public final class o4f implements n3f {
    public final zog a;

    public o4f(zog zogVar) {
        wd8.m(zogVar, "The Inspector Manager must not be null");
        this.a = zogVar;
    }

    @Override
    public final void a(Object obj, Map map) {
        if (map == null || !map.containsKey("extras")) {
            return;
        }
        long j = Long.MAX_VALUE;
        if (map.containsKey("expires")) {
            try {
                j = Long.parseLong((String) map.get("expires"));
            } catch (NumberFormatException unused) {
            }
        }
        this.a.j((String) map.get("extras"), j);
    }
}
