package defpackage;

import java.util.HashMap;

public final class ore extends upe {
    public long b;
    public long c;

    public ore(String str) {
        this.b = -1L;
        this.c = -1L;
        HashMap mapA = upe.a(str);
        if (mapA != null) {
            this.b = ((Long) mapA.get(0)).longValue();
            this.c = ((Long) mapA.get(1)).longValue();
        }
    }

    @Override
    public final HashMap b() {
        HashMap map = new HashMap();
        map.put(0, Long.valueOf(this.b));
        map.put(1, Long.valueOf(this.c));
        return map;
    }
}
