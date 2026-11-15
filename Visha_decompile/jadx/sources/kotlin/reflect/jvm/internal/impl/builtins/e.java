package kotlin.reflect.jvm.internal.impl.builtins;

import com.hisavana.common.tracking.TrackingKey;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.by6;
import defpackage.o54;
import defpackage.p54;
import defpackage.v71;
import defpackage.xw0;
import defpackage.y45;
import defpackage.y71;
import defpackage.ye9;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind;
import org.mozilla.javascript.ES6Iterator;

public final class e {
    public static final o54 A;
    public static final o54 B;
    public static final Set C;
    public static final e a = new e();
    public static final by6 b;
    public static final by6 c;
    public static final by6 d;
    public static final by6 e;
    public static final by6 f;
    public static final by6 g;
    public static final String h;
    public static final by6 i;
    public static final by6 j;
    public static final by6 k;
    public static final by6 l;
    public static final o54 m;
    public static final o54 n;
    public static final o54 o;
    public static final o54 p;
    public static final o54 q;
    public static final o54 r;
    public static final o54 s;
    public static final List t;
    public static final by6 u;
    public static final o54 v;
    public static final o54 w;
    public static final o54 x;
    public static final o54 y;
    public static final o54 z;

    public static final class a {
        public static final o54 A;
        public static final xw0 A0;
        public static final o54 B;
        public static final xw0 B0;
        public static final o54 C;
        public static final xw0 C0;
        public static final o54 D;
        public static final o54 D0;
        public static final o54 E;
        public static final o54 E0;
        public static final xw0 F;
        public static final o54 F0;
        public static final o54 G;
        public static final o54 G0;
        public static final o54 H;
        public static final Set H0;
        public static final xw0 I;
        public static final Set I0;
        public static final o54 J;
        public static final Map J0;
        public static final o54 K;
        public static final Map K0;
        public static final o54 L;
        public static final xw0 M;
        public static final o54 N;
        public static final xw0 O;
        public static final o54 P;
        public static final o54 Q;
        public static final o54 R;
        public static final o54 S;
        public static final o54 T;
        public static final o54 U;
        public static final o54 V;
        public static final o54 W;
        public static final o54 X;
        public static final o54 Y;
        public static final o54 Z;
        public static final a a;
        public static final o54 a0;
        public static final p54 b;
        public static final o54 b0;
        public static final p54 c;
        public static final o54 c0;
        public static final p54 d;
        public static final o54 d0;
        public static final o54 e;
        public static final o54 e0;
        public static final p54 f;
        public static final o54 f0;
        public static final p54 g;
        public static final o54 g0;
        public static final p54 h;
        public static final o54 h0;
        public static final p54 i;
        public static final o54 i0;
        public static final p54 j;
        public static final p54 j0;
        public static final p54 k;
        public static final p54 k0;
        public static final p54 l;
        public static final p54 l0;
        public static final p54 m;
        public static final p54 m0;
        public static final p54 n;
        public static final p54 n0;
        public static final p54 o;
        public static final p54 o0;
        public static final p54 p;
        public static final p54 p0;
        public static final p54 q;
        public static final p54 q0;
        public static final p54 r;
        public static final p54 r0;
        public static final p54 s;
        public static final p54 s0;
        public static final p54 t;
        public static final xw0 t0;
        public static final o54 u;
        public static final p54 u0;
        public static final o54 v;
        public static final o54 v0;
        public static final p54 w;
        public static final o54 w0;
        public static final p54 x;
        public static final o54 x0;
        public static final o54 y;
        public static final o54 y0;
        public static final o54 z;
        public static final xw0 z0;

