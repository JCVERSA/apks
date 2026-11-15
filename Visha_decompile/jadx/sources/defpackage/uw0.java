package defpackage;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public abstract class uw0 {

    public class a extends uw0 {
        public final Constructor a;
        public final Class b;

        public a(Constructor constructor, Class cls) {
            this.a = constructor;
            this.b = cls;
        }

        @Override
        public Object b() {
            return this.a.newInstance(null);
        }

        public String toString() {
            return this.b.getName();
        }
    }

    public class b extends uw0 {
        public final Method a;
        public final Object b;
        public final Class c;

        public b(Method method, Object obj, Class cls) {
            this.a = method;
            this.b = obj;
            this.c = cls;
        }

        @Override
        public Object b() {
            return this.a.invoke(this.b, this.c);
        }

        public String toString() {
            return this.c.getName();
        }
    }

    public class c extends uw0 {
        public final Method a;
        public final Class b;
        public final int c;

        public c(Method method, Class cls, int i) {
            this.a = method;
            this.b = cls;
            this.c = i;
        }

        @Override
        public Object b() {
            return this.a.invoke(null, this.b, Integer.valueOf(this.c));
        }

        public String toString() {
            return this.b.getName();
        }
    }

    public class d extends uw0 {
        public final Method a;
        public final Class b;

        public d(Method method, Class cls) {
            this.a = method;
            this.b = cls;
        }

        @Override
        public Object b() {
            return this.a.invoke(null, this.b, Object.class);
        }

        public String toString() {
            return this.b.getName();
        }
    }

    public static uw0 a(Class cls) {
        try {
            try {
                try {
                    try {
                        Constructor declaredConstructor = cls.getDeclaredConstructor(null);
                        declaredConstructor.setAccessible(true);
                        return new a(declaredConstructor, cls);
                    } catch (Exception unused) {
                        throw new IllegalArgumentException("cannot construct instances of " + cls.getName());
                    }
                } catch (NoSuchMethodException unused2) {
                    Class<?> cls2 = Class.forName("sun.misc.Unsafe");
                    Field declaredField = cls2.getDeclaredField("theUnsafe");
                    declaredField.setAccessible(true);
                    return new b(cls2.getMethod("allocateInstance", Class.class), declaredField.get(null), cls);
                }
            } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused3) {
                Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                declaredMethod.setAccessible(true);
                int iIntValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                declaredMethod2.setAccessible(true);
                return new c(declaredMethod2, cls, iIntValue);
            } catch (IllegalAccessException unused4) {
                throw new AssertionError();
            }
        } catch (IllegalAccessException unused5) {
            throw new AssertionError();
        } catch (NoSuchMethodException unused6) {
            Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
            declaredMethod3.setAccessible(true);
            return new d(declaredMethod3, cls);
        } catch (InvocationTargetException e) {
            throw wkb.t(e);
        }
    }

    public abstract Object b();
}
