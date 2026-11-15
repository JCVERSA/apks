package defpackage;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;

public class fs6 implements zp0 {
    public final a a;
    public final a b;
    public final Map c;
    public final ReferenceQueue d;
    public final int e;
    public final int f;
    public int g;
    public int h;

    public static class b extends SoftReference {
        public final Object a;

        public b(a aVar, ReferenceQueue referenceQueue) {
            super(aVar.c(), referenceQueue);
            this.a = aVar.a();
        }

        public Object a() {
            return this.a;
        }
    }

    public fs6(int i, int i2) {
        a aVar = new a();
        this.a = aVar;
        a aVar2 = new a();
        this.b = aVar2;
        aVar2.d(aVar);
        this.c = new HashMap();
        this.d = new ReferenceQueue();
        this.g = 0;
        this.h = 0;
        if (i < 0) {
            throw new IllegalArgumentException("strongSizeLimit < 0");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("softSizeLimit < 0");
        }
        this.e = i;
        this.f = i2;
    }

    public final void b(a aVar) {
        aVar.d(this.a);
        int i = this.g;
        if (i != this.e) {
            this.g = i + 1;
            return;
        }
        a aVarB = this.b.b();
        if (aVarB != this.a) {
            aVarB.g();
            if (this.f <= 0) {
                this.c.remove(aVarB.a());
                return;
            }
            aVarB.d(this.b);
            aVarB.f(new b(aVarB, this.d));
            int i2 = this.h;
            if (i2 != this.f) {
                this.h = i2 + 1;
                return;
            }
            a aVarB2 = this.a.b();
            aVarB2.g();
            this.c.remove(aVarB2.a());
        }
    }

    public final void c(a aVar, Object obj) {
        if (!f(aVar) || obj != null) {
            if (obj != null) {
                aVar.f(obj);
            }
            b(aVar);
            return;
        }
        b bVar = (b) aVar.c();
        Object obj2 = bVar.get();
        if (obj2 == null) {
            this.c.remove(bVar.a());
        } else {
            aVar.f(obj2);
            b(aVar);
        }
    }

    @Override
    public void clear() {
        this.a.e();
        this.b.d(this.a);
        this.c.clear();
        this.h = 0;
        this.g = 0;
        while (this.d.poll() != null) {
        }
    }

    public final void d() {
        while (true) {
            b bVar = (b) this.d.poll();
            if (bVar == null) {
                return;
            } else {
                e(bVar.a());
            }
        }
    }

    public final void e(Object obj) {
        a aVar = (a) this.c.remove(obj);
        if (aVar != null) {
            f(aVar);
        }
    }

    public final boolean f(a aVar) {
        aVar.g();
        if (aVar.c() instanceof b) {
            this.h--;
            return true;
        }
        this.g--;
        return false;
    }

    @Override
    public Object get(Object obj) {
        d();
        a aVar = (a) this.c.get(obj);
        if (aVar == null) {
            return null;
        }
        c(aVar, null);
        Object objC = aVar.c();
        return objC instanceof b ? ((b) objC).get() : objC;
    }

    @Override
    public void put(Object obj, Object obj2) {
        d();
        a aVar = (a) this.c.get(obj);
        if (aVar != null) {
            c(aVar, obj2);
            return;
        }
        a aVar2 = new a(obj, obj2);
        this.c.put(obj, aVar2);
        b(aVar2);
    }

    public static final class a {
        public a a;
        public a b;
        public final Object c;
        public Object d;

        public a() {
            e();
            this.d = null;
            this.c = null;
        }

        public Object a() {
            return this.c;
        }

        public a b() {
            return this.a;
        }

        public Object c() {
            return this.d;
        }

        public void d(a aVar) {
            this.b = aVar.b;
            aVar.b = this;
            this.a = aVar;
            this.b.a = this;
        }

        public void e() {
            this.b = this;
            this.a = this;
        }

        public void f(Object obj) {
            this.d = obj;
        }

        public void g() {
            a aVar = this.b;
            aVar.a = this.a;
            this.a.b = aVar;
            this.a = null;
            this.b = null;
        }

        public a(Object obj, Object obj2) {
            this.c = obj;
            this.d = obj2;
        }
    }
}