        static {
            a aVar = new a();
            a = aVar;
            b = aVar.d("Any");
            c = aVar.d("Nothing");
            d = aVar.d("Cloneable");
            e = aVar.c("Suppress");
            f = aVar.d("Unit");
            g = aVar.d("CharSequence");
            h = aVar.d("String");
            i = aVar.d("Array");
            j = aVar.d("Boolean");
            k = aVar.d("Char");
            l = aVar.d("Byte");
            m = aVar.d("Short");
            n = aVar.d("Int");
            o = aVar.d("Long");
            p = aVar.d("Float");
            q = aVar.d("Double");
            r = aVar.d(DataTypes.OBJ_NUMBER);
            s = aVar.d("Enum");
            t = aVar.d("Function");
            u = aVar.c("Throwable");
            v = aVar.c("Comparable");
            w = aVar.f("IntRange");
            x = aVar.f("LongRange");
            y = aVar.c("Deprecated");
            z = aVar.c("DeprecatedSinceKotlin");
            A = aVar.c("DeprecationLevel");
            B = aVar.c("ReplaceWith");
            C = aVar.c("ExtensionFunctionType");
            D = aVar.c("ContextFunctionTypeParams");
            o54 o54VarC = aVar.c("ParameterName");
            E = o54VarC;
            xw0 xw0VarM = xw0.m(o54VarC);
            y45.i(xw0VarM, "topLevel(parameterName)");
            F = xw0VarM;
            G = aVar.c("Annotation");
            o54 o54VarA = aVar.a("Target");
            H = o54VarA;
            xw0 xw0VarM2 = xw0.m(o54VarA);
            y45.i(xw0VarM2, "topLevel(target)");
            I = xw0VarM2;
            J = aVar.a("AnnotationTarget");
            K = aVar.a("AnnotationRetention");
            o54 o54VarA2 = aVar.a("Retention");
            L = o54VarA2;
            xw0 xw0VarM3 = xw0.m(o54VarA2);
            y45.i(xw0VarM3, "topLevel(retention)");
            M = xw0VarM3;
            o54 o54VarA3 = aVar.a("Repeatable");
            N = o54VarA3;
            xw0 xw0VarM4 = xw0.m(o54VarA3);
            y45.i(xw0VarM4, "topLevel(repeatable)");
            O = xw0VarM4;
            P = aVar.a("MustBeDocumented");
            Q = aVar.c("UnsafeVariance");
            R = aVar.c("PublishedApi");
            S = aVar.e("AccessibleLateinitPropertyLiteral");
            T = aVar.b("Iterator");
            U = aVar.b("Iterable");
            V = aVar.b("Collection");
            W = aVar.b("List");
            X = aVar.b("ListIterator");
            Y = aVar.b("Set");
            o54 o54VarB = aVar.b("Map");
            Z = o54VarB;
            o54 o54VarC2 = o54VarB.c(by6.g("Entry"));
            y45.i(o54VarC2, "map.child(Name.identifier(\"Entry\"))");
            a0 = o54VarC2;
            b0 = aVar.b("MutableIterator");
            c0 = aVar.b("MutableIterable");
            d0 = aVar.b("MutableCollection");
            e0 = aVar.b("MutableList");
            f0 = aVar.b("MutableListIterator");
            g0 = aVar.b("MutableSet");
            o54 o54VarB2 = aVar.b("MutableMap");
            h0 = o54VarB2;
            o54 o54VarC3 = o54VarB2.c(by6.g("MutableEntry"));
            y45.i(o54VarC3, "mutableMap.child(Name.identifier(\"MutableEntry\"))");
            i0 = o54VarC3;
            j0 = g("KClass");
            k0 = g("KCallable");
            l0 = g("KProperty0");
            m0 = g("KProperty1");
            n0 = g("KProperty2");
            o0 = g("KMutableProperty0");
            p0 = g("KMutableProperty1");
            q0 = g("KMutableProperty2");
            p54 p54VarG = g("KProperty");
            r0 = p54VarG;
            s0 = g("KMutableProperty");
            xw0 xw0VarM5 = xw0.m(p54VarG.l());
            y45.i(xw0VarM5, "topLevel(kPropertyFqName.toSafe())");
            t0 = xw0VarM5;
            u0 = g("KDeclarationContainer");
            o54 o54VarC4 = aVar.c("UByte");
            v0 = o54VarC4;
            o54 o54VarC5 = aVar.c("UShort");
            w0 = o54VarC5;
            o54 o54VarC6 = aVar.c("UInt");
            x0 = o54VarC6;
            o54 o54VarC7 = aVar.c("ULong");
            y0 = o54VarC7;
            xw0 xw0VarM6 = xw0.m(o54VarC4);
            y45.i(xw0VarM6, "topLevel(uByteFqName)");
            z0 = xw0VarM6;
            xw0 xw0VarM7 = xw0.m(o54VarC5);
            y45.i(xw0VarM7, "topLevel(uShortFqName)");
            A0 = xw0VarM7;
            xw0 xw0VarM8 = xw0.m(o54VarC6);
            y45.i(xw0VarM8, "topLevel(uIntFqName)");
            B0 = xw0VarM8;
            xw0 xw0VarM9 = xw0.m(o54VarC7);
            y45.i(xw0VarM9, "topLevel(uLongFqName)");
            C0 = xw0VarM9;
            D0 = aVar.c("UByteArray");
            E0 = aVar.c("UShortArray");
            F0 = aVar.c("UIntArray");
            G0 = aVar.c("ULongArray");
            HashSet hashSetF = v71.f(PrimitiveType.values().length);
            for (PrimitiveType primitiveType : PrimitiveType.values()) {
                hashSetF.add(primitiveType.getTypeName());
            }
            H0 = hashSetF;
            HashSet hashSetF2 = v71.f(PrimitiveType.values().length);
            for (PrimitiveType primitiveType2 : PrimitiveType.values()) {
                hashSetF2.add(primitiveType2.getArrayTypeName());
            }
            I0 = hashSetF2;
            HashMap mapE = v71.e(PrimitiveType.values().length);
            for (PrimitiveType primitiveType3 : PrimitiveType.values()) {
                a aVar2 = a;
                String strB = primitiveType3.getTypeName().b();
                y45.i(strB, "primitiveType.typeName.asString()");
                mapE.put(aVar2.d(strB), primitiveType3);
            }
            J0 = mapE;
            HashMap mapE2 = v71.e(PrimitiveType.values().length);
            for (PrimitiveType primitiveType4 : PrimitiveType.values()) {
                a aVar3 = a;
                String strB2 = primitiveType4.getArrayTypeName().b();
                y45.i(strB2, "primitiveType.arrayTypeName.asString()");
                mapE2.put(aVar3.d(strB2), primitiveType4);
            }
            K0 = mapE2;
        }

