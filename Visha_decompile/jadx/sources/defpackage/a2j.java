package defpackage;

import java.util.Iterator;
import java.util.Map;

public final class a2j extends o2j {
    public a2j() {
        super(null);
    }

    @Override
    public final void a() {
        if (!l()) {
            if (c() > 0) {
                ((d2j) g(0)).a();
                throw null;
            }
            Iterator it = d().iterator();
            if (it.hasNext()) {
                ubc.a(((Map.Entry) it.next()).getKey());
                throw null;
            }
        }
        super.a();
    }
}
