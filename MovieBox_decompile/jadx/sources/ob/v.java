package ob;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

class v implements kc.b {

    private volatile Set f67793b = null;

    private volatile Set f67792a = Collections.newSetFromMap(new ConcurrentHashMap());

    v(Collection collection) {
        this.f67792a.addAll(collection);
    }

    static v b(Collection collection) {
        return new v((Set) collection);
    }

    private synchronized void d() {
        try {
            Iterator it = this.f67792a.iterator();
            while (it.hasNext()) {
                this.f67793b.add(((kc.b) it.next()).get());
            }
            this.f67792a = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    synchronized void a(kc.b bVar) {
        try {
            if (this.f67793b == null) {
                this.f67792a.add(bVar);
            } else {
                this.f67793b.add(bVar.get());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public Set get() {
        if (this.f67793b == null) {
            synchronized (this) {
                try {
                    if (this.f67793b == null) {
                        this.f67793b = Collections.newSetFromMap(new ConcurrentHashMap());
                        d();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Collections.unmodifiableSet(this.f67793b);
    }
}
