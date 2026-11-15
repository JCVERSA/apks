package defpackage;

import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public class sq3 {
    public static volatile sq3 b;
    public CopyOnWriteArrayList a = new CopyOnWriteArrayList();

    public interface a {
        void t(boolean z);
    }

    public static sq3 a() {
        if (b == null) {
            synchronized (sq3.class) {
                try {
                    if (b == null) {
                        b = new sq3();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public void b(a aVar) {
        if (aVar == null) {
            return;
        }
        for (int i = 0; i < this.a.size(); i++) {
            if (((WeakReference) this.a.get(i)).get() == aVar) {
                return;
            }
        }
        this.a.add(new WeakReference(aVar));
    }

    public void c(a aVar) {
        if (aVar == null) {
            return;
        }
        for (int size = this.a.size() - 1; size >= 0; size--) {
            if (((WeakReference) this.a.get(size)).get() == aVar) {
                this.a.remove(size);
            }
        }
    }

    public void d(boolean z) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            a aVar = (a) ((WeakReference) it.next()).get();
            if (aVar != null) {
                aVar.t(z);
            }
        }
    }
}
