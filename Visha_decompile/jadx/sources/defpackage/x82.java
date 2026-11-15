package defpackage;

import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public abstract class x82 {
    public static final px0 a(xt1 xt1Var) {
        y45.j(xt1Var, "<this>");
        xt1 xt1VarB = xt1Var.b();
        if (xt1VarB == null || (xt1Var instanceof dv7)) {
            return null;
        }
        if (!b(xt1VarB)) {
            return a(xt1VarB);
        }
        if (xt1VarB instanceof px0) {
            return (px0) xt1VarB;
        }
        return null;
    }

    public static final boolean b(xt1 xt1Var) {
        y45.j(xt1Var, "<this>");
        return xt1Var.b() instanceof dv7;
    }

    public static final boolean c(e eVar) {
        sm9 sm9VarQ;
        eh5 eh5VarY;
        eh5 returnType;
        y45.j(eVar, "<this>");
        xt1 xt1VarB = eVar.b();
        qw0 qw0Var = xt1VarB instanceof qw0 ? (qw0) xt1VarB : null;
        if (qw0Var == null) {
            return false;
        }
        qw0 qw0Var2 = h05.f(qw0Var) ? qw0Var : null;
        if (qw0Var2 == null || (sm9VarQ = qw0Var2.q()) == null || (eh5VarY = TypeUtilsKt.y(sm9VarQ)) == null || (returnType = eVar.getReturnType()) == null || !y45.e(eVar.getName(), ak7.e)) {
            return false;
        }
        if ((!TypeUtilsKt.n(returnType) && !TypeUtilsKt.o(returnType)) || eVar.f().size() != 1) {
            return false;
        }
        eh5 type = ((h) eVar.f().get(0)).getType();
        y45.i(type, "valueParameters[0].type");
        return y45.e(TypeUtilsKt.y(type), eh5VarY) && eVar.y0().isEmpty() && eVar.b0() == null;
    }

    public static final qw0 d(qq6 qq6Var, o54 o54Var, or5 or5Var) {
        px0 px0VarF;
        MemberScope memberScopeD;
        y45.j(qq6Var, "<this>");
        y45.j(o54Var, "fqName");
        y45.j(or5Var, "lookupLocation");
        if (o54Var.d()) {
            return null;
        }
        o54 o54VarE = o54Var.e();
        y45.i(o54VarE, "fqName.parent()");
        MemberScope memberScopeP = qq6Var.C(o54VarE).p();
        by6 by6VarG = o54Var.g();
        y45.i(by6VarG, "fqName.shortName()");
        px0 px0VarF2 = memberScopeP.f(by6VarG, or5Var);
        qw0 qw0Var = px0VarF2 instanceof qw0 ? (qw0) px0VarF2 : null;
        if (qw0Var != null) {
            return qw0Var;
        }
        o54 o54VarE2 = o54Var.e();
        y45.i(o54VarE2, "fqName.parent()");
        qw0 qw0VarD = d(qq6Var, o54VarE2, or5Var);
        if (qw0VarD == null || (memberScopeD = qw0VarD.D()) == null) {
            px0VarF = null;
        } else {
            by6 by6VarG2 = o54Var.g();
            y45.i(by6VarG2, "fqName.shortName()");
            px0VarF = memberScopeD.f(by6VarG2, or5Var);
        }
        if (px0VarF instanceof qw0) {
            return (qw0) px0VarF;
        }
        return null;
    }
}
