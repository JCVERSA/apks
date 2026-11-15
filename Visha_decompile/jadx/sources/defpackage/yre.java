package defpackage;

import java.util.HashMap;

public final class yre extends upe {
    public Long b;
    public Boolean c;
    public Boolean d;

    public yre(String str) {
        HashMap mapA = upe.a(str);
        if (mapA != null) {
            this.b = (Long) mapA.get(0);
            this.c = (Boolean) mapA.get(1);
            this.d = (Boolean) mapA.get(2);
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
