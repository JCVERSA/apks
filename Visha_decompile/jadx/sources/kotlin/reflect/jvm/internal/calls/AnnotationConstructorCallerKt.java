package kotlin.reflect.jvm.internal.calls;

import defpackage.c74;
import defpackage.de5;
import defpackage.e74;
import defpackage.ed5;
import defpackage.fd;
import defpackage.hi;
import defpackage.i81;
import defpackage.xq8;
import defpackage.y45;
import defpackage.yi5;
import defpackage.z71;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;

public abstract class AnnotationConstructorCallerKt {
    public static final Object d(final Class cls, final Map map, List list) {
        y45.j(cls, "annotationClass");
        y45.j(map, "values");
        y45.j(list, "methods");
        yi5 yi5VarA = kotlin.b.a(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final Integer invoke() {
                int iHashCode;
                Iterator<T> it = map.entrySet().iterator();
                int iHashCode2 = 0;
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    String str = (String) entry.getKey();
                    Object value = entry.getValue();
                    if (value instanceof boolean[]) {
                        iHashCode = Arrays.hashCode((boolean[]) value);
                    } else if (value instanceof char[]) {
                        iHashCode = Arrays.hashCode((char[]) value);
                    } else if (value instanceof byte[]) {
                        iHashCode = Arrays.hashCode((byte[]) value);
                    } else if (value instanceof short[]) {
                        iHashCode = Arrays.hashCode((short[]) value);
                    } else if (value instanceof int[]) {
                        iHashCode = Arrays.hashCode((int[]) value);
                    } else if (value instanceof float[]) {
                        iHashCode = Arrays.hashCode((float[]) value);
                    } else if (value instanceof long[]) {
                        iHashCode = Arrays.hashCode((long[]) value);
                    } else if (value instanceof double[]) {
                        iHashCode = Arrays.hashCode((double[]) value);
                    } else {
                        iHashCode = value instanceof Object[] ? Arrays.hashCode((Object[]) value) : value.hashCode();
                    }
                    iHashCode2 += iHashCode ^ (str.hashCode() * 127);
                }
                return Integer.valueOf(iHashCode2);
            }
        });
        Object objNewProxyInstance = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new fd(cls, map, kotlin.b.a(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final String invoke() throws IOException {
                Class<Object> cls2 = cls;
                Map<String, Object> map2 = map;
                StringBuilder sb = new StringBuilder();
                sb.append('@');
                sb.append(cls2.getCanonicalName());
                i81.v0(map2.entrySet(), sb, (124 & 2) != 0 ? ", " : ", ", (124 & 4) != 0 ? "" : "(", (124 & 8) == 0 ? ")" : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : new e74() {
                    @Override
                    public final CharSequence invoke(Map.Entry<String, ? extends Object> entry) {
                        String string;
                        y45.j(entry, "entry");
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        if (value instanceof boolean[]) {
                            string = Arrays.toString((boolean[]) value);
                            y45.i(string, "toString(this)");
                        } else if (value instanceof char[]) {
                            string = Arrays.toString((char[]) value);
                            y45.i(string, "toString(this)");
                        } else if (value instanceof byte[]) {
                            string = Arrays.toString((byte[]) value);
                            y45.i(string, "toString(this)");
                        } else if (value instanceof short[]) {
                            string = Arrays.toString((short[]) value);
                            y45.i(string, "toString(this)");
                        } else if (value instanceof int[]) {
                            string = Arrays.toString((int[]) value);
                            y45.i(string, "toString(this)");
                        } else if (value instanceof float[]) {
                            string = Arrays.toString((float[]) value);
                            y45.i(string, "toString(this)");
                        } else if (value instanceof long[]) {
                            string = Arrays.toString((long[]) value);
                            y45.i(string, "toString(this)");
                        } else if (value instanceof double[]) {
                            string = Arrays.toString((double[]) value);
                            y45.i(string, "toString(this)");
                        } else if (value instanceof Object[]) {
                            string = Arrays.toString((Object[]) value);
                            y45.i(string, "toString(this)");
                        } else {
                            string = value.toString();
                        }
                        return key + '=' + string;
                    }
                });
                String string = sb.toString();
                y45.i(string, "StringBuilder().apply(builderAction).toString()");
                return string;
            }
        }), yi5VarA, list));
        y45.h(objNewProxyInstance, "null cannot be cast to non-null type T of kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt.createAnnotationInstance");
        return objNewProxyInstance;
    }

    public static Object e(Class cls, Map map, List list, int i, Object obj) {
        if ((i & 4) != 0) {
            Set setKeySet = map.keySet();
            ArrayList arrayList = new ArrayList(z71.v(setKeySet, 10));
            Iterator it = setKeySet.iterator();
            while (it.hasNext()) {
                arrayList.add(cls.getDeclaredMethod((String) it.next(), null));
            }
            list = arrayList;
        }
        return d(cls, map, list);
    }

    public static final boolean f(Class cls, List list, Map map, Object obj) throws IllegalAccessException, InvocationTargetException {
        boolean zE;
        boolean z;
        de5 de5VarA;
        Annotation annotation = obj instanceof Annotation ? (Annotation) obj : null;
        if (!y45.e((annotation == null || (de5VarA = ed5.a(annotation)) == null) ? null : ed5.b(de5VarA), cls)) {
            return false;
        }
        List<Method> list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            z = true;
        } else {
            for (Method method : list2) {
                Object obj2 = map.get(method.getName());
                Object objInvoke = method.invoke(obj, null);
                if (obj2 instanceof boolean[]) {
                    y45.h(objInvoke, "null cannot be cast to non-null type kotlin.BooleanArray");
                    zE = Arrays.equals((boolean[]) obj2, (boolean[]) objInvoke);
                } else if (obj2 instanceof char[]) {
                    y45.h(objInvoke, "null cannot be cast to non-null type kotlin.CharArray");
                    zE = Arrays.equals((char[]) obj2, (char[]) objInvoke);
                } else if (obj2 instanceof byte[]) {
                    y45.h(objInvoke, "null cannot be cast to non-null type kotlin.ByteArray");
                    zE = Arrays.equals((byte[]) obj2, (byte[]) objInvoke);
                } else if (obj2 instanceof short[]) {
                    y45.h(objInvoke, "null cannot be cast to non-null type kotlin.ShortArray");
                    zE = Arrays.equals((short[]) obj2, (short[]) objInvoke);
                } else if (obj2 instanceof int[]) {
                    y45.h(objInvoke, "null cannot be cast to non-null type kotlin.IntArray");
                    zE = Arrays.equals((int[]) obj2, (int[]) objInvoke);
                } else if (obj2 instanceof float[]) {
                    y45.h(objInvoke, "null cannot be cast to non-null type kotlin.FloatArray");
                    zE = Arrays.equals((float[]) obj2, (float[]) objInvoke);
                } else if (obj2 instanceof long[]) {
                    y45.h(objInvoke, "null cannot be cast to non-null type kotlin.LongArray");
                    zE = Arrays.equals((long[]) obj2, (long[]) objInvoke);
                } else if (obj2 instanceof double[]) {
                    y45.h(objInvoke, "null cannot be cast to non-null type kotlin.DoubleArray");
                    zE = Arrays.equals((double[]) obj2, (double[]) objInvoke);
                } else if (obj2 instanceof Object[]) {
                    y45.h(objInvoke, "null cannot be cast to non-null type kotlin.Array<*>");
                    zE = Arrays.equals((Object[]) obj2, (Object[]) objInvoke);
                } else {
                    zE = y45.e(obj2, objInvoke);
                }
                if (!zE) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    public static final int g(yi5 yi5Var) {
        return ((Number) yi5Var.getValue()).intValue();
    }

    public static final String h(yi5 yi5Var) {
        return (String) yi5Var.getValue();
    }

    public static final Object i(Class cls, Map map, yi5 yi5Var, yi5 yi5Var2, List list, Object obj, Method method, Object[] objArr) {
        y45.j(cls, "$annotationClass");
        y45.j(map, "$values");
        y45.j(yi5Var, "$toString$delegate");
        y45.j(yi5Var2, "$hashCode$delegate");
        y45.j(list, "$methods");
        String name = method.getName();
        if (name != null) {
            int iHashCode = name.hashCode();
            if (iHashCode != -1776922004) {
                if (iHashCode != 147696667) {
                    if (iHashCode == 1444986633 && name.equals("annotationType")) {
                        return cls;
                    }
                } else if (name.equals("hashCode")) {
                    return Integer.valueOf(g(yi5Var2));
                }
            } else if (name.equals("toString")) {
                return h(yi5Var);
            }
        }
        if (y45.e(name, "equals") && objArr != null && objArr.length == 1) {
            y45.i(objArr, "args");
            return Boolean.valueOf(f(cls, list, map, hi.F0(objArr)));
        }
        if (map.containsKey(name)) {
            return map.get(name);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Method is not supported: ");
        sb.append(method);
        sb.append(" (args: ");
        if (objArr == null) {
            objArr = new Object[0];
        }
        sb.append(hi.c1(objArr));
        sb.append(')');
        throw new KotlinReflectionInternalError(sb.toString());
    }

    public static final Void j(int i, String str, Class cls) {
        de5 de5VarB;
        String strC;
        if (y45.e(cls, Class.class)) {
            de5VarB = xq8.b(de5.class);
        } else {
            de5VarB = (cls.isArray() && y45.e(cls.getComponentType(), Class.class)) ? xq8.b(de5[].class) : ed5.e(cls);
        }
        if (y45.e(de5VarB.c(), xq8.b(Object[].class).c())) {
            StringBuilder sb = new StringBuilder();
            sb.append(de5VarB.c());
            sb.append('<');
            Class<?> componentType = ed5.b(de5VarB).getComponentType();
            y45.i(componentType, "kotlinClass.java.componentType");
            sb.append(ed5.e(componentType).c());
            sb.append('>');
            strC = sb.toString();
        } else {
            strC = de5VarB.c();
        }
        throw new IllegalArgumentException("Argument #" + i + ' ' + str + " is not of the required type " + strC);
    }

    public static final Object k(Object obj, Class cls) {
        if (obj instanceof Class) {
            return null;
        }
        if (obj instanceof de5) {
            obj = ed5.b((de5) obj);
        } else if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (objArr instanceof Class[]) {
                return null;
            }
            if (objArr instanceof de5[]) {
                y45.h(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.reflect.KClass<*>>");
                de5[] de5VarArr = (de5[]) obj;
                ArrayList arrayList = new ArrayList(de5VarArr.length);
                for (de5 de5Var : de5VarArr) {
                    arrayList.add(ed5.b(de5Var));
                }
                obj = arrayList.toArray(new Class[0]);
            } else {
                obj = objArr;
            }
        }
        if (cls.isInstance(obj)) {
            return obj;
        }
        return null;
    }
}
