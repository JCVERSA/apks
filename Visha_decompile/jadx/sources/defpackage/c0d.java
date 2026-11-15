package defpackage;

import freemarker.core.BugException;
import freemarker.template.utility.UndeclaredThrowableException;
import java.lang.reflect.Constructor;
import java.util.Collections;
import java.util.Map;

public abstract class c0d {
    public static final Class a;
    public static final Class b;
    public static final Constructor c;
    public static final int d;
    public static Class e;

    static {
        Class clsD;
        Class clsA;
        Constructor constructor;
        int i;
        try {
            clsD = hx0.d("java.util.concurrent.ConcurrentMap");
        } catch (ClassNotFoundException unused) {
            clsD = null;
        }
        a = clsD;
        try {
            clsA = hx0.d("java.util.concurrent.ConcurrentHashMap");
            try {
                Class cls = Integer.TYPE;
                constructor = clsA.getConstructor(cls, Float.TYPE, cls);
                i = 3;
                b = clsA;
                c = constructor;
                d = i;
            } catch (Exception e2) {
                throw new RuntimeException("Failed to get ConcurrentHashMap constructor", e2);
            }
        } catch (ClassNotFoundException unused2) {
            clsA = e;
            if (clsA == null) {
                clsA = a("java.util.HashMap");
                e = clsA;
            }
            try {
                constructor = clsA.getConstructor(Integer.TYPE, Float.TYPE);
                i = 2;
            } catch (Exception e3) {
                throw new RuntimeException("Failed to get HashMap constructor", e3);
            }
        }
    }

    public static Class a(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static boolean b(Map map) {
        Class cls = a;
        return cls != null && cls.isInstance(map);
    }

    public static Map c() {
        try {
            return (Map) b.newInstance();
        } catch (Exception e2) {
            throw new UndeclaredThrowableException(e2);
        }
    }

    public static Map d(int i, float f, int i2) {
        try {
            int i3 = d;
            if (i3 == 3) {
                return (Map) c.newInstance(new Integer(i), new Float(f), new Integer(i2));
            }
            if (i3 == 2) {
                return (Map) c.newInstance(new Integer(i), new Float(f));
            }
            throw new BugException();
        } catch (Exception e2) {
            throw new UndeclaredThrowableException(e2);
        }
    }

    public static Map e() {
        Map mapC = c();
        return b(mapC) ? mapC : Collections.synchronizedMap(mapC);
    }
}
