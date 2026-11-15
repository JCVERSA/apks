package defpackage;

import java.util.HashMap;
import java.util.Map;

public final class oye {
    public final Map a = new HashMap();
    public final qye b;

    public oye(qye qyeVar) {
        this.b = qyeVar;
    }

    public final qye a() {
        return this.b;
    }

    public final void b(String str, nye nyeVar) {
        this.a.put(str, nyeVar);
    }

    public final void c(String str, String str2, long j) {
        Map map = this.a;
        nye nyeVar = (nye) map.get(str2);
        String[] strArr = {str};
        if (nyeVar != null) {
            this.b.e(nyeVar, j, strArr);
        }
        map.put(str, new nye(j, null, null));
    }
}
