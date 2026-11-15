package defpackage;

import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.c;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.n;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.utils.FunctionsKt;
import org.apache.commons.io.IOUtils;

public abstract class q82 {
    public static final String a(qw0 qw0Var, dcb dcbVar) {
        y45.j(qw0Var, "klass");
        y45.j(dcbVar, "typeMappingConfiguration");
        String strC = dcbVar.c(qw0Var);
        if (strC != null) {
            return strC;
        }
        xt1 xt1VarB = qw0Var.b();
        y45.i(xt1VarB, "klass.containingDeclaration");
        String strE = su9.b(qw0Var.getName()).e();
        y45.i(strE, "safeIdentifier(klass.name).identifier");
        if (xt1VarB instanceof dv7) {
            o54 o54VarD = ((dv7) xt1VarB).d();
            if (o54VarD.d()) {
                return strE;
            }
            StringBuilder sb = new StringBuilder();
            String strB = o54VarD.b();
            y45.i(strB, "fqName.asString()");
            sb.append(g1a.M(strB, '.', IOUtils.DIR_SEPARATOR_UNIX, false, 4, null));
            sb.append(IOUtils.DIR_SEPARATOR_UNIX);
            sb.append(strE);
            return sb.toString();
        }
        qw0 qw0Var2 = xt1VarB instanceof qw0 ? (qw0) xt1VarB : null;
        if (qw0Var2 == null) {
            throw new IllegalArgumentException("Unexpected container: " + xt1VarB + " for " + qw0Var);
        }
        String strE2 = dcbVar.e(qw0Var2);
        if (strE2 == null) {
            strE2 = a(qw0Var2, dcbVar);
        }
        return strE2 + '$' + strE;
    }

    public static String b(qw0 qw0Var, dcb dcbVar, int i, Object obj) {
        if ((i & 2) != 0) {
            dcbVar = ecb.a;
        }
        return a(qw0Var, dcbVar);
    }

    public static final boolean c(a aVar) {
        y45.j(aVar, "descriptor");
        if (aVar instanceof c) {
            return true;
        }
        eh5 returnType = aVar.getReturnType();
        y45.g(returnType);
        if (d.C0(returnType)) {
            eh5 returnType2 = aVar.getReturnType();
            y45.g(returnType2);
            if (!n.l(returnType2) && !(aVar instanceof vi8)) {
                return true;
            }
        }
        return false;
    }

