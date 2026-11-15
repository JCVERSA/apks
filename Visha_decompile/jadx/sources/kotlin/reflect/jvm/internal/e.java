package kotlin.reflect.jvm.internal;

import defpackage.c74;
import java.lang.ref.SoftReference;
import javassist.compiler.ast.MethodDecl;

public abstract class e {

    public static class a extends c implements c74 {
        public final c74 c;
        public volatile SoftReference d;

        public a(Object obj, c74 c74Var) {
            if (c74Var == null) {
                f(0);
            }
            this.d = null;
            this.c = c74Var;
            if (obj != null) {
                this.d = new SoftReference(a(obj));
            }
        }

        public static void f(int i) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "initializer", "kotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal", MethodDecl.initName));
        }

        @Override
        public Object invoke() {
            Object obj;
            SoftReference softReference = this.d;
            if (softReference != null && (obj = softReference.get()) != null) {
                return c(obj);
            }
            Object objInvoke = this.c.invoke();
            this.d = new SoftReference(a(objInvoke));
            return objInvoke;
        }
    }

    public static class b extends c {
        public final c74 c;
        public volatile Object d;

        public b(c74 c74Var) {
            if (c74Var == null) {
                f(0);
            }
            this.d = null;
            this.c = c74Var;
        }

        private static void f(int i) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "initializer", "kotlin/reflect/jvm/internal/ReflectProperties$LazyVal", MethodDecl.initName));
        }

        @Override
        public Object invoke() {
            Object obj = this.d;
            if (obj != null) {
                return c(obj);
            }
            Object objInvoke = this.c.invoke();
            this.d = a(objInvoke);
            return objInvoke;
        }
    }

    public static abstract class c {
        public static final Object b = new a();

        public static class a {
        }

        public Object a(Object obj) {
            return obj == null ? b : obj;
        }

        public final Object b(Object obj, Object obj2) {
            return invoke();
        }

        public Object c(Object obj) {
            if (obj == b) {
                return null;
            }
            return obj;
        }

        public abstract Object invoke();
    }

    public static void a(int i) {
        Object[] objArr = new Object[3];
        objArr[0] = "initializer";
        objArr[1] = "kotlin/reflect/jvm/internal/ReflectProperties";
        if (i == 1 || i == 2) {
            objArr[2] = "lazySoft";
        } else {
            objArr[2] = "lazy";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static b b(c74 c74Var) {
        if (c74Var == null) {
            a(0);
        }
        return new b(c74Var);
    }

    public static a c(c74 c74Var) {
        if (c74Var == null) {
            a(2);
        }
        return d(null, c74Var);
    }

    public static a d(Object obj, c74 c74Var) {
        if (c74Var == null) {
            a(1);
        }
        return new a(obj, c74Var);
    }
}
