package defpackage;

import java.util.Iterator;
import java.util.Set;

public final class l5i extends p3i {
    public final Iterator d;
    public final Set e;
    public final Set f;

    public l5i(m5i m5iVar, Set set, Set set2) {
        this.e = set;
        this.f = set2;
        this.d = set.iterator();
    }

    @Override
    public final Object a() {
        Set set;
        Object next;
        do {
            Iterator it = this.d;
            if (!it.hasNext()) {
                b();
                return null;
            }
            set = this.f;
            next = it.next();
        } while (!set.contains(next));
        return next;
    }
}
