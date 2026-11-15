package defpackage;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

public abstract class fzi {
    public static final Unsafe a;
    public static final Class b;
    public static final boolean c;
    public static final bzi d;
    public static final boolean e;
    public static final boolean f;
    public static final boolean g;

    /* JADX WARN: Code duplicated, block: B:11:0x003d  */
    static {
        boolean z;
        boolean z2;
        bzi bziVar;
        Unsafe unsafeA = a();
        a = unsafeA;
        b = nmg.a();
        Class cls = Long.TYPE;
        boolean zC = c(cls);
        c = zC;
        boolean zC2 = c(Integer.TYPE);
        bzi iyiVar = null;
        if (unsafeA != null) {
            if (zC) {
                iyiVar = new xyi(unsafeA);
            } else if (zC2) {
                iyiVar = new iyi(unsafeA);
            }
        }
        d = iyiVar;
        if (iyiVar == null) {
            z = false;
        } else {
            try {
                Class<?> cls2 = iyiVar.a.getClass();
                cls2.getMethod("objectFieldOffset", Field.class);
                cls2.getMethod("getLong", Object.class, cls);
                if (h() == null) {
                    z = false;
                } else {
                    z = true;
                }
            } catch (Throwable th) {
                b(th);
            }
        }
        e = z;
        bzi bziVar2 = d;
        if (bziVar2 == null) {
            z2 = false;
        } else {
            try {
                Class<?> cls3 = bziVar2.a.getClass();
                cls3.getMethod("objectFieldOffset", Field.class);
                cls3.getMethod("arrayBaseOffset", Class.class);
                cls3.getMethod("arrayIndexScale", Class.class);
                Class cls4 = Long.TYPE;
                cls3.getMethod("getInt", Object.class, cls4);
                cls3.getMethod("putInt", Object.class, cls4, Integer.TYPE);
                cls3.getMethod("getLong", Object.class, cls4);
                cls3.getMethod("putLong", Object.class, cls4, cls4);
                cls3.getMethod("getObject", Object.class, cls4);
                cls3.getMethod("putObject", Object.class, cls4, Object.class);
                z2 = true;
            } catch (Throwable th2) {
                b(th2);
                z2 = false;
            }
        }
        f = z2;
        f(byte[].class);
        f(boolean[].class);
        g(boolean[].class);
        f(int[].class);
        g(int[].class);
        f(long[].class);
        g(long[].class);
        f(float[].class);
        g(float[].class);
        f(double[].class);
        g(double[].class);
        f(Object[].class);
        g(Object[].class);
        Field fieldH = h();
        if (fieldH != null && (bziVar = d) != null) {
            bziVar.c(fieldH);
        }
        g = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static Unsafe a() {
        try {
            return (Unsafe) AccessController.doPrivileged(new fxi());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void b(Throwable th) {
        Logger.getLogger(fzi.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    public static boolean c(Class cls) {
        int i = nmg.a;
        try {
            Class cls2 = b;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean d() {
        return f;
    }

    public static boolean e() {
        return e;
    }

    public static int f(Class cls) {
        if (f) {
            return d.a(cls);
        }
        return -1;
    }

    public static int g(Class cls) {
        if (f) {
            return d.b(cls);
        }
        return -1;
    }

    public static Field h() {
        int i = nmg.a;
        Field fieldI = i(Buffer.class, "effectiveDirectAddress");
        if (fieldI != null) {
            return fieldI;
        }
        Field fieldI2 = i(Buffer.class, "address");
        if (fieldI2 == null || fieldI2.getType() != Long.TYPE) {
            return null;
        }
        return fieldI2;
    }

    public static Field i(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