        public static final p54 g(String str) {
            y45.j(str, "simpleName");
            p54 p54VarJ = e.s.c(by6.g(str)).j();
            y45.i(p54VarJ, "KOTLIN_REFLECT_FQ_NAME.c…r(simpleName)).toUnsafe()");
            return p54VarJ;
        }

        public final o54 a(String str) {
            o54 o54VarC = e.w.c(by6.g(str));
            y45.i(o54VarC, "ANNOTATION_PACKAGE_FQ_NA…e.identifier(simpleName))");
            return o54VarC;
        }

        public final o54 b(String str) {
            o54 o54VarC = e.x.c(by6.g(str));
            y45.i(o54VarC, "COLLECTIONS_PACKAGE_FQ_N…e.identifier(simpleName))");
            return o54VarC;
        }

        public final o54 c(String str) {
            o54 o54VarC = e.v.c(by6.g(str));
            y45.i(o54VarC, "BUILT_INS_PACKAGE_FQ_NAM…e.identifier(simpleName))");
            return o54VarC;
        }

        public final p54 d(String str) {
            p54 p54VarJ = c(str).j();
            y45.i(p54VarJ, "fqName(simpleName).toUnsafe()");
            return p54VarJ;
        }

        public final o54 e(String str) {
            o54 o54VarC = e.A.c(by6.g(str));
            y45.i(o54VarC, "KOTLIN_INTERNAL_FQ_NAME.…e.identifier(simpleName))");
            return o54VarC;
        }

        public final p54 f(String str) {
            p54 p54VarJ = e.y.c(by6.g(str)).j();
            y45.i(p54VarJ, "RANGES_PACKAGE_FQ_NAME.c…r(simpleName)).toUnsafe()");
            return p54VarJ;
        }
    }

