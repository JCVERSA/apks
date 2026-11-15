package defpackage;

import freemarker.core.BugException;
import freemarker.core._TemplateModelException;
import freemarker.template.TemplateModelException;
import freemarker.template.utility.UndeclaredThrowableException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;
import okhttp3.HttpUrl;

public abstract class u0d {
    public static final Method a;
    public static final Method b;
    public static Class c;
    public static Class d;
    public static Class e;
    public static Class f;
    public static Class g;
    public static Class h;
    public static Class i;
    public static Class j;
    public static Class k;

    static {
        Class clsA = c;
        if (clsA == null) {
            clsA = a("java.lang.reflect.Method");
            c = clsA;
        }
        a = d(clsA);
        Class clsA2 = d;
        if (clsA2 == null) {
            clsA2 = a("java.lang.reflect.Constructor");
            d = clsA2;
        }
        b = d(clsA2);
    }

    public static Class a(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static void b(Class cls, Class cls2, Set set) {
        if (cls.isAssignableFrom(cls2)) {
            set.add(cls);
        }
        Class superclass = cls.getSuperclass();
        if (superclass != null) {
            b(superclass, cls2, set);
        }
        for (Class<?> cls3 : cls.getInterfaces()) {
            b(cls3, cls2, set);
        }
    }

    public static Set c(Class cls, Class cls2) {
        HashSet hashSet = new HashSet();
        b(cls, cls2, hashSet);
        return hashSet;
    }

    public static Method d(Class cls) {
        try {
            return cls.getMethod("isVarArgs", null);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public static Class[] e(Member member) {
        if (member instanceof Method) {
            return ((Method) member).getParameterTypes();
        }
        if (member instanceof Constructor) {
            return ((Constructor) member).getParameterTypes();
        }
        throw new IllegalArgumentException("\"member\" must be Method or Constructor");
    }

    public static Object[] f(Object obj, boolean z) {
        return new Object[]{"Java ", z ? "constructor " : "method ", new k0d(obj)};
    }

    public static Object[] g(Member member) {
        return f(member, member instanceof Constructor);
    }

    public static int h(Class cls, Class cls2, boolean z, int i2) throws Throwable {
        if (i2 >= 4) {
            return 0;
        }
        if (cls2.isAssignableFrom(cls)) {
            return cls2 == cls ? 1 : 4;
        }
        boolean zIsPrimitive = cls.isPrimitive();
        boolean zIsPrimitive2 = cls2.isPrimitive();
        if (!zIsPrimitive) {
            if (i2 >= 3 || !z || zIsPrimitive2) {
                return 0;
            }
            Class clsA = e;
            if (clsA == null) {
                clsA = a("java.lang.Number");
                e = clsA;
            }
            if (!clsA.isAssignableFrom(cls)) {
                return 0;
            }
            Class clsA2 = e;
            if (clsA2 == null) {
                clsA2 = a("java.lang.Number");
                e = clsA2;
            }
            return (clsA2.isAssignableFrom(cls2) && k(cls, cls2)) ? 3 : 0;
        }
        if (zIsPrimitive2) {
            return (i2 < 3 && l(cls, cls2)) ? 3 : 0;
        }
        if (!z) {
            return 0;
        }
        Class<?> clsM = hx0.m(cls);
        if (clsM == cls2) {
            return 2;
        }
        if (cls2.isAssignableFrom(clsM)) {
            return 4;
        }
        if (i2 >= 3) {
            return 0;
        }
        Class clsA3 = e;
        if (clsA3 == null) {
            clsA3 = a("java.lang.Number");
            e = clsA3;
        }
        if (!clsA3.isAssignableFrom(clsM)) {
            return 0;
        }
        Class clsA4 = e;
        if (clsA4 == null) {
            clsA4 = a("java.lang.Number");
            e = clsA4;
        }
        return (clsA4.isAssignableFrom(cls2) && k(clsM, cls2)) ? 3 : 0;
    }

    public static boolean i(Member member) {
        if (member instanceof Method) {
            return j(member, a);
        }
        if (member instanceof Constructor) {
            return j(member, b);
        }
        throw new BugException();
    }

    public static boolean j(Member member, Method method) {
        if (method == null) {
            return false;
        }
        try {
            return ((Boolean) method.invoke(member, null)).booleanValue();
        } catch (Exception e2) {
            throw new UndeclaredThrowableException(e2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0042, code lost:
    
        if (r7 == r0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0075, code lost:
    
        if (r7 == r0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00b4, code lost:
    
        if (r7 == r0) goto L62;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean k(Class cls, Class cls2) throws Throwable {
        Class clsA = f;
        if (clsA == null) {
            clsA = a("java.lang.Short");
            f = clsA;
        }
        if (cls2 == clsA) {
            Class clsA2 = g;
            if (clsA2 == null) {
                clsA2 = a("java.lang.Byte");
                g = clsA2;
            }
            if (cls == clsA2) {
                return true;
            }
        }
        Class clsA3 = h;
        if (clsA3 == null) {
            clsA3 = a("java.lang.Integer");
            h = clsA3;
        }
        if (cls2 == clsA3) {
            Class clsA4 = f;
            if (clsA4 == null) {
                clsA4 = a("java.lang.Short");
                f = clsA4;
            }
            if (cls != clsA4) {
                Class clsA5 = g;
                if (clsA5 == null) {
                    clsA5 = a("java.lang.Byte");
                    g = clsA5;
                }
            }
            return true;
        }
        Class clsA6 = i;
        if (clsA6 == null) {
            clsA6 = a("java.lang.Long");
            i = clsA6;
        }
        if (cls2 == clsA6) {
            Class clsA7 = h;
            if (clsA7 == null) {
                clsA7 = a("java.lang.Integer");
                h = clsA7;
            }
            if (cls != clsA7) {
                Class clsA8 = f;
                if (clsA8 == null) {
                    clsA8 = a("java.lang.Short");
                    f = clsA8;
                }
                if (cls != clsA8) {
                    Class clsA9 = g;
                    if (clsA9 == null) {
                        clsA9 = a("java.lang.Byte");
                        g = clsA9;
                    }
                }
            }
            return true;
        }
        Class clsA10 = j;
        if (clsA10 == null) {
            clsA10 = a("java.lang.Float");
            j = clsA10;
        }
        if (cls2 == clsA10) {
            Class clsA11 = i;
            if (clsA11 == null) {
                clsA11 = a("java.lang.Long");
                i = clsA11;
            }
            if (cls != clsA11) {
                Class clsA12 = h;
                if (clsA12 == null) {
                    clsA12 = a("java.lang.Integer");
                    h = clsA12;
                }
                if (cls != clsA12) {
                    Class clsA13 = f;
                    if (clsA13 == null) {
                        clsA13 = a("java.lang.Short");
                        f = clsA13;
                    }
                    if (cls != clsA13) {
                        Class clsA14 = g;
                        if (clsA14 == null) {
                            clsA14 = a("java.lang.Byte");
                            g = clsA14;
                        }
                    }
                }
            }
            return true;
        }
        Class clsA15 = k;
        if (clsA15 == null) {
            clsA15 = a("java.lang.Double");
            k = clsA15;
        }
        if (cls2 != clsA15) {
            return false;
        }
        Class clsA16 = j;
        if (clsA16 == null) {
            clsA16 = a("java.lang.Float");
            j = clsA16;
        }
        if (cls != clsA16) {
            Class clsA17 = i;
            if (clsA17 == null) {
                clsA17 = a("java.lang.Long");
                i = clsA17;
            }
            if (cls != clsA17) {
                Class clsA18 = h;
                if (clsA18 == null) {
                    clsA18 = a("java.lang.Integer");
                    h = clsA18;
                }
                if (cls != clsA18) {
                    Class clsA19 = f;
                    if (clsA19 == null) {
                        clsA19 = a("java.lang.Short");
                        f = clsA19;
                    }
                    if (cls != clsA19) {
                        Class clsA20 = g;
                        if (clsA20 == null) {
                            clsA20 = a("java.lang.Byte");
                            g = clsA20;
                        }
                        if (cls != clsA20) {
                            return false;
                        }
                    }
                }
            }
        }
        return true;
    }

    public static boolean l(Class cls, Class cls2) {
        Class cls3 = Short.TYPE;
        if (cls2 == cls3 && cls == Byte.TYPE) {
            return true;
        }
        Class cls4 = Integer.TYPE;
        if (cls2 == cls4 && (cls == cls3 || cls == Byte.TYPE)) {
            return true;
        }
        Class cls5 = Long.TYPE;
        if (cls2 == cls5 && (cls == cls4 || cls == cls3 || cls == Byte.TYPE)) {
            return true;
        }
        Class cls6 = Float.TYPE;
        if (cls2 == cls6 && (cls == cls5 || cls == cls4 || cls == cls3 || cls == Byte.TYPE)) {
            return true;
        }
        if (cls2 == Double.TYPE) {
            return cls == cls6 || cls == cls5 || cls == cls4 || cls == cls3 || cls == Byte.TYPE;
        }
        return false;
    }

    public static TemplateModelException m(Object obj, qq0 qq0Var, Throwable th) {
        return n(obj, new t0d(qq0Var), qq0Var.f(), qq0Var.e(), th);
    }

    public static TemplateModelException n(Object obj, Object obj2, boolean z, boolean z2, Throwable th) {
        Throwable targetException;
        while ((th instanceof InvocationTargetException) && (targetException = ((InvocationTargetException) th).getTargetException()) != null) {
            th = targetException;
        }
        return new _TemplateModelException(th, new Object[]{f(obj2, z2), " threw an exception", (z || z2) ? "" : new Object[]{" when invoked on ", obj.getClass(), " object ", new k0d(obj)}, "; see cause exception in the Java stack trace."});
    }

    public static TemplateModelException o(Object obj, Member member, Throwable th) {
        return n(obj, member, (member.getModifiers() & 8) != 0, member instanceof Constructor, th);
    }

    public static String p(Member member) {
        if (!(member instanceof Method) && !(member instanceof Constructor)) {
            throw new IllegalArgumentException("\"member\" must be a Method or Constructor");
        }
        StringBuffer stringBuffer = new StringBuffer();
        if ((member.getModifiers() & 8) != 0) {
            stringBuffer.append("static ");
        }
        String strG = hx0.g(member.getDeclaringClass());
        if (strG != null) {
            stringBuffer.append(strG);
            stringBuffer.append('.');
        }
        stringBuffer.append(member.getName());
        stringBuffer.append('(');
        Class[] clsArrE = e(member);
        for (int i2 = 0; i2 < clsArrE.length; i2++) {
            if (i2 != 0) {
                stringBuffer.append(", ");
            }
            String strG2 = hx0.g(clsArrE[i2]);
            if (i2 == clsArrE.length - 1 && strG2.endsWith(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI) && i(member)) {
                stringBuffer.append(strG2.substring(0, strG2.length() - 2));
                stringBuffer.append("...");
            } else {
                stringBuffer.append(strG2);
            }
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }
}
