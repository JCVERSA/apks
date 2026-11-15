package org.mvel2.util;

public abstract class d {

    public static a f68883a = new b();

    public interface a {
        boolean a(Class cls, Class cls2);

        boolean b(Class cls, Class cls2);
    }

    public static class b implements a {
        private boolean c(Class cls, Class cls2, boolean z10) {
            if (cls == Boolean.TYPE) {
                return cls2 == Boolean.class;
            }
            if (cls == Integer.TYPE) {
                return d(cls2, z10);
            }
            if (cls == Long.TYPE) {
                return d(cls2, z10);
            }
            if (cls == Double.TYPE) {
                return d(cls2, z10);
            }
            if (cls == Float.TYPE) {
                return d(cls2, z10);
            }
            if (cls == Character.TYPE) {
                return cls2 == Character.class;
            }
            if (cls == Byte.TYPE) {
                return cls2 == Byte.class;
            }
            return cls == Short.TYPE && cls2 == Short.class;
        }

        private boolean d(Class cls, boolean z10) {
            return Number.class.isAssignableFrom(cls) || (z10 && cls == String.class);
        }

        @Override
        public boolean a(Class cls, Class cls2) {
            return b(cls, cls2);
        }

        @Override
        public boolean b(Class cls, Class cls2) {
            if (cls == l.class || cls2 == l.class || cls.isAssignableFrom(cls2) || cls2.isAssignableFrom(cls)) {
                return true;
            }
            if (d(cls, false) && d(cls2, true)) {
                return true;
            }
            if (cls.isPrimitive()) {
                return cls2.isPrimitive() || c(cls, cls2, true);
            }
            if (cls2.isPrimitive()) {
                return c(cls2, cls, false);
            }
            return false;
        }
    }

    public static boolean a(Class cls, Class cls2) {
        return f68883a.a(cls, cls2);
    }

    public static boolean b(Class cls, Class cls2) {
        return f68883a.b(cls, cls2);
    }
}
