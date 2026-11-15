package defpackage;

import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public class l6a {
    public static volatile l6a b;
    public final CopyOnWriteArrayList a = new CopyOnWriteArrayList();

    public static l6a b() {
        if (b == null) {
            synchronized (l6a.class) {
                try {
                    if (b == null) {
                        b = new l6a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public void a(ew4 ew4Var) {
        if (ew4Var == null) {
            return;
        }
        for (int i = 0; i < this.a.size(); i++) {
            if (((WeakReference) this.a.get(i)).get() == ew4Var) {
                return;
            }
        }
        this.a.add(new WeakReference(ew4Var));
    }

    public void c(int i) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ew4 ew4Var = (ew4) ((WeakReference) it.next()).get();
            if (ew4Var != null) {
                ew4Var.a(i);
            }
        }
    }

    public void d(ew4 ew4Var) {
        if (ew4Var == null) {
            return;
        }
        for (int size = this.a.size() - 1; size >= 0; size--) {
            if (((WeakReference) this.a.get(size)).get() == ew4Var) {
                this.a.remove(size);
            }
        }
    }
}
