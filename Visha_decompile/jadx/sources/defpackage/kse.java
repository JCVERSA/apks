package defpackage;

import java.util.HashMap;

public final class kse extends upe {
    public Long b;
    public Long c;
    public Long d;
    public Long e;
    public Long f;

    public kse(String str) {
        HashMap mapA = upe.a(str);
        if (mapA != null) {
            this.b = (Long) mapA.get(0);
            this.c = (Long) mapA.get(1);
            this.d = (Long) mapA.get(2);
            this.e = (Long) mapA.get(3);
            this.f = (Long) mapA.get(4);
        }
    }

    @Override
    public final HashMap b() {
        HashMap map = new HashMap();
        map.put(0, this.b);
        map.put(1, this.c);
        map.put(2, this.d);
        map.put(3, this.e);
        map.put(4, this.f);
        return map;
    }
}
