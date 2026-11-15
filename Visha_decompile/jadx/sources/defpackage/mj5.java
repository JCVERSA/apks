package defpackage;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class mj5 implements pj8 {
    public volatile Set b = null;
    public volatile Set a = Collections.newSetFromMap(new ConcurrentHashMap());

    public mj5(Collection collection) {
        this.a.addAll(collection);
    }

    public static mj5 b(Collection collection) {
        return new mj5((Set) collection);
    }

    public synchronized void a(pj8 pj8Var) {
        try {
            if (this.b == null) {
                this.a.add(pj8Var);
            } else {
                this.b.add(pj8Var.get());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public Set get() {
        if (this.b == null) {
            synchronized (this) {
                try {
                    if (this.b == null) {
                        this.b = Collections.newSetFromMap(new ConcurrentHashMap());
                        d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return Collections.unmodifiableSet(this.b);
    }

    public final synchronized void d() {
        try {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                this.b.add(((pj8) it.next()).get());
            }
            this.a = null;
        } catch (Throwable th) {
            throw th;
        }
    }
}
