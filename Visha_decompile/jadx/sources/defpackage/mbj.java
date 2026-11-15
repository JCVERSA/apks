package defpackage;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

public abstract class mbj {
    public static final Unsafe a;
    public static final Class b;
    public static final boolean c;
    public static final kbj d;
    public static final boolean e;
    public static final boolean f;
    public static final long g;
    public static final boolean h;

    /* JADX WARN: Code duplicated, block: B:11:0x003d  */
    static {
        boolean z;
        boolean z2;
        kbj kbjVar;
        Unsafe unsafeD = d();
        a = unsafeD;
        b = e3j.a();
        Class cls = Long.TYPE;
        boolean zF = f(cls);
        c = zF;
        boolean zF2 = f(Integer.TYPE);
        kbj gbjVar = null;
        if (unsafeD != null) {
            if (zF) {
                gbjVar = new ibj(unsafeD);
            } else if (zF2) {
                gbjVar = new gbj(unsafeD);
            }
        }
        d = gbjVar;
        if (gbjVar == null) {
            z = false;
        } else {
            try {
                Class<?> cls2 = gbjVar.a.getClass();
                cls2.getMethod("objectFieldOffset", Field.class);
                cls2.getMethod("getLong", Object.class, cls);
                if (b() == null) {
                    z = false;
                } else {
                    z = true;
                }
            } catch (Throwable th) {
                e(th);
            }
        }
        e = z;
        kbj kbjVar2 = d;
        if (kbjVar2 == null) {
            z2 = false;
        } else {
            try {
                Class<?> cls3 = kbjVar2.a.getClass();
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
                e(th2);
                z2 = false;
            }
        }
        f = z2;
        g = i(byte[].class);
        i(boolean[].class);
        a(boolean[].class);
        i(int[].class);
        a(int[].class);
        i(long[].class);
        a(long[].class);
        i(float[].class);
        a(float[].class);
        i(double[].class);
        a(double[].class);
        i(Object[].class);
        a(Object[].class);
        Field fieldB = b();
        if (fieldB != null && (kbjVar = d) != null) {
            kbjVar.c(fieldB);
        }
        h = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static int a(Class cls) {
        if (f) {
            return d.b(cls);
        }
        return -1;
    }

    public static Field b() {
        int i = e3j.a;
        Field fieldC = c(Buffer.class, "effectiveDirectAddress");
        if (fieldC != null) {
            return fieldC;
        }
        Field fieldC2 = c(Buffer.class, "address");
        if (fieldC2 == null || fieldC2.getType() != Long.TYPE) {
            return null;
        }
        return fieldC2;
    }

    public static Field c(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Unsafe d() {
        try {
            return (Unsafe) AccessController.doPrivileged(new ebj());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void e(Throwable th) {
        Logger.getLogger(mbj.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    public static boolean f(Class cls) {
        int i = e3j.a;
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

    public static boolean g() {
        return f;
    }

    public static boolean h() {
        return e;
    }

    public static int i(Class cls) {
        if (f) {
            return d.a(cls);
        }
        return -1;
    }
}