    public static final Object d(eh5 eh5Var, rd5 rd5Var, fcb fcbVar, dcb dcbVar, gd5 gd5Var, u74 u74Var) {
        Object objF;
        eh5 eh5Var2;
        Object objD;
        y45.j(eh5Var, "kotlinType");
        y45.j(rd5Var, "factory");
        y45.j(fcbVar, hb0.KEY_NAME_MODE);
        y45.j(dcbVar, "typeMappingConfiguration");
        y45.j(u74Var, "writeGenericType");
        eh5 eh5VarD = dcbVar.d(eh5Var);
        if (eh5VarD != null) {
            return d(eh5VarD, rd5Var, fcbVar, dcbVar, gd5Var, u74Var);
        }
        if (kotlin.reflect.jvm.internal.impl.builtins.c.q(eh5Var)) {
            return d(d7a.a(eh5Var), rd5Var, fcbVar, dcbVar, gd5Var, u74Var);
        }
        yl9 yl9Var = yl9.a;
        Object objB = rcb.b(yl9Var, eh5Var, rd5Var, fcbVar);
        if (objB != null) {
            Object objA = rcb.a(rd5Var, objB, fcbVar.d());
            u74Var.invoke(eh5Var, objA, fcbVar);
            return objA;
        }
        sbb sbbVarI0 = eh5Var.I0();
        if (sbbVarI0 instanceof IntersectionTypeConstructor) {
            IntersectionTypeConstructor intersectionTypeConstructor = (IntersectionTypeConstructor) sbbVarI0;
            eh5 eh5VarG = intersectionTypeConstructor.g();
            if (eh5VarG == null) {
                eh5VarG = dcbVar.f(intersectionTypeConstructor.k());
            }
            return d(TypeUtilsKt.y(eh5VarG), rd5Var, fcbVar, dcbVar, gd5Var, u74Var);
        }
        px0 px0VarC = sbbVarI0.c();
        if (px0VarC == null) {
            throw new UnsupportedOperationException("no descriptor for type constructor of " + eh5Var);
        }
        if (id3.m(px0VarC)) {
            Object objF2 = rd5Var.f("error/NonExistentClass");
            dcbVar.a(eh5Var, (qw0) px0VarC);
            return objF2;
        }
        boolean z = px0VarC instanceof qw0;
        if (z && d.c0(eh5Var)) {
            if (eh5Var.G0().size() != 1) {
                throw new UnsupportedOperationException("arrays must have one type argument");
            }
            mcb mcbVar = (mcb) eh5Var.G0().get(0);
            eh5 type = mcbVar.getType();
            y45.i(type, "memberProjection.type");
            if (mcbVar.c() == Variance.IN_VARIANCE) {
                objD = rd5Var.f("java/lang/Object");
            } else {
                Variance varianceC = mcbVar.c();
                y45.i(varianceC, "memberProjection.projectionKind");
                objD = d(type, rd5Var, fcbVar.f(varianceC, true), dcbVar, gd5Var, u74Var);
            }
            return rd5Var.a('[' + rd5Var.e(objD));
        }
        if (!z) {
            if (px0VarC instanceof hcb) {
                eh5 eh5VarJ = TypeUtilsKt.j((hcb) px0VarC);
                if (eh5Var.J0()) {
                    eh5VarJ = TypeUtilsKt.w(eh5VarJ);
                }
                return d(eh5VarJ, rd5Var, fcbVar, dcbVar, null, FunctionsKt.b());
            }
            if ((px0VarC instanceof ebb) && fcbVar.b()) {
                return d(((ebb) px0VarC).W(), rd5Var, fcbVar, dcbVar, gd5Var, u74Var);
            }
            throw new UnsupportedOperationException("Unknown type " + eh5Var);
        }
        if (h05.b(px0VarC) && !fcbVar.c() && (eh5Var2 = (eh5) ui3.a(yl9Var, eh5Var)) != null) {
            return d(eh5Var2, rd5Var, fcbVar.g(), dcbVar, gd5Var, u74Var);
        }
        if (fcbVar.e() && d.l0((qw0) px0VarC)) {
            objF = rd5Var.b();
        } else {
            qw0 qw0Var = (qw0) px0VarC;
            qw0 qw0VarA = qw0Var.a();
            y45.i(qw0VarA, "descriptor.original");
            Object objB2 = dcbVar.b(qw0VarA);
            if (objB2 == null) {
                if (qw0Var.getKind() == ClassKind.ENUM_ENTRY) {
                    xt1 xt1VarB = qw0Var.b();
                    y45.h(xt1VarB, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    qw0Var = (qw0) xt1VarB;
                }
                qw0 qw0VarA2 = qw0Var.a();
                y45.i(qw0VarA2, "enumClassIfEnumEntry.original");
                objF = rd5Var.f(a(qw0VarA2, dcbVar));
            } else {
                objF = objB2;
            }
        }
        u74Var.invoke(eh5Var, objF, fcbVar);
        return objF;
    }

    public static Object e(eh5 eh5Var, rd5 rd5Var, fcb fcbVar, dcb dcbVar, gd5 gd5Var, u74 u74Var, int i, Object obj) {
        if ((i & 32) != 0) {
            u74Var = FunctionsKt.b();
        }
        return d(eh5Var, rd5Var, fcbVar, dcbVar, gd5Var, u74Var);
    }
}
