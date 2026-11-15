package androidx.datastore.preferences.protobuf;

import com.google.android.libraries.places.api.model.PlaceTypes;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

abstract class k1 {

    private static final Unsafe f8537a = H();

    private static final Class f8538b = androidx.datastore.preferences.protobuf.d.b();

    private static final boolean f8539c = q(Long.TYPE);

    private static final boolean f8540d = q(Integer.TYPE);

    private static final e f8541e = F();

    private static final boolean f8542f = Y();

    private static final boolean f8543g = X();

    static final long f8544h;

    private static final long f8545i;

    private static final long f8546j;

    private static final long f8547k;

    private static final long f8548l;

    private static final long f8549m;

    private static final long f8550n;

    private static final long f8551o;

    private static final long f8552p;

    private static final long f8553q;

    private static final long f8554r;

    private static final long f8555s;

    private static final long f8556t;

    private static final long f8557u;

    private static final int f8558v;

    static final boolean f8559w;

    class a implements PrivilegedExceptionAction {
        a() {
        }

        @Override
        public Unsafe run() throws IllegalAccessException {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            return null;
        }
    }

    private static final class b extends e {
        b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override
        public void c(long j10, byte[] bArr, long j11, long j12) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean d(Object obj, long j10) {
            return k1.f8559w ? k1.u(obj, j10) : k1.v(obj, j10);
        }

