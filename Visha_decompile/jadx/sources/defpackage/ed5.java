package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.annotation.Annotation;

public abstract class ed5 {
    public static final de5 a(Annotation annotation) {
        y45.j(annotation, "<this>");
        Class<? extends Annotation> clsAnnotationType = annotation.annotationType();
        y45.i(clsAnnotationType, "annotationType(...)");
        de5 de5VarE = e(clsAnnotationType);
        y45.h(de5VarE, "null cannot be cast to non-null type kotlin.reflect.KClass<out T of kotlin.jvm.JvmClassMappingKt.<get-annotationClass>>");
        return de5VarE;
    }

    public static final Class b(de5 de5Var) {
        y45.j(de5Var, "<this>");
        Class clsD = ((kw0) de5Var).d();
        y45.h(clsD, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
        return clsD;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final Class c(de5 de5Var) {
        y45.j(de5Var, "<this>");
        Class clsD = ((kw0) de5Var).d();
        if (!clsD.isPrimitive()) {
            y45.h(clsD, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaObjectType>>");
            return clsD;
        }
        String name = clsD.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (name.equals("double")) {
                    clsD = Double.class;
                }
                break;
            case 104431:
                if (name.equals("int")) {
                    clsD = Integer.class;
                }
                break;
            case 3039496:
                if (name.equals("byte")) {
                    clsD = Byte.class;
                }
                break;
            case 3052374:
                if (name.equals("char")) {
                    clsD = Character.class;
                }
                break;
            case 3327612:
                if (name.equals("long")) {
                    clsD = Long.class;
                }
                break;
            case 3625364:
                if (name.equals("void")) {
                    clsD = Void.class;
                }
                break;
            case 64711720:
                if (name.equals(TypedValues.Custom.S_BOOLEAN)) {
                    clsD = Boolean.class;
                }
                break;
            case 97526364:
                if (name.equals(TypedValues.Custom.S_FLOAT)) {
                    clsD = Float.class;
                }
                break;
            case 109413500:
                if (name.equals("short")) {
                    clsD = Short.class;
                }
                break;
        }
        y45.h(clsD, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaObjectType>>");
        return clsD;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final Class d(de5 de5Var) {
        y45.j(de5Var, "<this>");
        Class clsD = ((kw0) de5Var).d();
        if (clsD.isPrimitive()) {
            y45.h(clsD, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaPrimitiveType>>");
            return clsD;
        }
        String name = clsD.getName();
        switch (name.hashCode()) {
            case -2056817302:
                if (name.equals("java.lang.Integer")) {
                    return Integer.TYPE;
                }
                return null;
            case -527879800:
                if (name.equals("java.lang.Float")) {
                    return Float.TYPE;
                }
                return null;
            case -515992664:
                if (name.equals("java.lang.Short")) {
                    return Short.TYPE;
                }
                return null;
            case 155276373:
                if (name.equals("java.lang.Character")) {
                    return Character.TYPE;
                }
                return null;
            case 344809556:
                if (name.equals("java.lang.Boolean")) {
                    return Boolean.TYPE;
                }
                return null;
            case 398507100:
                if (name.equals("java.lang.Byte")) {
                    return Byte.TYPE;
                }
                return null;
            case 398795216:
                if (name.equals("java.lang.Long")) {
                    return Long.TYPE;
                }
                return null;
            case 399092968:
                if (name.equals("java.lang.Void")) {
                    return Void.TYPE;
                }
                return null;
            case 761287205:
                if (name.equals("java.lang.Double")) {
                    return Double.TYPE;
                }
                return null;
            default:
                return null;
        }
    }

    public static final de5 e(Class cls) {
        y45.j(cls, "<this>");
        return xq8.b(cls);
    }
}
