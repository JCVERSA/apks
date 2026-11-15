package defpackage;

import com.google.android.gms.internal.ads.y3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class shf implements Iterable {
    public final List b = new ArrayList();

    public final y3 b(chf chfVar) {
        Iterator it = iterator();
        while (it.hasNext()) {
            y3 y3Var = (y3) it.next();
            if (y3Var.c == chfVar) {
                return y3Var;
            }
        }
        return null;
    }

    public final void c(y3 y3Var) {
        this.b.add(y3Var);
    }

    public final void f(y3 y3Var) {
        this.b.remove(y3Var);
    }

    public final boolean i(chf chfVar) {
        ArrayList arrayList = new ArrayList();
        Iterator it = iterator();
        while (it.hasNext()) {
            y3 y3Var = (y3) it.next();
            if (y3Var.c == chfVar) {
                arrayList.add(y3Var);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((y3) it2.next()).d.b();
        }
        return true;
    }

    @Override
    public final Iterator iterator() {
        return this.b.iterator();
    }
}
