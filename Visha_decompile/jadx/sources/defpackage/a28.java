package defpackage;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.KotlinNothingValueException;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.internal.EnumSerializer;

public abstract class a28 {
    public static final Object a(Class cls) {
        try {
            Field declaredField = cls.getDeclaredField("Companion");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final ef5 b(de5 de5Var) {
        y45.j(de5Var, "<this>");
        return c(de5Var, new ef5[0]);
    }

    public static final ef5 c(de5 de5Var, ef5... ef5VarArr) {
        y45.j(de5Var, "<this>");
        y45.j(ef5VarArr, "args");
        return d(ed5.b(de5Var), (ef5[]) Arrays.copyOf(ef5VarArr, ef5VarArr.length));
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0081 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x0082  */
    /* JADX WARN: Code duplicated, block: B:44:0x0088  */
    /* JADX WARN: Code duplicated, block: B:53:? A[RETURN, SYNTHETIC] */
    public static final ef5 d(Class cls, ef5... ef5VarArr) throws IllegalAccessException, InvocationTargetException {
        ef5 ef5Var;
        Field field;
        ef5 ef5VarG;
        y45.j(cls, "<this>");
        y45.j(ef5VarArr, "args");
        if (cls.isEnum() && i(cls)) {
            return e(cls);
        }
        if (cls.isInterface() && (ef5VarG = g(cls)) != null) {
            return ef5VarG;
        }
        ef5 ef5VarH = h(cls, (ef5[]) Arrays.copyOf(ef5VarArr, ef5VarArr.length));
        if (ef5VarH != null) {
            return ef5VarH;
        }
        ef5 ef5VarF = f(cls);
        if (ef5VarF != null) {
            return ef5VarF;
        }
        try {
            Class<?>[] declaredClasses = cls.getDeclaredClasses();
            y45.i(declaredClasses, "declaredClasses");
            int length = declaredClasses.length;
            int i = 0;
            Class<?> cls2 = null;
            boolean z = false;
            while (true) {
                if (i >= length) {
                    if (!z) {
                    }
                    if (ef5Var != null) {
                        return ef5Var;
                    }
                    if (j(cls)) {
                        return new PolymorphicSerializer(ed5.e(cls));
                    }
                    return null;
                }
                Class<?> cls3 = declaredClasses[i];
                if (y45.e(cls3.getSimpleName(), "$serializer")) {
                    if (!z) {
                        z = true;
                        cls2 = cls3;
                    }
                }
                i++;
                cls2 = null;
                break;
            }
            Object obj = (cls2 == null || (field = cls2.getField("INSTANCE")) == null) ? null : field.get(null);
            ef5Var = obj instanceof ef5 ? (ef5) obj : null;
        } catch (NoSuchFieldException unused) {
        }
        if (ef5Var != null) {
            return ef5Var;
        }
        if (j(cls)) {
            return new PolymorphicSerializer(ed5.e(cls));
        }
        return null;
    }

    public static final ef5 e(Class cls) {
        Object[] enumConstants = cls.getEnumConstants();
        String canonicalName = cls.getCanonicalName();
        y45.i(canonicalName, "canonicalName");
        y45.h(enumConstants, "null cannot be cast to non-null type kotlin.Array<out kotlin.Enum<*>>");
        return new EnumSerializer(canonicalName, (Enum[]) enumConstants);
    }

    public static final ef5 f(Class cls) throws IllegalAccessException, InvocationTargetException {
        Field[] declaredFields = cls.getDeclaredFields();
        y45.i(declaredFields, "declaredFields");
        int length = declaredFields.length;
        int i = 0;
        Field field = null;
        int i2 = 0;
        boolean z = false;
        while (true) {
            if (i2 >= length) {
                if (!z) {
                    break;
                }
                break;
            }
            Field field2 = declaredFields[i2];
            if (y45.e(field2.getName(), "INSTANCE") && y45.e(field2.getType(), cls) && Modifier.isStatic(field2.getModifiers())) {
                if (!z) {
                    z = true;
                    field = field2;
                }
            }
            i2++;
            field = null;
            break;
        }
        if (field == null) {
            return null;
        }
        Object obj = field.get(null);
        Method[] methods = cls.getMethods();
        y45.i(methods, "methods");
        int length2 = methods.length;
        Method method = null;
        boolean z2 = false;
        while (true) {
            if (i >= length2) {
                if (!z2) {
                    break;
                }
                break;
            }
            Method method2 = methods[i];
            if (y45.e(method2.getName(), "serializer")) {
                Class<?>[] parameterTypes = method2.getParameterTypes();
                y45.i(parameterTypes, "it.parameterTypes");
                if (parameterTypes.length == 0 && y45.e(method2.getReturnType(), ef5.class)) {
                    if (!z2) {
                        method = method2;
                        z2 = true;
                    }
                }
            }
            i++;
            method = null;
            break;
        }
        if (method == null) {
            return null;
        }
        Object objInvoke = method.invoke(obj, null);
        if (objInvoke instanceof ef5) {
            return (ef5) objInvoke;
        }
        return null;
    }

    public static final ef5 g(Class cls) {
        ld9 ld9Var = (ld9) cls.getAnnotation(ld9.class);
        if (ld9Var == null || y45.e(xq8.b(ld9Var.with()), xq8.b(PolymorphicSerializer.class))) {
            return new PolymorphicSerializer(ed5.e(cls));
        }
        return null;
    }

    public static final ef5 h(Class cls, ef5... ef5VarArr) throws IllegalAccessException, InvocationTargetException {
        Class[] clsArr;
        Object objA = a(cls);
        if (objA == null) {
            return null;
        }
        try {
            if (ef5VarArr.length == 0) {
                clsArr = new Class[0];
            } else {
                int length = ef5VarArr.length;
                Class[] clsArr2 = new Class[length];
                for (int i = 0; i < length; i++) {
                    clsArr2[i] = ef5.class;
                }
                clsArr = clsArr2;
            }
            Object objInvoke = objA.getClass().getDeclaredMethod("serializer", (Class[]) Arrays.copyOf(clsArr, clsArr.length)).invoke(objA, Arrays.copyOf(ef5VarArr, ef5VarArr.length));
            if (objInvoke instanceof ef5) {
                return (ef5) objInvoke;
            }
            return null;
        } catch (NoSuchMethodException unused) {
            return null;
        } catch (InvocationTargetException e) {
            Throwable cause = e.getCause();
            if (cause == null) {
                throw e;
            }
            String message = cause.getMessage();
            if (message == null) {
                message = e.getMessage();
            }
            throw new InvocationTargetException(cause, message);
        }
    }

    public static final boolean i(Class cls) {
        return cls.getAnnotation(ld9.class) == null && cls.getAnnotation(lc8.class) == null;
    }

    public static final boolean j(Class cls) {
        if (cls.getAnnotation(lc8.class) != null) {
            return true;
        }
        ld9 ld9Var = (ld9) cls.getAnnotation(ld9.class);
        return ld9Var != null && y45.e(xq8.b(ld9Var.with()), xq8.b(PolymorphicSerializer.class));
    }

    public static final boolean k(de5 de5Var) {
        y45.j(de5Var, "rootClass");
        return ed5.b(de5Var).isArray();
    }

    public static final Void l(de5 de5Var) {
        y45.j(de5Var, "<this>");
        e28.f(de5Var);
        throw new KotlinNothingValueException();
    }

    public static final Object[] m(ArrayList arrayList, de5 de5Var) {
        y45.j(arrayList, "<this>");
        y45.j(de5Var, "eClass");
        Object objNewInstance = Array.newInstance((Class<?>) ed5.b(de5Var), arrayList.size());
        y45.h(objNewInstance, "null cannot be cast to non-null type kotlin.Array<E of kotlinx.serialization.internal.PlatformKt.toNativeArrayImpl>");
        Object[] array = arrayList.toArray((Object[]) objNewInstance);
        y45.i(array, "toArray(java.lang.reflec….java, size) as Array<E>)");
        return array;
    }
}
