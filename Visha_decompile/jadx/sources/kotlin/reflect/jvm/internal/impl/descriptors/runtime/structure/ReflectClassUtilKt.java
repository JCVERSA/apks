package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import defpackage.a84;
import defpackage.abb;
import defpackage.b84;
import defpackage.by6;
import defpackage.c74;
import defpackage.c84;
import defpackage.d74;
import defpackage.de5;
import defpackage.e74;
import defpackage.ed5;
import defpackage.f74;
import defpackage.g1a;
import defpackage.g74;
import defpackage.h74;
import defpackage.hi;
import defpackage.i74;
import defpackage.j74;
import defpackage.k74;
import defpackage.l74;
import defpackage.m74;
import defpackage.n74;
import defpackage.o54;
import defpackage.p74;
import defpackage.pc9;
import defpackage.q74;
import defpackage.r74;
import defpackage.s74;
import defpackage.u74;
import defpackage.w74;
import defpackage.xq8;
import defpackage.xw0;
import defpackage.y45;
import defpackage.y71;
import defpackage.y74;
import defpackage.z71;
import defpackage.z74;
import defpackage.zc9;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.collections.a;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.apache.commons.io.IOUtils;

public abstract class ReflectClassUtilKt {
    public static final List a;
    public static final Map b;
    public static final Map c;
    public static final Map d;

