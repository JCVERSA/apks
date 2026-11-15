package kotlin.reflect.jvm.internal.impl.descriptors;

import defpackage.by6;
import defpackage.e74;
import defpackage.ebb;
import defpackage.i81;
import defpackage.o54;
import defpackage.ot8;
import defpackage.pv7;
import defpackage.px0;
import defpackage.qq6;
import defpackage.qw0;
import defpackage.xw0;
import defpackage.y45;
import defpackage.zc9;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.sequences.SequencesKt___SequencesKt;

public abstract class FindClassInModuleKt {
    public static final qw0 a(qq6 qq6Var, xw0 xw0Var) {
        y45.j(qq6Var, "<this>");
        y45.j(xw0Var, "classId");
        px0 px0VarB = b(qq6Var, xw0Var);
        if (px0VarB instanceof qw0) {
            return (qw0) px0VarB;
        }
        return null;
    }

    public static final px0 b(qq6 qq6Var, xw0 xw0Var) {
        px0 px0VarF;
        y45.j(qq6Var, "<this>");
        y45.j(xw0Var, "classId");
        qq6 qq6VarA = ot8.a(qq6Var);
        if (qq6VarA == null) {
            o54 o54VarH = xw0Var.h();
            y45.i(o54VarH, "classId.packageFqName");
            pv7 pv7VarC = qq6Var.C(o54VarH);
            List listF = xw0Var.i().f();
            y45.i(listF, "classId.relativeClassName.pathSegments()");
            MemberScope memberScopeP = pv7VarC.p();
            Object objO0 = i81.o0(listF);
            y45.i(objO0, "segments.first()");
            px0VarF = memberScopeP.f((by6) objO0, NoLookupLocation.FROM_DESERIALIZATION);
            if (px0VarF == null) {
                return null;
            }
            for (by6 by6Var : listF.subList(1, listF.size())) {
                if (!(px0VarF instanceof qw0)) {
                    return null;
                }
                MemberScope memberScopeD = ((qw0) px0VarF).D();
                y45.i(by6Var, "name");
                px0 px0VarF2 = memberScopeD.f(by6Var, NoLookupLocation.FROM_DESERIALIZATION);
                px0VarF = px0VarF2 instanceof qw0 ? (qw0) px0VarF2 : null;
                if (px0VarF == null) {
                    return null;
                }
            }
        } else {
            o54 o54VarH2 = xw0Var.h();
            y45.i(o54VarH2, "classId.packageFqName");
            pv7 pv7VarC2 = qq6VarA.C(o54VarH2);
            List listF2 = xw0Var.i().f();
            y45.i(listF2, "classId.relativeClassName.pathSegments()");
            MemberScope memberScopeP2 = pv7VarC2.p();
            Object objO1 = i81.o0(listF2);
            y45.i(objO1, "segments.first()");
            px0 px0VarF3 = memberScopeP2.f((by6) objO1, NoLookupLocation.FROM_DESERIALIZATION);
            if (px0VarF3 == null) {
                px0VarF3 = null;
                break;
            }
            for (by6 by6Var2 : listF2.subList(1, listF2.size())) {
                if (px0VarF3 instanceof qw0) {
                    MemberScope memberScopeD2 = ((qw0) px0VarF3).D();
                    y45.i(by6Var2, "name");
                    px0 px0VarF4 = memberScopeD2.f(by6Var2, NoLookupLocation.FROM_DESERIALIZATION);
                    px0VarF3 = px0VarF4 instanceof qw0 ? (qw0) px0VarF4 : null;
                    if (px0VarF3 != null) {
                    }
                }
                px0VarF3 = null;
            }
            if (px0VarF3 != null) {
                return px0VarF3;
            }
            o54 o54VarH3 = xw0Var.h();
            y45.i(o54VarH3, "classId.packageFqName");
            pv7 pv7VarC3 = qq6Var.C(o54VarH3);
            List listF3 = xw0Var.i().f();
            y45.i(listF3, "classId.relativeClassName.pathSegments()");
            MemberScope memberScopeP3 = pv7VarC3.p();
            Object objO2 = i81.o0(listF3);
            y45.i(objO2, "segments.first()");
            px0VarF = memberScopeP3.f((by6) objO2, NoLookupLocation.FROM_DESERIALIZATION);
            if (px0VarF == null) {
                return null;
            }
            for (by6 by6Var3 : listF3.subList(1, listF3.size())) {
                if (!(px0VarF instanceof qw0)) {
                    return null;
                }
                MemberScope memberScopeD3 = ((qw0) px0VarF).D();
                y45.i(by6Var3, "name");
                px0 px0VarF5 = memberScopeD3.f(by6Var3, NoLookupLocation.FROM_DESERIALIZATION);
                px0VarF = px0VarF5 instanceof qw0 ? (qw0) px0VarF5 : null;
                if (px0VarF == null) {
                    return null;
                }
            }
        }
        return px0VarF;
    }

    public static final qw0 c(qq6 qq6Var, xw0 xw0Var, NotFoundClasses notFoundClasses) {
        y45.j(qq6Var, "<this>");
        y45.j(xw0Var, "classId");
        y45.j(notFoundClasses, "notFoundClasses");
        qw0 qw0VarA = a(qq6Var, xw0Var);
        return qw0VarA != null ? qw0VarA : notFoundClasses.d(xw0Var, SequencesKt___SequencesKt.c0(SequencesKt___SequencesKt.R(zc9.p(xw0Var, FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$1.INSTANCE), new e74() {
            @Override
            public final Integer invoke(xw0 xw0Var2) {
                y45.j(xw0Var2, "it");
                return 0;
            }
        })));
    }

    public static final ebb d(qq6 qq6Var, xw0 xw0Var) {
        y45.j(qq6Var, "<this>");
        y45.j(xw0Var, "classId");
        px0 px0VarB = b(qq6Var, xw0Var);
        if (px0VarB instanceof ebb) {
            return (ebb) px0VarB;
        }
        return null;
    }
}
