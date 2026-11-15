package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

public final class cvh {
    public static final cvh c = new cvh();
    public final ArrayList a = new ArrayList();
    public final ArrayList b = new ArrayList();

    public static cvh a() {
        return c;
    }

    public final Collection b() {
        return Collections.unmodifiableCollection(this.b);
    }

    public final Collection c() {
        return Collections.unmodifiableCollection(this.a);
    }

    public final void d(suh suhVar) {
        this.a.add(suhVar);
    }

    public final void e(suh suhVar) {
        ArrayList arrayList = this.a;
        boolean zG = g();
        arrayList.remove(suhVar);
        this.b.remove(suhVar);
        if (!zG || g()) {
            return;
        }
        ivh.b().f();
    }

    public final void f(suh suhVar) {
        ArrayList arrayList = this.b;
        boolean zG = g();
        arrayList.add(suhVar);
        if (zG) {
            return;
        }
        ivh.b().e();
    }

    public final boolean g() {
        return this.b.size() > 0;
    }
}
