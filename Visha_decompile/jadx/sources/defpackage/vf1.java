package defpackage;

import java.util.Map;

public final class vf1 implements cob {
    public final Map a;

    public vf1(Map map) {
        y45.j(map, "constants");
        this.a = map;
    }

    @Override
    public Object get(String str) {
        y45.j(str, "name");
        return this.a.get(str);
    }
}
