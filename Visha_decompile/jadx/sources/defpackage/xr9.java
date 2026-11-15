package defpackage;

import freemarker.template.utility.UndeclaredThrowableException;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;

public class xr9 implements ee1, zp0 {
    public static final Method d = c();
    public static Class e;
    public final ReferenceQueue a;
    public final Map b;
    public final boolean c;

    public static final class a extends SoftReference {
        public final Object a;

        public a(Object obj, Object obj2, ReferenceQueue referenceQueue) {
            super(obj2, referenceQueue);
            this.a = obj;
        }

        public Object a() {
            return this.a;
        }
    }

    public xr9() {
        this(c0d.c());
    }

    public static Class b(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static Method c() throws Throwable {
        try {
            Class clsB = e;
            if (clsB == null) {
                clsB = b("java.lang.Object");
                e = clsB;
            }
            Class clsB2 = e;
            if (clsB2 == null) {
                clsB2 = b("java.lang.Object");
                e = clsB2;
            }
            return ConcurrentMap.class.getMethod("remove", clsB, clsB2);
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (NoSuchMethodException e2) {
            throw new UndeclaredThrowableException(e2);
        }
    }

    @Override
    public boolean a() {
        return this.c;
    }

    @Override
    public void clear() {
        this.b.clear();
        d();
    }

    public final void d() {
        while (true) {
            a aVar = (a) this.a.poll();
            if (aVar == null) {
                return;
            }
            Object objA = aVar.a();
            if (this.c) {
                try {
                    d.invoke(this.b, objA, aVar);
                } catch (IllegalAccessException e2) {
                    throw new UndeclaredThrowableException(e2);
                } catch (InvocationTargetException e3) {
                    throw new UndeclaredThrowableException(e3);
                }
            } else if (this.b.get(objA) == aVar) {
                this.b.remove(objA);
            }
        }
    }

    @Override
    public Object get(Object obj) {
        d();
        Reference reference = (Reference) this.b.get(obj);
        if (reference == null) {
            return null;
        }
        return reference.get();
    }

    @Override
    public void put(Object obj, Object obj2) {
        d();
        this.b.put(obj, new a(obj, obj2, this.a));
    }

    public xr9(Map map) {
        this.a = new ReferenceQueue();
        this.b = map;
        this.c = c0d.b(map);
    }
}