    static {
        by6 by6VarG = by6.g("field");
        y45.i(by6VarG, "identifier(\"field\")");
        b = by6VarG;
        by6 by6VarG2 = by6.g(ES6Iterator.VALUE_PROPERTY);
        y45.i(by6VarG2, "identifier(\"value\")");
        c = by6VarG2;
        by6 by6VarG3 = by6.g("values");
        y45.i(by6VarG3, "identifier(\"values\")");
        d = by6VarG3;
        by6 by6VarG4 = by6.g(TranSearchIndexablesContract.TranRawData.COLUMN_ENTRIES);
        y45.i(by6VarG4, "identifier(\"entries\")");
        e = by6VarG4;
        by6 by6VarG5 = by6.g("valueOf");
        y45.i(by6VarG5, "identifier(\"valueOf\")");
        f = by6VarG5;
        by6 by6VarG6 = by6.g("copy");
        y45.i(by6VarG6, "identifier(\"copy\")");
        g = by6VarG6;
        h = "component";
        by6 by6VarG7 = by6.g("hashCode");
        y45.i(by6VarG7, "identifier(\"hashCode\")");
        i = by6VarG7;
        by6 by6VarG8 = by6.g(TrackingKey.CODE);
        y45.i(by6VarG8, "identifier(\"code\")");
        j = by6VarG8;
        by6 by6VarG9 = by6.g("nextChar");
        y45.i(by6VarG9, "identifier(\"nextChar\")");
        k = by6VarG9;
        by6 by6VarG10 = by6.g("count");
        y45.i(by6VarG10, "identifier(\"count\")");
        l = by6VarG10;
        m = new o54("<dynamic>");
        o54 o54Var = new o54("kotlin.coroutines");
        n = o54Var;
        o = new o54("kotlin.coroutines.jvm.internal");
        p = new o54("kotlin.coroutines.intrinsics");
        o54 o54VarC = o54Var.c(by6.g("Continuation"));
        y45.i(o54VarC, "COROUTINES_PACKAGE_FQ_NA…entifier(\"Continuation\"))");
        q = o54VarC;
        r = new o54("kotlin.Result");
        o54 o54Var2 = new o54("kotlin.reflect");
        s = o54Var2;
        t = y71.n("KProperty", "KMutableProperty", "KFunction", "KSuspendFunction");
        by6 by6VarG11 = by6.g("kotlin");
        y45.i(by6VarG11, "identifier(\"kotlin\")");
        u = by6VarG11;
        o54 o54VarK = o54.k(by6VarG11);
        y45.i(o54VarK, "topLevel(BUILT_INS_PACKAGE_NAME)");
        v = o54VarK;
        o54 o54VarC2 = o54VarK.c(by6.g("annotation"));
        y45.i(o54VarC2, "BUILT_INS_PACKAGE_FQ_NAM…identifier(\"annotation\"))");
        w = o54VarC2;
        o54 o54VarC3 = o54VarK.c(by6.g("collections"));
        y45.i(o54VarC3, "BUILT_INS_PACKAGE_FQ_NAM…dentifier(\"collections\"))");
        x = o54VarC3;
        o54 o54VarC4 = o54VarK.c(by6.g("ranges"));
        y45.i(o54VarC4, "BUILT_INS_PACKAGE_FQ_NAM…ame.identifier(\"ranges\"))");
        y = o54VarC4;
        o54 o54VarC5 = o54VarK.c(by6.g("text"));
        y45.i(o54VarC5, "BUILT_INS_PACKAGE_FQ_NAM…(Name.identifier(\"text\"))");
        z = o54VarC5;
        o54 o54VarC6 = o54VarK.c(by6.g("internal"));
        y45.i(o54VarC6, "BUILT_INS_PACKAGE_FQ_NAM…e.identifier(\"internal\"))");
        A = o54VarC6;
        B = new o54("error.NonExistentClass");
        C = ye9.j(o54VarK, o54VarC3, o54VarC4, o54VarC2, o54Var2, o54VarC6, o54Var);
    }

    public static final xw0 a(int i2) {
        return new xw0(v, by6.g(b(i2)));
    }

    public static final String b(int i2) {
        return "Function" + i2;
    }

    public static final o54 c(PrimitiveType primitiveType) {
        y45.j(primitiveType, "primitiveType");
        o54 o54VarC = v.c(primitiveType.getTypeName());
        y45.i(o54VarC, "BUILT_INS_PACKAGE_FQ_NAM…d(primitiveType.typeName)");
        return o54VarC;
    }

    public static final String d(int i2) {
        return FunctionClassKind.SuspendFunction.getClassNamePrefix() + i2;
    }

    public static final boolean e(p54 p54Var) {
        y45.j(p54Var, "arrayFqName");
        return a.K0.get(p54Var) != null;
    }
}
