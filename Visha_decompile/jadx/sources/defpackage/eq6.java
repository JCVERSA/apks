package defpackage;

import freemarker.ext.util.IdentityHashMap;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.Map;

public abstract class eq6 {
    public boolean a = false;
    public Map b = null;
    public ReferenceQueue c = null;

    public static final class a extends SoftReference {
        public Object a;

        public a(zfa zfaVar, Object obj, ReferenceQueue referenceQueue) {
            super(zfaVar, referenceQueue);
            this.a = obj;
        }

        public zfa a() {
            return (zfa) get();
        }
    }

    public void a() {
        Map map = this.b;
        if (map != null) {
            synchronized (map) {
                this.b.clear();
            }
        }
    }

    public abstract zfa b(Object obj);

    public zfa c(Object obj) {
        if (obj instanceof zfa) {
            return (zfa) obj;
        }
        if (obj instanceof aga) {
            return ((aga) obj).b();
        }
        if (!this.a || !d(obj)) {
            return b(obj);
        }
        zfa zfaVarE = e(obj);
        if (zfaVarE != null) {
            return zfaVarE;
        }
        zfa zfaVarB = b(obj);
        f(zfaVarB, obj);
        return zfaVarB;
    }

    public abstract boolean d(Object obj);

    public final zfa e(Object obj) {
        a aVar;
        synchronized (this.b) {
            aVar = (a) this.b.get(obj);
        }
        if (aVar != null) {
            return aVar.a();
        }
        return null;
    }

    public final void f(zfa zfaVar, Object obj) {
        synchronized (this.b) {
            while (true) {
                try {
                    a aVar = (a) this.c.poll();
                    if (aVar == null) {
                        this.b.put(obj, new a(zfaVar, obj, this.c));
                    } else {
                        this.b.remove(aVar.a);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public synchronized void g(boolean z) {
        try {
            this.a = z;
            if (z) {
                this.b = new IdentityHashMap();
                this.c = new ReferenceQueue();
            } else {
                this.b = null;
                this.c = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
