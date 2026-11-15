package defpackage;

import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.j;

public abstract class scb {
    public static final sm9 a(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        mgb mgbVarL0 = eh5Var.L0();
        sm9 sm9Var = mgbVarL0 instanceof sm9 ? (sm9) mgbVarL0 : null;
        if (sm9Var != null) {
            return sm9Var;
        }
        throw new IllegalStateException(("This is should be simple type: " + eh5Var).toString());
    }

    public static final eh5 b(eh5 eh5Var, List list, md mdVar) {
        y45.j(eh5Var, "<this>");
        y45.j(list, "newArguments");
        y45.j(mdVar, "newAnnotations");
        return e(eh5Var, list, mdVar, null, 4, null);
    }

    public static final eh5 c(eh5 eh5Var, List list, md mdVar, List list2) {
        y45.j(eh5Var, "<this>");
        y45.j(list, "newArguments");
        y45.j(mdVar, "newAnnotations");
        y45.j(list2, "newArgumentsForUpperBound");
        if ((list.isEmpty() || list == eh5Var.G0()) && mdVar == eh5Var.getAnnotations()) {
            return eh5Var;
        }
        j jVarH0 = eh5Var.H0();
        if ((mdVar instanceof lv3) && mdVar.isEmpty()) {
            mdVar = md.u1.b();
        }
        j jVarA = lbb.a(jVarH0, mdVar);
        mgb mgbVarL0 = eh5Var.L0();
        if (mgbVarL0 instanceof fy3) {
            fy3 fy3Var = (fy3) mgbVarL0;
            return KotlinTypeFactory.d(d(fy3Var.Q0(), list, jVarA), d(fy3Var.R0(), list2, jVarA));
        }
        if (mgbVarL0 instanceof sm9) {
            return d((sm9) mgbVarL0, list, jVarA);
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final sm9 d(sm9 sm9Var, List list, j jVar) {
        y45.j(sm9Var, "<this>");
        y45.j(list, "newArguments");
        y45.j(jVar, "newAttributes");
        if (list.isEmpty() && jVar == sm9Var.H0()) {
            return sm9Var;
        }
        if (list.isEmpty()) {
            return sm9Var.O0(jVar);
        }
        return sm9Var instanceof gd3 ? ((gd3) sm9Var).U0(list) : KotlinTypeFactory.j(jVar, sm9Var.I0(), list, sm9Var.J0(), null, 16, null);
    }

    public static eh5 e(eh5 eh5Var, List list, md mdVar, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = eh5Var.G0();
        }
        if ((i & 2) != 0) {
            mdVar = eh5Var.getAnnotations();
        }
        if ((i & 4) != 0) {
            list2 = list;
        }
        return c(eh5Var, list, mdVar, list2);
    }

    public static sm9 f(sm9 sm9Var, List list, j jVar, int i, Object obj) {
        if ((i & 1) != 0) {
            list = sm9Var.G0();
        }
        if ((i & 2) != 0) {
            jVar = sm9Var.H0();
        }
        return d(sm9Var, list, jVar);
    }
}
