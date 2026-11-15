package defpackage;

import freemarker.ext.beans.b;
import freemarker.ext.beans.c;
import freemarker.ext.beans.d;
import freemarker.template.Version;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class yw0 implements Cloneable {
    public static final Map f = new HashMap();
    public static final ReferenceQueue g = new ReferenceQueue();
    public final boolean b;
    public int c = 1;
    public boolean d;
    public d e;

    public yw0(Version version) {
        this.b = b.A(version);
    }

    public static void h() {
        while (true) {
            Reference referencePoll = g.poll();
            if (referencePoll == null) {
                return;
            }
            Map map = f;
            synchronized (map) {
                try {
                    Iterator it = map.values().iterator();
                    while (it.hasNext()) {
                        if (it.next() == referencePoll) {
                            it.remove();
                            break;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public c a() {
        c cVar;
        if (this.e != null) {
            return new c(this, new Object(), true, false);
        }
        Map map = f;
        synchronized (map) {
            try {
                Reference reference = (Reference) map.get(this);
                cVar = reference != null ? (c) reference.get() : null;
                if (cVar == null) {
                    yw0 yw0Var = (yw0) clone();
                    cVar = new c(yw0Var, new Object(), true, true);
                    map.put(yw0Var, new WeakReference(cVar, g));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        h();
        return cVar;
    }

    public boolean c() {
        return this.d;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException("Failed to clone ClassIntrospectorBuilder", e);
        }
    }

    public int d() {
        return this.c;
    }

    public d e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || yw0.class != obj.getClass()) {
            return false;
        }
        yw0 yw0Var = (yw0) obj;
        return this.b == yw0Var.b && this.d == yw0Var.d && this.c == yw0Var.c && this.e == yw0Var.e;
    }

    public lo6 f() {
        return null;
    }

    public boolean g() {
        return this.b;
    }

    public int hashCode() {
        return (((((((((this.b ? 1231 : 1237) + 31) * 31) + (this.d ? 1231 : 1237)) * 31) + this.c) * 31) + System.identityHashCode(this.e)) * 31) + System.identityHashCode(null);
    }

    public void i(d dVar) {
        this.e = dVar;
    }
}
