package defpackage;

public abstract class ybb {
    public static Class a;
    public static Class b;
    public static Class c;
    public static Class d;
    public static Class e;
    public static Class f;
    public static Class g;
    public static Class h;
    public static Class i;
    public static Class j;
    public static Class k;
    public static Class l;
    public static Class m;
    public static Class n;
    public static Class o;
    public static Class p;
    public static Class q;

    public static Class a(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static int b(Class cls) throws Throwable {
        Class clsA = a;
        if (clsA == null) {
            clsA = a("java.lang.Object");
            a = clsA;
        }
        if (cls == clsA) {
            return 522240;
        }
        Class clsA2 = b;
        if (clsA2 == null) {
            clsA2 = a("java.lang.String");
            b = clsA2;
        }
        if (cls == clsA2) {
            return 8192;
        }
        if (cls.isPrimitive()) {
            if (cls == Integer.TYPE) {
                return 2064;
            }
            if (cls == Long.TYPE) {
                return 2080;
            }
            if (cls == Double.TYPE) {
                return 2176;
            }
            if (cls == Float.TYPE) {
                return 2112;
            }
            if (cls == Byte.TYPE) {
                return 2052;
            }
            if (cls == Short.TYPE) {
                return 2056;
            }
            if (cls == Character.TYPE) {
                return 524288;
            }
            return cls == Boolean.TYPE ? 16384 : 0;
        }
        Class clsA3 = c;
        if (clsA3 == null) {
            clsA3 = a("java.lang.Number");
            c = clsA3;
        }
        if (!clsA3.isAssignableFrom(cls)) {
            if (cls.isArray()) {
                return 262144;
            }
            Class<?> clsA4 = b;
            if (clsA4 == null) {
                clsA4 = a("java.lang.String");
                b = clsA4;
            }
            int i2 = cls.isAssignableFrom(clsA4) ? 8192 : 0;
            Class<?> clsA5 = l;
            if (clsA5 == null) {
                clsA5 = a("java.util.Date");
                l = clsA5;
            }
            if (cls.isAssignableFrom(clsA5)) {
                i2 |= 4096;
            }
            Class<?> clsA6 = m;
            if (clsA6 == null) {
                clsA6 = a("java.lang.Boolean");
                m = clsA6;
            }
            if (cls.isAssignableFrom(clsA6)) {
                i2 |= 16384;
            }
            Class<?> clsA7 = n;
            if (clsA7 == null) {
                clsA7 = a("java.util.Map");
                n = clsA7;
            }
            if (cls.isAssignableFrom(clsA7)) {
                i2 |= 32768;
            }
            Class<?> clsA8 = o;
            if (clsA8 == null) {
                clsA8 = a("java.util.List");
                o = clsA8;
            }
            if (cls.isAssignableFrom(clsA8)) {
                i2 |= 65536;
            }
            Class<?> clsA9 = p;
            if (clsA9 == null) {
                clsA9 = a("java.util.Set");
                p = clsA9;
            }
            if (cls.isAssignableFrom(clsA9)) {
                i2 |= 131072;
            }
            Class clsA10 = q;
            if (clsA10 == null) {
                clsA10 = a("java.lang.Character");
                q = clsA10;
            }
            return cls == clsA10 ? i2 | 524288 : i2;
        }
        Class clsA11 = d;
        if (clsA11 == null) {
            clsA11 = a("java.lang.Integer");
            d = clsA11;
        }
        if (cls == clsA11) {
            return 2064;
        }
        Class clsA12 = e;
        if (clsA12 == null) {
            clsA12 = a("java.lang.Long");
            e = clsA12;
        }
        if (cls == clsA12) {
            return 2080;
        }
        Class clsA13 = f;
        if (clsA13 == null) {
            clsA13 = a("java.lang.Double");
            f = clsA13;
        }
        if (cls == clsA13) {
            return 2176;
        }
        Class clsA14 = g;
        if (clsA14 == null) {
            clsA14 = a("java.lang.Float");
            g = clsA14;
        }
        if (cls == clsA14) {
            return 2112;
        }
        Class clsA15 = h;
        if (clsA15 == null) {
            clsA15 = a("java.lang.Byte");
            h = clsA15;
        }
        if (cls == clsA15) {
            return 2052;
        }
        Class clsA16 = i;
        if (clsA16 == null) {
            clsA16 = a("java.lang.Short");
            i = clsA16;
        }
        if (cls == clsA16) {
            return 2056;
        }
        Class clsA17 = j;
        if (clsA17 == null) {
            clsA17 = a("java.math.BigDecimal");
            j = clsA17;
        }
        if (clsA17.isAssignableFrom(cls)) {
            return 2560;
        }
        Class clsA18 = k;
        if (clsA18 == null) {
            clsA18 = a("java.math.BigInteger");
            k = clsA18;
        }
        return clsA18.isAssignableFrom(cls) ? 2304 : 3072;
    }
}