        @Override
        public byte e(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte f(Object obj, long j10) {
            return k1.f8559w ? k1.y(obj, j10) : k1.z(obj, j10);
        }

        @Override
        public double g(Object obj, long j10) {
            return Double.longBitsToDouble(k(obj, j10));
        }

        @Override
        public float h(Object obj, long j10) {
            return Float.intBitsToFloat(i(obj, j10));
        }

        @Override
        public long j(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void n(Object obj, long j10, boolean z10) {
            if (k1.f8559w) {
                k1.N(obj, j10, z10);
            } else {
                k1.O(obj, j10, z10);
            }
        }

        @Override
        public void o(Object obj, long j10, byte b10) {
            if (k1.f8559w) {
                k1.Q(obj, j10, b10);
            } else {
                k1.R(obj, j10, b10);
            }
        }

        @Override
        public void p(Object obj, long j10, double d10) {
            s(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override
        public void q(Object obj, long j10, float f10) {
            r(obj, j10, Float.floatToIntBits(f10));
        }

        @Override
        public boolean v() {
            return false;
        }
    }

    private static final class c extends e {
        c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override
        public void c(long j10, byte[] bArr, long j11, long j12) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean d(Object obj, long j10) {
            return k1.f8559w ? k1.u(obj, j10) : k1.v(obj, j10);
        }

        @Override
        public byte e(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte f(Object obj, long j10) {
            return k1.f8559w ? k1.y(obj, j10) : k1.z(obj, j10);
        }

        @Override
        public double g(Object obj, long j10) {
            return Double.longBitsToDouble(k(obj, j10));
        }

        @Override
        public float h(Object obj, long j10) {
            return Float.intBitsToFloat(i(obj, j10));
        }

        @Override
        public long j(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void n(Object obj, long j10, boolean z10) {
            if (k1.f8559w) {
                k1.N(obj, j10, z10);
            } else {
                k1.O(obj, j10, z10);
            }
        }

        @Override
        public void o(Object obj, long j10, byte b10) {
            if (k1.f8559w) {
                k1.Q(obj, j10, b10);
            } else {
                k1.R(obj, j10, b10);
            }
        }

        @Override
        public void p(Object obj, long j10, double d10) {
            s(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override
        public void q(Object obj, long j10, float f10) {
            r(obj, j10, Float.floatToIntBits(f10));
        }

        @Override
        public boolean v() {
            return false;
        }
    }

    private static final class d extends e {
        d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override
        public void c(long j10, byte[] bArr, long j11, long j12) {
            this.f8560a.copyMemory((Object) null, j10, bArr, k1.f8544h + j11, j12);
        }

        @Override
        public boolean d(Object obj, long j10) {
            return this.f8560a.getBoolean(obj, j10);
        }

        @Override
        public byte e(long j10) {
            return this.f8560a.getByte(j10);
        }

        @Override
        public byte f(Object obj, long j10) {
            return this.f8560a.getByte(obj, j10);
        }

        @Override
        public double g(Object obj, long j10) {
            return this.f8560a.getDouble(obj, j10);
        }

        @Override
        public float h(Object obj, long j10) {
            return this.f8560a.getFloat(obj, j10);
        }

        @Override
        public long j(long j10) {
            return this.f8560a.getLong(j10);
        }

        @Override
        public void n(Object obj, long j10, boolean z10) {
            this.f8560a.putBoolean(obj, j10, z10);
        }

        @Override
        public void o(Object obj, long j10, byte b10) {
            this.f8560a.putByte(obj, j10, b10);
        }

        @Override
        public void p(Object obj, long j10, double d10) {
            this.f8560a.putDouble(obj, j10, d10);
        }

        @Override
        public void q(Object obj, long j10, float f10) {
            this.f8560a.putFloat(obj, j10, f10);
        }

        @Override
        public boolean u() {
            if (!super.u()) {
                return false;
            }
            try {
                Class<?> cls = this.f8560a.getClass();
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getByte", Object.class, cls2);
                cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
                cls.getMethod("getBoolean", Object.class, cls2);
                cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
                cls.getMethod("getFloat", Object.class, cls2);
                cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
                cls.getMethod("getDouble", Object.class, cls2);
                cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
                return true;
            } catch (Throwable th2) {
                k1.K(th2);
                return false;
            }
        }

        @Override
        public boolean v() {
            if (!super.v()) {
                return false;
            }
            try {
                Class<?> cls = this.f8560a.getClass();
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getByte", cls2);
                cls.getMethod("putByte", cls2, Byte.TYPE);
                cls.getMethod("getInt", cls2);
                cls.getMethod("putInt", cls2, Integer.TYPE);
                cls.getMethod("getLong", cls2);
                cls.getMethod("putLong", cls2, cls2);
                cls.getMethod("copyMemory", cls2, cls2, cls2);
                cls.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
                return true;
            } catch (Throwable th2) {
                k1.K(th2);
                return false;
            }
        }
    }

    private static abstract class e {

        Unsafe f8560a;

        e(Unsafe unsafe) {
            this.f8560a = unsafe;
        }

        public final int a(Class cls) {
            return this.f8560a.arrayBaseOffset(cls);
        }

        public final int b(Class cls) {
            return this.f8560a.arrayIndexScale(cls);
        }

        public abstract void c(long j10, byte[] bArr, long j11, long j12);

        public abstract boolean d(Object obj, long j10);

        public abstract byte e(long j10);

        public abstract byte f(Object obj, long j10);

        public abstract double g(Object obj, long j10);

        public abstract float h(Object obj, long j10);

        public final int i(Object obj, long j10) {
            return this.f8560a.getInt(obj, j10);
        }

        public abstract long j(long j10);

        public final long k(Object obj, long j10) {
            return this.f8560a.getLong(obj, j10);
        }

        public final Object l(Object obj, long j10) {
            return this.f8560a.getObject(obj, j10);
        }

        public final long m(Field field) {
            return this.f8560a.objectFieldOffset(field);
        }

        public abstract void n(Object obj, long j10, boolean z10);

        public abstract void o(Object obj, long j10, byte b10);

        public abstract void p(Object obj, long j10, double d10);

        public abstract void q(Object obj, long j10, float f10);

        public final void r(Object obj, long j10, int i10) {
            this.f8560a.putInt(obj, j10, i10);
        }

        public final void s(Object obj, long j10, long j11) {
            this.f8560a.putLong(obj, j10, j11);
        }

        public final void t(Object obj, long j10, Object obj2) {
            this.f8560a.putObject(obj, j10, obj2);
        }

        public boolean u() {
            Unsafe unsafe = this.f8560a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getInt", Object.class, cls2);
                cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("putLong", Object.class, cls2, cls2);
                cls.getMethod("getObject", Object.class, cls2);
                cls.getMethod("putObject", Object.class, cls2, Object.class);
                return true;
            } catch (Throwable th2) {
                k1.K(th2);
                return false;
            }
        }

        public boolean v() {
            Unsafe unsafe = this.f8560a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                return k1.o() != null;
            } catch (Throwable th2) {
                k1.K(th2);
                return false;
            }
        }
    }

    static {
        long jM = m(byte[].class);
        f8544h = jM;
        f8545i = m(boolean[].class);
        f8546j = n(boolean[].class);
        f8547k = m(int[].class);
        f8548l = n(int[].class);
        f8549m = m(long[].class);
        f8550n = n(long[].class);
        f8551o = m(float[].class);
        f8552p = n(float[].class);
        f8553q = m(double[].class);
        f8554r = n(double[].class);
        f8555s = m(Object[].class);
        f8556t = n(Object[].class);
        f8557u = s(o());
        f8558v = (int) (jM & 7);
        f8559w = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    static double A(Object obj, long j10) {
        return f8541e.g(obj, j10);
    }

    static float B(Object obj, long j10) {
        return f8541e.h(obj, j10);
    }

    static int C(Object obj, long j10) {
        return f8541e.i(obj, j10);
    }

    static long D(long j10) {
        return f8541e.j(j10);
    }

    static long E(Object obj, long j10) {
        return f8541e.k(obj, j10);
    }

    private static e F() {
        Unsafe unsafe = f8537a;
        if (unsafe == null) {
            return null;
        }
        if (!androidx.datastore.preferences.protobuf.d.c()) {
            return new d(unsafe);
        }
        if (f8539c) {
            return new c(unsafe);
        }
        if (f8540d) {
            return new b(unsafe);
        }
        return null;
    }

    static Object G(Object obj, long j10) {
        return f8541e.l(obj, j10);
    }

    static Unsafe H() {
        try {
            return (Unsafe) AccessController.doPrivileged(new a());
        } catch (Throwable unused) {
            return null;
        }
    }

    static boolean I() {
        return f8543g;
    }

    static boolean J() {
        return f8542f;
    }

    public static void K(Throwable th2) {
        Logger.getLogger(k1.class.getName()).log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th2);
    }

    static long L(Field field) {
        return f8541e.m(field);
    }

    static void M(Object obj, long j10, boolean z10) {
        f8541e.n(obj, j10, z10);
    }

    public static void N(Object obj, long j10, boolean z10) {
        Q(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    public static void O(Object obj, long j10, boolean z10) {
        R(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    static void P(byte[] bArr, long j10, byte b10) {
        f8541e.o(bArr, f8544h + j10, b10);
    }

    public static void Q(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int iC = C(obj, j11);
        int i10 = ((~((int) j10)) & 3) << 3;
        U(obj, j11, ((255 & b10) << i10) | (iC & (~(255 << i10))));
    }

    public static void R(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int i10 = (((int) j10) & 3) << 3;
        U(obj, j11, ((255 & b10) << i10) | (C(obj, j11) & (~(255 << i10))));
    }

    static void S(Object obj, long j10, double d10) {
        f8541e.p(obj, j10, d10);
    }

    static void T(Object obj, long j10, float f10) {
        f8541e.q(obj, j10, f10);
    }

    static void U(Object obj, long j10, int i10) {
        f8541e.r(obj, j10, i10);
    }

    static void V(Object obj, long j10, long j11) {
        f8541e.s(obj, j10, j11);
    }

    static void W(Object obj, long j10, Object obj2) {
        f8541e.t(obj, j10, obj2);
    }

    private static boolean X() {
        e eVar = f8541e;
        if (eVar == null) {
            return false;
        }
        return eVar.u();
    }

    private static boolean Y() {
        e eVar = f8541e;
        if (eVar == null) {
            return false;
        }
        return eVar.v();
    }

    static long k(ByteBuffer byteBuffer) {
        return f8541e.k(byteBuffer, f8557u);
    }

    static Object l(Class cls) {
        try {
            return f8537a.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    private static int m(Class cls) {
        if (f8543g) {
            return f8541e.a(cls);
        }
        return -1;
    }

    private static int n(Class cls) {
        if (f8543g) {
            return f8541e.b(cls);
        }
        return -1;
    }

    public static Field o() {
        Field fieldR;
        if (androidx.datastore.preferences.protobuf.d.c() && (fieldR = r(Buffer.class, "effectiveDirectAddress")) != null) {
            return fieldR;
        }
        Field fieldR2 = r(Buffer.class, PlaceTypes.ADDRESS);
        if (fieldR2 == null || fieldR2.getType() != Long.TYPE) {
            return null;
        }
        return fieldR2;
    }

    static void p(long j10, byte[] bArr, long j11, long j12) {
        f8541e.c(j10, bArr, j11, j12);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static boolean q(Class cls) {
        if (!androidx.datastore.preferences.protobuf.d.c()) {
            return false;
        }
        try {
            Class cls2 = f8538b;
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

    private static Field r(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static long s(Field field) {
        e eVar;
        if (field == null || (eVar = f8541e) == null) {
            return -1L;
        }
        return eVar.m(field);
    }

    static boolean t(Object obj, long j10) {
        return f8541e.d(obj, j10);
    }

    public static boolean u(Object obj, long j10) {
        return y(obj, j10) != 0;
    }

    public static boolean v(Object obj, long j10) {
        return z(obj, j10) != 0;
    }

    static byte w(long j10) {
        return f8541e.e(j10);
    }

    static byte x(byte[] bArr, long j10) {
        return f8541e.f(bArr, f8544h + j10);
    }

    public static byte y(Object obj, long j10) {
        return (byte) ((C(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3))) & 255);
    }

    public static byte z(Object obj, long j10) {
        return (byte) ((C(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & 255);
    }
}
