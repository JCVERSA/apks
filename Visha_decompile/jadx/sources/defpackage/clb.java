package defpackage;

import com.transsion.apiinvoke.common.router.ProcessInfo;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.PropertyReference;
import kotlin.reflect.KVisibility;
import kotlin.reflect.jvm.internal.KCallableImpl;
import kotlin.reflect.jvm.internal.KFunctionImpl;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.KTypeImpl;
import kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.load.kotlin.c;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.protobuf.g;
import kotlin.reflect.jvm.internal.impl.resolve.constants.TypedArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import org.mozilla.javascript.ES6Iterator;

public abstract class clb {
    public static final o54 a = new o54("kotlin.jvm.JvmStatic");

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[PrimitiveType.values().length];
            try {
                iArr[PrimitiveType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PrimitiveType.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PrimitiveType.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PrimitiveType.SHORT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PrimitiveType.INT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PrimitiveType.FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PrimitiveType.LONG.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[PrimitiveType.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: Incorrect type for immutable var: ssa=boolean[], code=short[], for r7v12, types: [boolean[]] */
    /* JADX WARN: Incorrect type for immutable var: ssa=byte[], code=short[], for r7v14, types: [byte[]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10, types: [java.lang.Class[]] */
    /* JADX WARN: Type inference failed for: r7v11, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r7v16, types: [int[]] */
    /* JADX WARN: Type inference failed for: r7v17, types: [float[]] */
    /* JADX WARN: Type inference failed for: r7v18, types: [long[]] */
    /* JADX WARN: Type inference failed for: r7v20, types: [double[]] */
    /* JADX WARN: Type inference failed for: r7v9, types: [java.lang.Object[]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(vh vhVar, ClassLoader classLoader) {
        eh5 eh5VarC;
        Class clsN;
        short[] sArr;
        TypedArrayValue typedArrayValue = vhVar instanceof TypedArrayValue ? (TypedArrayValue) vhVar : null;
        if (typedArrayValue == null || (eh5VarC = typedArrayValue.c()) == null) {
            return null;
        }
        Iterable iterable = (Iterable) vhVar.b();
        ArrayList arrayList = new ArrayList(z71.v(iterable, 10));
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(r((pf1) it.next(), classLoader));
        }
        PrimitiveType primitiveTypeN = d.N(eh5VarC);
        int i = 0;
        switch (primitiveTypeN == null ? -1 : a.a[primitiveTypeN.ordinal()]) {
            case -1:
                if (!d.c0(eh5VarC)) {
                    throw new IllegalStateException(("Not an array type: " + eh5VarC).toString());
                }
                eh5 type = ((mcb) i81.O0(eh5VarC.G0())).getType();
                y45.i(type, "type.arguments.single().type");
                px0 px0VarC = type.I0().c();
                qw0 qw0Var = px0VarC instanceof qw0 ? (qw0) px0VarC : null;
                if (qw0Var == null) {
                    throw new IllegalStateException(("Not a class type: " + type).toString());
                }
                if (d.v0(type)) {
                    int size = ((List) vhVar.b()).size();
                    sArr = new String[size];
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        y45.h(obj, "null cannot be cast to non-null type kotlin.String");
                        sArr[i] = obj;
                        i++;
                    }
                } else if (d.l0(qw0Var)) {
                    int size2 = ((List) vhVar.b()).size();
                    sArr = new Class[size2];
                    while (i < size2) {
                        Object obj2 = arrayList.get(i);
                        y45.h(obj2, "null cannot be cast to non-null type java.lang.Class<*>");
                        sArr[i] = obj2;
                        i++;
                    }
                } else {
                    xw0 xw0VarK = DescriptorUtilsKt.k(qw0Var);
                    if (xw0VarK == null || (clsN = n(classLoader, xw0VarK, 0, 4, null)) == null) {
                        return null;
                    }
                    Object objNewInstance = Array.newInstance((Class<?>) clsN, ((List) vhVar.b()).size());
                    y45.h(objNewInstance, "null cannot be cast to non-null type kotlin.Array<in kotlin.Any?>");
                    sArr = (Object[]) objNewInstance;
                    int size3 = arrayList.size();
                    while (i < size3) {
                        sArr[i] = arrayList.get(i);
                        i++;
                    }
                }
                return sArr;
            case 0:
            default:
                throw new NoWhenBranchMatchedException();
            case 1:
                int size4 = ((List) vhVar.b()).size();
                sArr = new boolean[size4];
                while (i < size4) {
                    Object obj3 = arrayList.get(i);
                    y45.h(obj3, "null cannot be cast to non-null type kotlin.Boolean");
                    sArr[i] = ((Boolean) obj3).booleanValue();
                    i++;
                }
                return sArr;
            case 2:
                int size5 = ((List) vhVar.b()).size();
                sArr = new char[size5];
                while (i < size5) {
                    Object obj4 = arrayList.get(i);
                    y45.h(obj4, "null cannot be cast to non-null type kotlin.Char");
                    sArr[i] = ((Character) obj4).charValue();
                    i++;
                }
                return sArr;
            case 3:
                int size6 = ((List) vhVar.b()).size();
                sArr = new byte[size6];
                while (i < size6) {
                    Object obj5 = arrayList.get(i);
                    y45.h(obj5, "null cannot be cast to non-null type kotlin.Byte");
                    sArr[i] = ((Byte) obj5).byteValue();
                    i++;
                }
                return sArr;
            case 4:
                int size7 = ((List) vhVar.b()).size();
                sArr = new short[size7];
                while (i < size7) {
                    Object obj6 = arrayList.get(i);
                    y45.h(obj6, "null cannot be cast to non-null type kotlin.Short");
                    sArr[i] = ((Short) obj6).shortValue();
                    i++;
                }
                return sArr;
            case 5:
                int size8 = ((List) vhVar.b()).size();
                sArr = new int[size8];
                while (i < size8) {
                    Object obj7 = arrayList.get(i);
                    y45.h(obj7, "null cannot be cast to non-null type kotlin.Int");
                    sArr[i] = ((Integer) obj7).intValue();
                    i++;
                }
                return sArr;
            case 6:
                int size9 = ((List) vhVar.b()).size();
                sArr = new float[size9];
                while (i < size9) {
                    Object obj8 = arrayList.get(i);
                    y45.h(obj8, "null cannot be cast to non-null type kotlin.Float");
                    sArr[i] = ((Float) obj8).floatValue();
                    i++;
                }
                return sArr;
            case 7:
                int size10 = ((List) vhVar.b()).size();
                sArr = new long[size10];
                while (i < size10) {
                    Object obj9 = arrayList.get(i);
                    y45.h(obj9, "null cannot be cast to non-null type kotlin.Long");
                    sArr[i] = ((Long) obj9).longValue();
                    i++;
                }
                return sArr;
            case 8:
                int size11 = ((List) vhVar.b()).size();
                sArr = new double[size11];
                while (i < size11) {
                    Object obj10 = arrayList.get(i);
                    y45.h(obj10, "null cannot be cast to non-null type kotlin.Double");
                    sArr[i] = ((Double) obj10).doubleValue();
                    i++;
                }
                return sArr;
        }
    }

    public static final KCallableImpl b(Object obj) {
        KCallableImpl kCallableImpl = obj instanceof KCallableImpl ? (KCallableImpl) obj : null;
        if (kCallableImpl != null) {
            return kCallableImpl;
        }
        KFunctionImpl kFunctionImplC = c(obj);
        return kFunctionImplC != null ? kFunctionImplC : d(obj);
    }

    public static final KFunctionImpl c(Object obj) {
        KFunctionImpl kFunctionImpl = obj instanceof KFunctionImpl ? (KFunctionImpl) obj : null;
        if (kFunctionImpl != null) {
            return kFunctionImpl;
        }
        FunctionReference functionReference = obj instanceof FunctionReference ? (FunctionReference) obj : null;
        be5 be5VarCompute = functionReference != null ? functionReference.compute() : null;
        if (be5VarCompute instanceof KFunctionImpl) {
            return (KFunctionImpl) be5VarCompute;
        }
        return null;
    }

    public static final KPropertyImpl d(Object obj) {
        KPropertyImpl kPropertyImpl = obj instanceof KPropertyImpl ? (KPropertyImpl) obj : null;
        if (kPropertyImpl != null) {
            return kPropertyImpl;
        }
        PropertyReference propertyReference = obj instanceof PropertyReference ? (PropertyReference) obj : null;
        be5 be5VarCompute = propertyReference != null ? propertyReference.compute() : null;
        if (be5VarCompute instanceof KPropertyImpl) {
            return (KPropertyImpl) be5VarCompute;
        }
        return null;
    }

    public static final List e(dd ddVar) {
        Annotation annotationO;
        y45.j(ddVar, "<this>");
        md<gd> annotations = ddVar.getAnnotations();
        ArrayList arrayList = new ArrayList();
        for (gd gdVar : annotations) {
            yt9 source = gdVar.getSource();
            if (source instanceof np8) {
                annotationO = ((np8) source).d();
            } else if (source instanceof uw8.a) {
                bq8 bq8VarC = ((uw8.a) source).c();
                pp8 pp8Var = bq8VarC instanceof pp8 ? (pp8) bq8VarC : null;
                annotationO = pp8Var != null ? pp8Var.O() : null;
            } else {
                annotationO = o(gdVar);
            }
            if (annotationO != null) {
                arrayList.add(annotationO);
            }
        }
        return s(arrayList);
    }

    public static final Class f(Class cls) {
        y45.j(cls, "<this>");
        return Array.newInstance((Class<?>) cls, 0).getClass();
    }

    public static final Object g(Type type) {
        y45.j(type, "type");
        if (!(type instanceof Class) || !((Class) type).isPrimitive()) {
            return null;
        }
        if (y45.e(type, Boolean.TYPE)) {
            return Boolean.FALSE;
        }
        if (y45.e(type, Character.TYPE)) {
            return (char) 0;
        }
        if (y45.e(type, Byte.TYPE)) {
            return (byte) 0;
        }
        if (y45.e(type, Short.TYPE)) {
            return (short) 0;
        }
        if (y45.e(type, Integer.TYPE)) {
            return 0;
        }
        if (y45.e(type, Float.TYPE)) {
            return Float.valueOf(0.0f);
        }
        if (y45.e(type, Long.TYPE)) {
            return 0L;
        }
        if (y45.e(type, Double.TYPE)) {
            return Double.valueOf(0.0d);
        }
        if (y45.e(type, Void.TYPE)) {
            throw new IllegalStateException("Parameter with void type is illegal");
        }
        throw new UnsupportedOperationException("Unknown primitive: " + type);
    }

    public static final kotlin.reflect.jvm.internal.impl.descriptors.a h(Class cls, g gVar, cy6 cy6Var, xcb xcbVar, se0 se0Var, s74 s74Var) {
        List<ProtoBuf$TypeParameter> typeParameterList;
        y45.j(cls, "moduleAnchor");
        y45.j(gVar, "proto");
        y45.j(cy6Var, "nameResolver");
        y45.j(xcbVar, "typeTable");
        y45.j(se0Var, "metadataVersion");
        y45.j(s74Var, "createDescriptor");
        tw8 tw8VarA = lq6.a(cls);
        if (gVar instanceof ProtoBuf$Function) {
            typeParameterList = ((ProtoBuf$Function) gVar).getTypeParameterList();
        } else {
            if (!(gVar instanceof ProtoBuf$Property)) {
                throw new IllegalStateException(("Unsupported message: " + gVar).toString());
            }
            typeParameterList = ((ProtoBuf$Property) gVar).getTypeParameterList();
        }
        List<ProtoBuf$TypeParameter> list = typeParameterList;
        e92 e92VarA = tw8VarA.a();
        qq6 qq6VarB = tw8VarA.b();
        qob qobVarB = qob.b.b();
        y45.i(list, "typeParameters");
        return (kotlin.reflect.jvm.internal.impl.descriptors.a) s74Var.invoke(new MemberDeserializer(new i92(e92VarA, cy6Var, qq6VarB, xcbVar, qobVarB, se0Var, null, null, list)), gVar);
    }

    public static final ro8 i(kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
        y45.j(aVar, "<this>");
        if (aVar.Z() == null) {
            return null;
        }
        xt1 xt1VarB = aVar.b();
        y45.h(xt1VarB, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
        return ((qw0) xt1VarB).R();
    }

    public static final o54 j() {
        return a;
    }

    public static final boolean k(ff5 ff5Var) {
        eh5 eh5VarH;
        y45.j(ff5Var, "<this>");
        KTypeImpl kTypeImpl = ff5Var instanceof KTypeImpl ? (KTypeImpl) ff5Var : null;
        return (kTypeImpl == null || (eh5VarH = kTypeImpl.h()) == null || !h05.c(eh5VarH)) ? false : true;
    }

    public static final Class l(ClassLoader classLoader, xw0 xw0Var, int i) {
        m85 m85Var = m85.a;
        p54 p54VarJ = xw0Var.b().j();
        y45.i(p54VarJ, "kotlinClassId.asSingleFqName().toUnsafe()");
        xw0 xw0VarN = m85Var.n(p54VarJ);
        if (xw0VarN != null) {
            xw0Var = xw0VarN;
        }
        String strB = xw0Var.h().b();
        y45.i(strB, "javaClassId.packageFqName.asString()");
        String strB2 = xw0Var.i().b();
        y45.i(strB2, "javaClassId.relativeClassName.asString()");
        return m(classLoader, strB, strB2, i);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final Class m(ClassLoader classLoader, String str, String str2, int i) {
        if (y45.e(str, "kotlin")) {
            switch (str2.hashCode()) {
                case -901856463:
                    if (str2.equals("BooleanArray")) {
                        return boolean[].class;
                    }
                    break;
                case -763279523:
                    if (str2.equals("ShortArray")) {
                        return short[].class;
                    }
                    break;
                case -755911549:
                    if (str2.equals("CharArray")) {
                        return char[].class;
                    }
                    break;
                case -74930671:
                    if (str2.equals("ByteArray")) {
                        return byte[].class;
                    }
                    break;
                case 22374632:
                    if (str2.equals("DoubleArray")) {
                        return double[].class;
                    }
                    break;
                case 63537721:
                    if (str2.equals("Array")) {
                        return Object[].class;
                    }
                    break;
                case 601811914:
                    if (str2.equals("IntArray")) {
                        return int[].class;
                    }
                    break;
                case 948852093:
                    if (str2.equals("FloatArray")) {
                        return float[].class;
                    }
                    break;
                case 2104330525:
                    if (str2.equals("LongArray")) {
                        return long[].class;
                    }
                    break;
            }
        }
        StringBuilder sb = new StringBuilder();
        if (i > 0) {
            for (int i2 = 0; i2 < i; i2++) {
                sb.append("[");
            }
            sb.append("L");
        }
        if (str.length() > 0) {
            sb.append(str + '.');
        }
        sb.append(g1a.M(str2, '.', '$', false, 4, null));
        if (i > 0) {
            sb.append(ProcessInfo.SPLIT_NEW_VERSION);
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return xp8.a(classLoader, string);
    }

    public static Class n(ClassLoader classLoader, xw0 xw0Var, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return l(classLoader, xw0Var, i);
    }

    public static final Annotation o(gd gdVar) {
        qw0 qw0VarI = DescriptorUtilsKt.i(gdVar);
        Class clsP = qw0VarI != null ? p(qw0VarI) : null;
        if (clsP == null) {
            clsP = null;
        }
        if (clsP == null) {
            return null;
        }
        Set<Map.Entry> setEntrySet = gdVar.f().entrySet();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : setEntrySet) {
            by6 by6Var = (by6) entry.getKey();
            pf1 pf1Var = (pf1) entry.getValue();
            ClassLoader classLoader = clsP.getClassLoader();
            y45.i(classLoader, "annotationClass.classLoader");
            Object objR = r(pf1Var, classLoader);
            Pair pairA = objR != null ? abb.a(by6Var.b(), objR) : null;
            if (pairA != null) {
                arrayList.add(pairA);
            }
        }
        return (Annotation) AnnotationConstructorCallerKt.e(clsP, kotlin.collections.a.y(arrayList), null, 4, null);
    }

    public static final Class p(qw0 qw0Var) {
        y45.j(qw0Var, "<this>");
        yt9 source = qw0Var.getSource();
        y45.i(source, "source");
        if (source instanceof ch5) {
            c cVarD = ((ch5) source).d();
            y45.h(cVarD, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.components.ReflectKotlinClass");
            return ((qq8) cVarD).e();
        }
        if (source instanceof uw8.a) {
            bq8 bq8VarC = ((uw8.a) source).c();
            y45.h(bq8VarC, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.structure.ReflectJavaClass");
            return ((ReflectJavaClass) bq8VarC).getElement();
        }
        xw0 xw0VarK = DescriptorUtilsKt.k(qw0Var);
        if (xw0VarK == null) {
            return null;
        }
        return l(ReflectClassUtilKt.f(qw0Var.getClass()), xw0VarK, 0);
    }

    public static final KVisibility q(c92 c92Var) {
        y45.j(c92Var, "<this>");
        if (y45.e(c92Var, b92.e)) {
            return KVisibility.PUBLIC;
        }
        if (y45.e(c92Var, b92.c)) {
            return KVisibility.PROTECTED;
        }
        if (y45.e(c92Var, b92.d)) {
            return KVisibility.INTERNAL;
        }
        if (y45.e(c92Var, b92.a) ? true : y45.e(c92Var, b92.b)) {
            return KVisibility.PRIVATE;
        }
        return null;
    }

    public static final Object r(pf1 pf1Var, ClassLoader classLoader) {
        if (pf1Var instanceof ld) {
            return o((gd) ((ld) pf1Var).b());
        }
        if (pf1Var instanceof vh) {
            return a((vh) pf1Var, classLoader);
        }
        if (pf1Var instanceof fb3) {
            Pair pair = (Pair) ((fb3) pf1Var).b();
            xw0 xw0Var = (xw0) pair.component1();
            by6 by6Var = (by6) pair.component2();
            Class clsN = n(classLoader, xw0Var, 0, 4, null);
            if (clsN != null) {
                return zkb.a(clsN, by6Var.b());
            }
        } else if (pf1Var instanceof ee5) {
            ee5.b bVar = (ee5.b) ((ee5) pf1Var).b();
            if (bVar instanceof ee5.b.C0341b) {
                ee5.b.C0341b c0341b = (ee5.b.C0341b) bVar;
                return l(classLoader, c0341b.b(), c0341b.a());
            }
            if (!(bVar instanceof ee5.b.a)) {
                throw new NoWhenBranchMatchedException();
            }
            px0 px0VarC = ((ee5.b.a) bVar).a().I0().c();
            qw0 qw0Var = px0VarC instanceof qw0 ? (qw0) px0VarC : null;
            if (qw0Var != null) {
                return p(qw0Var);
            }
        } else {
            if (!(pf1Var instanceof jd3 ? true : pf1Var instanceof i37)) {
                return pf1Var.b();
            }
        }
        return null;
    }

    public static final List s(List list) throws IllegalAccessException, InvocationTargetException {
        List listE;
        List<Annotation> list2 = list;
        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                if (y45.e(ed5.b(ed5.a((Annotation) it.next())).getSimpleName(), "Container")) {
                    list = new ArrayList();
                    for (Annotation annotation : list2) {
                        Class clsB = ed5.b(ed5.a(annotation));
                        if (!y45.e(clsB.getSimpleName(), "Container") || clsB.getAnnotation(ps8.class) == null) {
                            listE = x71.e(annotation);
                        } else {
                            Object objInvoke = clsB.getDeclaredMethod(ES6Iterator.VALUE_PROPERTY, null).invoke(annotation, null);
                            y45.h(objInvoke, "null cannot be cast to non-null type kotlin.Array<out kotlin.Annotation>");
                            listE = fi.f((Annotation[]) objInvoke);
                        }
                        d81.C(list, listE);
                    }
                    break;
                }
            }
        }
        return list;
    }
}