    static {
        int i = 0;
        List listN = y71.n(xq8.b(Boolean.TYPE), xq8.b(Byte.TYPE), xq8.b(Character.TYPE), xq8.b(Double.TYPE), xq8.b(Float.TYPE), xq8.b(Integer.TYPE), xq8.b(Long.TYPE), xq8.b(Short.TYPE));
        a = listN;
        List<de5> list = listN;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        for (de5 de5Var : list) {
            arrayList.add(abb.a(ed5.c(de5Var), ed5.d(de5Var)));
        }
        b = a.y(arrayList);
        List<de5> list2 = a;
        ArrayList arrayList2 = new ArrayList(z71.v(list2, 10));
        for (de5 de5Var2 : list2) {
            arrayList2.add(abb.a(ed5.d(de5Var2), ed5.c(de5Var2)));
        }
        c = a.y(arrayList2);
        List listN2 = y71.n(c74.class, e74.class, s74.class, u74.class, w74.class, y74.class, z74.class, a84.class, b84.class, c84.class, d74.class, f74.class, g74.class, h74.class, i74.class, j74.class, k74.class, l74.class, m74.class, n74.class, p74.class, q74.class, r74.class);
        ArrayList arrayList3 = new ArrayList(z71.v(listN2, 10));
        for (Object obj : listN2) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            arrayList3.add(abb.a((Class) obj, Integer.valueOf(i)));
            i = i2;
        }
        d = a.y(arrayList3);
    }

    public static final xw0 a(Class cls) {
        xw0 xw0VarM;
        xw0 xw0VarA;
        y45.j(cls, "<this>");
        if (cls.isPrimitive()) {
            throw new IllegalArgumentException("Can't compute ClassId for primitive type: " + cls);
        }
        if (cls.isArray()) {
            throw new IllegalArgumentException("Can't compute ClassId for array type: " + cls);
        }
        if (cls.getEnclosingMethod() == null && cls.getEnclosingConstructor() == null) {
            String simpleName = cls.getSimpleName();
            y45.i(simpleName, "simpleName");
            if (simpleName.length() != 0) {
                Class<?> declaringClass = cls.getDeclaringClass();
                if (declaringClass == null || (xw0VarA = a(declaringClass)) == null || (xw0VarM = xw0VarA.d(by6.g(cls.getSimpleName()))) == null) {
                    xw0VarM = xw0.m(new o54(cls.getName()));
                }
                y45.i(xw0VarM, "declaringClass?.classId?…Id.topLevel(FqName(name))");
                return xw0VarM;
            }
        }
        o54 o54Var = new o54(cls.getName());
        return new xw0(o54Var.e(), o54.k(o54Var.g()), true);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final String b(Class cls) {
        y45.j(cls, "<this>");
        if (!cls.isPrimitive()) {
            if (cls.isArray()) {
                String name = cls.getName();
                y45.i(name, "name");
                return g1a.M(name, '.', IOUtils.DIR_SEPARATOR_UNIX, false, 4, null);
            }
            StringBuilder sb = new StringBuilder();
            sb.append('L');
            String name2 = cls.getName();
            y45.i(name2, "name");
            sb.append(g1a.M(name2, '.', IOUtils.DIR_SEPARATOR_UNIX, false, 4, null));
            sb.append(';');
            return sb.toString();
        }
        String name3 = cls.getName();
        switch (name3.hashCode()) {
            case -1325958191:
                if (name3.equals("double")) {
                    return "D";
                }
                break;
            case 104431:
                if (name3.equals("int")) {
                    return "I";
                }
                break;
            case 3039496:
                if (name3.equals("byte")) {
                    return "B";
                }
                break;
            case 3052374:
                if (name3.equals("char")) {
                    return "C";
                }
                break;
            case 3327612:
                if (name3.equals("long")) {
                    return "J";
                }
                break;
            case 3625364:
                if (name3.equals("void")) {
                    return ExifInterface.GPS_MEASUREMENT_INTERRUPTED;
                }
                break;
            case 64711720:
                if (name3.equals(TypedValues.Custom.S_BOOLEAN)) {
                    return "Z";
                }
                break;
            case 97526364:
                if (name3.equals(TypedValues.Custom.S_FLOAT)) {
                    return "F";
                }
                break;
            case 109413500:
                if (name3.equals("short")) {
                    return ExifInterface.LATITUDE_SOUTH;
                }
                break;
        }
        throw new IllegalArgumentException("Unsupported primitive type: " + cls);
    }

    public static final Integer c(Class cls) {
        y45.j(cls, "<this>");
        return (Integer) d.get(cls);
    }

    public static final List d(Type type) {
        y45.j(type, "<this>");
        if (!(type instanceof ParameterizedType)) {
            return y71.k();
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        if (parameterizedType.getOwnerType() != null) {
            return SequencesKt___SequencesKt.c0(SequencesKt___SequencesKt.K(zc9.p(type, new e74() {
                @Override
                public final ParameterizedType invoke(ParameterizedType parameterizedType2) {
                    y45.j(parameterizedType2, "it");
                    Type ownerType = parameterizedType2.getOwnerType();
                    if (ownerType instanceof ParameterizedType) {
                        return (ParameterizedType) ownerType;
                    }
                    return null;
                }
            }), new e74() {
                @Override
                public final pc9 invoke(ParameterizedType parameterizedType2) {
                    y45.j(parameterizedType2, "it");
                    Type[] actualTypeArguments = parameterizedType2.getActualTypeArguments();
                    y45.i(actualTypeArguments, "it.actualTypeArguments");
                    return hi.K(actualTypeArguments);
                }
            }));
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        y45.i(actualTypeArguments, "actualTypeArguments");
        return hi.c1(actualTypeArguments);
    }

    public static final Class e(Class cls) {
        y45.j(cls, "<this>");
        return (Class) b.get(cls);
    }

    public static final ClassLoader f(Class cls) {
        y45.j(cls, "<this>");
        ClassLoader classLoader = cls.getClassLoader();
        if (classLoader != null) {
            return classLoader;
        }
        ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
        y45.i(systemClassLoader, "getSystemClassLoader()");
        return systemClassLoader;
    }

    public static final Class g(Class cls) {
        y45.j(cls, "<this>");
        return (Class) c.get(cls);
    }

    public static final boolean h(Class cls) {
        y45.j(cls, "<this>");
        return Enum.class.isAssignableFrom(cls);
    }
}
