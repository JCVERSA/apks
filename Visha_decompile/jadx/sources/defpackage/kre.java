package defpackage;

import java.util.HashMap;

public final class kre extends upe {
    public Long b;
    public Long c;
    public Long d;

    public kre(String str) {
        HashMap mapA = upe.a(str);
        if (mapA != null) {
            this.b = (Long) mapA.get(0);
            this.c = (Long) mapA.get(1);
            this.d = (Long) mapA.get(2);
        }
    }

    @Override
    public final HashMap b() {
        HashMap map = new HashMap();
        map.put(0, this.b);
        map.put(1, this.c);
        map.put(2, this.d);
        return map;
    }
}
