package defpackage;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

public abstract class x3j {
    public static final Unsafe a;
    public static final Class b;
    public static final boolean c;
    public static final v3j d;
    public static final boolean e;
    public static final boolean f;

    static {
        boolean z;
        v3j v3jVar;
        Unsafe unsafeG = g();
        a = unsafeG;
        int i = onh.a;
        b = Memory.class;
        Class cls = Long.TYPE;
        boolean zS = s(cls);
        c = zS;
        boolean zS2 = s(Integer.TYPE);
        v3j q3jVar = null;
        if (unsafeG != null) {
            if (zS) {
                q3jVar = new s3j(unsafeG);
            } else if (zS2) {
                q3jVar = new q3j(unsafeG);
            }
        }
        d = q3jVar;
        if (q3jVar != null) {
            try {
                Class<?> cls2 = q3jVar.a.getClass();
                cls2.getMethod("objectFieldOffset", Field.class);
                cls2.getMethod("getLong", Object.class, cls);
                w();
            } catch (Throwable th) {
                h(th);
            }
        }
        v3j v3jVar2 = d;
        if (v3jVar2 == null) {
            z = false;
        } else {
            try {
                Class<?> cls3 = v3jVar2.a.getClass();
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
                z = true;
            } catch (Throwable th2) {
                h(th2);
                z = false;
            }
        }
        e = z;
        u(byte[].class);
        u(boolean[].class);
        v(boolean[].class);
        u(int[].class);
        v(int[].class);
        u(long[].class);
        v(long[].class);
        u(float[].class);
        v(float[].class);
        u(double[].class);
        v(double[].class);
        u(Object[].class);
        v(Object[].class);
        Field fieldW = w();
        if (fieldW != null && (v3jVar = d) != null) {
            v3jVar.a.objectFieldOffset(fieldW);
        }
        f = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static double a(Object obj, long j) {
        return d.a(obj, j);
    }

    public static float b(Object obj, long j) {
        return d.b(obj, j);
    }

    public static int c(Object obj, long j) {
        return d.a.getInt(obj, j);
    }

    public static long d(Object obj, long j) {
        return d.a.getLong(obj, j);
    }

    public static Object e(Class cls) {
        try {
            return a.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static Object f(Object obj, long j) {
        return d.a.getObject(obj, j);
    }

    public static Unsafe g() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new n3j());
        } catch (Throwable unused) {
            unsafe = null;
        }
        if (unsafe == null) {
            return null;
        }
        try {
            unsafe.arrayBaseOffset(byte[].class);
            return unsafe;
        } catch (Exception unused2) {
            Logger.getLogger(x3j.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "getUnsafe", "As part of the planned removal, sun.misc.Unsafe is available in the current environment but configured to throw on use. Protobuf will continue without using it, but with slightly reduced performance. --sun-misc-unsafe-memory-access=allow is likely available to opt back in if desired. A later Protobuf version release will stop using sun.misc.Unsafe entirely.");
            return null;
        }
    }

    public static void h(Throwable th) {
        Logger.getLogger(x3j.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    public static void i(Object obj, long j, boolean z) {
        Unsafe unsafe = d.a;
        long j2 = (-4) & j;
        int i = unsafe.getInt(obj, j2);
        int i2 = ((~((int) j)) & 3) << 3;
        unsafe.putInt(obj, j2, ((z ? 1 : 0) << i2) | ((~(255 << i2)) & i));
    }

    public static void j(Object obj, long j, boolean z) {
        Unsafe unsafe = d.a;
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        unsafe.putInt(obj, j2, ((z ? 1 : 0) << i) | ((~(255 << i)) & unsafe.getInt(obj, j2)));
    }

    public static void k(Object obj, long j, boolean z) {
        d.c(obj, j, z);
    }

    public static void l(Object obj, long j, double d2) {
        d.d(obj, j, d2);
    }

    public static void m(Object obj, long j, float f2) {
        d.e(obj, j, f2);
    }

    public static void n(Object obj, long j, int i) {
        d.a.putInt(obj, j, i);
    }

    public static void o(Object obj, long j, long j2) {
        d.a.putLong(obj, j, j2);
    }

    public static void p(Object obj, long j, Object obj2) {
        d.a.putObject(obj, j, obj2);
    }

    public static boolean q(Object obj, long j) {
        return ((byte) ((d.a.getInt(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3))) & 255)) != 0;
    }

    public static boolean r(Object obj, long j) {
        return ((byte) ((d.a.getInt(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    public static boolean s(Class cls) {
        int i = onh.a;
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

    public static boolean t(Object obj, long j) {
        return d.f(obj, j);
    }

    public static int u(Class cls) {
        if (e) {
            return d.a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static int v(Class cls) {
        if (e) {
            return d.a.arrayIndexScale(cls);
        }
        return -1;
    }

    public static Field w() {
        int i = onh.a;
        Field fieldX = x(Buffer.class, "effectiveDirectAddress");
        if (fieldX != null) {
            return fieldX;
        }
        Field fieldX2 = x(Buffer.class, "address");
        if (fieldX2 == null || fieldX2.getType() != Long.TYPE) {
            return null;
        }
        return fieldX2;
    }

    public static Field x(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
