package defpackage;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

public abstract class vui {
    public static final Unsafe a;
    public static final Class b;
    public static final boolean c;
    public static final uui d;
    public static final boolean e;
    public static final boolean f;
    public static final long g;
    public static final long h;
    public static final boolean i;

    /* JADX WARN: Code duplicated, block: B:11:0x003d  */
    static {
        boolean z;
        boolean z2;
        uui uuiVar;
        Unsafe unsafeQ = q();
        a = unsafeQ;
        int i2 = lri.a;
        b = Memory.class;
        Class cls = Long.TYPE;
        boolean zG = G(cls);
        c = zG;
        boolean zG2 = G(Integer.TYPE);
        uui suiVar = null;
        if (unsafeQ != null) {
            if (zG) {
                suiVar = new tui(unsafeQ);
            } else if (zG2) {
                suiVar = new sui(unsafeQ);
            }
        }
        d = suiVar;
        if (suiVar == null) {
            z = false;
        } else {
            try {
                Class<?> cls2 = suiVar.a.getClass();
                cls2.getMethod("objectFieldOffset", Field.class);
                cls2.getMethod("getLong", Object.class, cls);
                if (e() == null) {
                    z = false;
                } else {
                    z = true;
                }
            } catch (Throwable th) {
                r(th);
            }
        }
        e = z;
        uui uuiVar2 = d;
        if (uuiVar2 == null) {
            z2 = false;
        } else {
            try {
                Class<?> cls3 = uuiVar2.a.getClass();
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
                r(th2);
                z2 = false;
            }
        }
        f = z2;
        g = c(byte[].class);
        c(boolean[].class);
        d(boolean[].class);
        c(int[].class);
        d(int[].class);
        c(long[].class);
        d(long[].class);
        c(float[].class);
        d(float[].class);
        c(double[].class);
        d(double[].class);
        c(Object[].class);
        d(Object[].class);
        Field fieldE = e();
        long jObjectFieldOffset = -1;
        if (fieldE != null && (uuiVar = d) != null) {
            jObjectFieldOffset = uuiVar.a.objectFieldOffset(fieldE);
        }
        h = jObjectFieldOffset;
        i = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static void A(Object obj, long j, float f2) {
        d.h(obj, j, f2);
    }

    public static void B(Object obj, long j, int i2) {
        d.a.putInt(obj, j, i2);
    }

    public static void C(Object obj, long j, long j2) {
        d.a.putLong(obj, j, j2);
    }

    public static void D(Object obj, long j, Object obj2) {
        d.a.putObject(obj, j, obj2);
    }

    public static boolean E(Object obj, long j) {
        return ((byte) ((d.a.getInt(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3))) & 255)) != 0;
    }

    public static boolean F(Object obj, long j) {
        return ((byte) ((d.a.getInt(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    public static boolean G(Class cls) {
        int i2 = lri.a;
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

    public static boolean H(Object obj, long j) {
        return d.i(obj, j);
    }

    public static boolean a() {
        return f;
    }

    public static boolean b() {
        return e;
    }

    public static int c(Class cls) {
        if (f) {
            return d.a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static int d(Class cls) {
        if (f) {
            return d.a.arrayIndexScale(cls);
        }
        return -1;
    }

    public static Field e() {
        int i2 = lri.a;
        Field fieldF = f(Buffer.class, "effectiveDirectAddress");
        if (fieldF != null) {
            return fieldF;
        }
        Field fieldF2 = f(Buffer.class, "address");
        if (fieldF2 == null || fieldF2.getType() != Long.TYPE) {
            return null;
        }
        return fieldF2;
    }

    public static Field f(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void g(Object obj, long j, byte b2) {
        Unsafe unsafe = d.a;
        long j2 = (-4) & j;
        int i2 = unsafe.getInt(obj, j2);
        int i3 = ((~((int) j)) & 3) << 3;
        unsafe.putInt(obj, j2, ((255 & b2) << i3) | (i2 & (~(255 << i3))));
    }

    public static void h(Object obj, long j, byte b2) {
        Unsafe unsafe = d.a;
        long j2 = (-4) & j;
        int i2 = (((int) j) & 3) << 3;
        unsafe.putInt(obj, j2, ((255 & b2) << i2) | (unsafe.getInt(obj, j2) & (~(255 << i2))));
    }

    public static byte i(long j) {
        return d.a(j);
    }

    public static double j(Object obj, long j) {
        return d.b(obj, j);
    }

    public static float k(Object obj, long j) {
        return d.c(obj, j);
    }

    public static int l(Object obj, long j) {
        return d.a.getInt(obj, j);
    }

    public static long m(ByteBuffer byteBuffer) {
        uui uuiVar = d;
        return uuiVar.a.getLong(byteBuffer, h);
    }

    public static long n(Object obj, long j) {
        return d.a.getLong(obj, j);
    }

    public static Object o(Class cls) {
        try {
            return a.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static Object p(Object obj, long j) {
        return d.a.getObject(obj, j);
    }

    public static Unsafe q() {
        try {
            return (Unsafe) AccessController.doPrivileged(new rui());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void r(Throwable th) {
        Logger.getLogger(vui.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    public static void w(long j, byte[] bArr, long j2, long j3) {
        d.d(j, bArr, j2, j3);
    }

    public static void x(Object obj, long j, boolean z) {
        d.e(obj, j, z);
    }

    public static void y(byte[] bArr, long j, byte b2) {
        d.f(bArr, g + j, b2);
    }

    public static void z(Object obj, long j, double d2) {
        d.g(obj, j, d2);
    }
}
