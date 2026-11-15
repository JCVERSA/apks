package kotlin.reflect.jvm.internal.impl.utils;

import defpackage.pe3;
import javassist.compiler.ast.MethodDecl;
import org.mozilla.javascript.ES6Iterator;

public abstract class WrappedValues {
    public static final Object a = new a();
    public static volatile boolean b = false;

    public static class WrappedProcessCanceledException extends RuntimeException {
        public WrappedProcessCanceledException(Throwable th) {
            super("Rethrow stored exception", th);
        }
    }

    public static class a {
        public String toString() {
            return "NULL_VALUE";
        }
    }

    public static final class b {
        public final Throwable a;

        public b(Throwable th, a aVar) {
            this(th);
        }

        public static void a(int i) {
            String str = i != 1 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 1 ? 3 : 2];
            if (i != 1) {
                objArr[0] = "throwable";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper";
            }
            if (i != 1) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper";
            } else {
                objArr[1] = "getThrowable";
            }
            if (i != 1) {
                objArr[2] = MethodDecl.initName;
            }
            String str2 = String.format(str, objArr);
            if (i == 1) {
                throw new IllegalStateException(str2);
            }
        }

        public Throwable b() {
            Throwable th = this.a;
            if (th == null) {
                a(1);
            }
            return th;
        }

        public String toString() {
            return this.a.toString();
        }

        public b(Throwable th) {
            if (th == null) {
                a(0);
            }
            this.a = th;
        }
    }

    public static void a(int i) {
        String str = (i == 1 || i == 2) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 2) ? 2 : 3];
        if (i == 1 || i == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/utils/WrappedValues";
        } else if (i != 3) {
            objArr[0] = ES6Iterator.VALUE_PROPERTY;
        } else {
            objArr[0] = "throwable";
        }
        if (i == 1 || i == 2) {
            objArr[1] = "escapeNull";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/WrappedValues";
        }
        if (i != 1 && i != 2) {
            if (i == 3) {
                objArr[2] = "escapeThrowable";
            } else if (i != 4) {
                objArr[2] = "unescapeNull";
            } else {
                objArr[2] = "unescapeExceptionOrNull";
            }
        }
        String str2 = String.format(str, objArr);
        if (i != 1 && i != 2) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static Object b(Object obj) {
        if (obj == null && (obj = a) == null) {
            a(1);
        }
        return obj;
    }

    public static Object c(Throwable th) {
        if (th == null) {
            a(3);
        }
        return new b(th, null);
    }

    public static Object d(Object obj) {
        if (obj == null) {
            a(4);
        }
        return e(f(obj));
    }

    public static Object e(Object obj) {
        if (obj == null) {
            a(0);
        }
        if (obj == a) {
            return null;
        }
        return obj;
    }

    public static Object f(Object obj) {
        if (!(obj instanceof b)) {
            return obj;
        }
        Throwable thB = ((b) obj).b();
        if (b && pe3.a(thB)) {
            throw new WrappedProcessCanceledException(thB);
        }
        throw pe3.b(thB);
    }
}
