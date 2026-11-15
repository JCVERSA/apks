package kotlin.reflect.jvm.internal.impl.types.typeUtil;

import defpackage.ddb;
import defpackage.e74;
import defpackage.ebb;
import defpackage.eh5;
import defpackage.fy3;
import defpackage.g72;
import defpackage.gd3;
import defpackage.hcb;
import defpackage.i81;
import defpackage.lbb;
import defpackage.mcb;
import defpackage.md;
import defpackage.mgb;
import defpackage.mz4;
import defpackage.ocb;
import defpackage.px0;
import defpackage.qw0;
import defpackage.qx0;
import defpackage.sbb;
import defpackage.scb;
import defpackage.sm9;
import defpackage.y45;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.b;
import kotlin.reflect.jvm.internal.impl.types.n;

public abstract class TypeUtilsKt {
    public static final mcb a(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        return new ocb(eh5Var);
    }

    public static final boolean b(eh5 eh5Var, e74 e74Var) {
        y45.j(eh5Var, "<this>");
        y45.j(e74Var, "predicate");
        return n.c(eh5Var, e74Var);
    }

    public static final boolean c(eh5 eh5Var, sbb sbbVar, Set set) {
        boolean zC;
        if (y45.e(eh5Var.I0(), sbbVar)) {
            return true;
        }
        px0 px0VarC = eh5Var.I0().c();
        qx0 qx0Var = px0VarC instanceof qx0 ? (qx0) px0VarC : null;
        List listR = qx0Var != null ? qx0Var.r() : null;
        Iterable<mz4> iterableJ1 = i81.j1(eh5Var.G0());
        if (!(iterableJ1 instanceof Collection) || !((Collection) iterableJ1).isEmpty()) {
            for (mz4 mz4Var : iterableJ1) {
                int iA = mz4Var.a();
                mcb mcbVar = (mcb) mz4Var.b();
                hcb hcbVar = listR != null ? (hcb) i81.r0(listR, iA) : null;
                if ((hcbVar == null || set == null || !set.contains(hcbVar)) && !mcbVar.b()) {
                    eh5 type = mcbVar.getType();
                    y45.i(type, "argument.type");
                    zC = c(type, sbbVar, set);
                } else {
                    zC = false;
                }
                if (zC) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final boolean d(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        return b(eh5Var, new e74() {
            @Override
            public final Boolean invoke(mgb mgbVar) {
                y45.j(mgbVar, "it");
                px0 px0VarC = mgbVar.I0().c();
                return Boolean.valueOf(px0VarC != null ? TypeUtilsKt.s(px0VarC) : false);
            }
        });
    }

    public static final boolean e(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        return n.c(eh5Var, new e74() {
            @Override
            public final Boolean invoke(mgb mgbVar) {
                return Boolean.valueOf(n.m(mgbVar));
            }
        });
    }

    public static final mcb f(eh5 eh5Var, Variance variance, hcb hcbVar) {
        y45.j(eh5Var, "type");
        y45.j(variance, "projectionKind");
        if ((hcbVar != null ? hcbVar.h() : null) == variance) {
            variance = Variance.INVARIANT;
        }
        return new ocb(variance, eh5Var);
    }

    public static final Set g(eh5 eh5Var, Set set) {
        y45.j(eh5Var, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        h(eh5Var, eh5Var, linkedHashSet, set);
        return linkedHashSet;
    }

    public static final void h(eh5 eh5Var, eh5 eh5Var2, Set set, Set set2) {
        px0 px0VarC = eh5Var.I0().c();
        if (px0VarC instanceof hcb) {
            if (!y45.e(eh5Var.I0(), eh5Var2.I0())) {
                set.add(px0VarC);
                return;
            }
            for (eh5 eh5Var3 : ((hcb) px0VarC).getUpperBounds()) {
                y45.i(eh5Var3, "upperBound");
                h(eh5Var3, eh5Var2, set, set2);
            }
            return;
        }
        px0 px0VarC2 = eh5Var.I0().c();
        qx0 qx0Var = px0VarC2 instanceof qx0 ? (qx0) px0VarC2 : null;
        List listR = qx0Var != null ? qx0Var.r() : null;
        int i = 0;
        for (mcb mcbVar : eh5Var.G0()) {
            int i2 = i + 1;
            hcb hcbVar = listR != null ? (hcb) i81.r0(listR, i) : null;
            if ((hcbVar == null || set2 == null || !set2.contains(hcbVar)) && !mcbVar.b() && !i81.d0(set, mcbVar.getType().I0().c()) && !y45.e(mcbVar.getType().I0(), eh5Var2.I0())) {
                eh5 type = mcbVar.getType();
                y45.i(type, "argument.type");
                h(type, eh5Var2, set, set2);
            }
            i = i2;
        }
    }

    public static final d i(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        d dVarO = eh5Var.I0().o();
        y45.i(dVarO, "constructor.builtIns");
        return dVarO;
    }

    public static final eh5 j(hcb hcbVar) {
        Object obj;
        y45.j(hcbVar, "<this>");
        List upperBounds = hcbVar.getUpperBounds();
        y45.i(upperBounds, "upperBounds");
        upperBounds.isEmpty();
        List upperBounds2 = hcbVar.getUpperBounds();
        y45.i(upperBounds2, "upperBounds");
        Iterator it = upperBounds2.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            px0 px0VarC = ((eh5) next).I0().c();
            qw0 qw0Var = px0VarC instanceof qw0 ? (qw0) px0VarC : null;
            if (qw0Var != null && qw0Var.getKind() != ClassKind.INTERFACE && qw0Var.getKind() != ClassKind.ANNOTATION_CLASS) {
                obj = next;
                break;
            }
        }
        eh5 eh5Var = (eh5) obj;
        if (eh5Var != null) {
            return eh5Var;
        }
        List upperBounds3 = hcbVar.getUpperBounds();
        y45.i(upperBounds3, "upperBounds");
        Object objO0 = i81.o0(upperBounds3);
        y45.i(objO0, "upperBounds.first()");
        return (eh5) objO0;
    }

    public static final boolean k(hcb hcbVar) {
        y45.j(hcbVar, "typeParameter");
        return m(hcbVar, null, null, 6, null);
    }

    public static final boolean l(hcb hcbVar, sbb sbbVar, Set set) {
        y45.j(hcbVar, "typeParameter");
        List upperBounds = hcbVar.getUpperBounds();
        y45.i(upperBounds, "typeParameter.upperBounds");
        List<eh5> list = upperBounds;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (eh5 eh5Var : list) {
            y45.i(eh5Var, "upperBound");
            if (c(eh5Var, hcbVar.q().I0(), set) && (sbbVar == null || y45.e(eh5Var.I0(), sbbVar))) {
                return true;
            }
        }
        return false;
    }

    public static boolean m(hcb hcbVar, sbb sbbVar, Set set, int i, Object obj) {
        if ((i & 2) != 0) {
            sbbVar = null;
        }
        if ((i & 4) != 0) {
            set = null;
        }
        return l(hcbVar, sbbVar, set);
    }

    public static final boolean n(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        return d.f0(eh5Var);
    }

    public static final boolean o(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        return d.n0(eh5Var);
    }

    public static final boolean p(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        if (!(eh5Var instanceof g72)) {
            return false;
        }
        ((g72) eh5Var).U0();
        return false;
    }

    public static final boolean q(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        if (!(eh5Var instanceof g72)) {
            return false;
        }
        ((g72) eh5Var).U0();
        return false;
    }

    public static final boolean r(eh5 eh5Var, eh5 eh5Var2) {
        y45.j(eh5Var, "<this>");
        y45.j(eh5Var2, "superType");
        return b.a.c(eh5Var, eh5Var2);
    }

    public static final boolean s(px0 px0Var) {
        y45.j(px0Var, "<this>");
        return (px0Var instanceof hcb) && (((hcb) px0Var).b() instanceof ebb);
    }

    public static final boolean t(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        return n.m(eh5Var);
    }

    public static final boolean u(eh5 eh5Var) {
        y45.j(eh5Var, "type");
        return (eh5Var instanceof gd3) && ((gd3) eh5Var).S0().isUnresolved();
    }

    public static final eh5 v(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        eh5 eh5VarN = n.n(eh5Var);
        y45.i(eh5VarN, "makeNotNullable(this)");
        return eh5VarN;
    }

    public static final eh5 w(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        eh5 eh5VarO = n.o(eh5Var);
        y45.i(eh5VarO, "makeNullable(this)");
        return eh5VarO;
    }

    public static final eh5 x(eh5 eh5Var, md mdVar) {
        y45.j(eh5Var, "<this>");
        y45.j(mdVar, "newAnnotations");
        return (eh5Var.getAnnotations().isEmpty() && mdVar.isEmpty()) ? eh5Var : eh5Var.L0().O0(lbb.a(eh5Var.H0(), mdVar));
    }

    public static final eh5 y(eh5 eh5Var) {
        sm9 sm9Var;
        mgb mgbVarF;
        y45.j(eh5Var, "<this>");
        mgb mgbVarL0 = eh5Var.L0();
        if (mgbVarL0 instanceof fy3) {
            fy3 fy3Var = (fy3) mgbVarL0;
            sm9 sm9VarQ0 = fy3Var.Q0();
            if (!sm9VarQ0.I0().getParameters().isEmpty() && sm9VarQ0.I0().c() != null) {
                List parameters = sm9VarQ0.I0().getParameters();
                y45.i(parameters, "constructor.parameters");
                List list = parameters;
                ArrayList arrayList = new ArrayList(z71.v(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new StarProjectionImpl((hcb) it.next()));
                }
                sm9VarQ0 = scb.f(sm9VarQ0, arrayList, null, 2, null);
            }
            sm9 sm9VarR0 = fy3Var.R0();
            if (!sm9VarR0.I0().getParameters().isEmpty() && sm9VarR0.I0().c() != null) {
                List parameters2 = sm9VarR0.I0().getParameters();
                y45.i(parameters2, "constructor.parameters");
                List list2 = parameters2;
                ArrayList arrayList2 = new ArrayList(z71.v(list2, 10));
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(new StarProjectionImpl((hcb) it2.next()));
                }
                sm9VarR0 = scb.f(sm9VarR0, arrayList2, null, 2, null);
            }
            mgbVarF = KotlinTypeFactory.d(sm9VarQ0, sm9VarR0);
        } else {
            if (!(mgbVarL0 instanceof sm9)) {
                throw new NoWhenBranchMatchedException();
            }
            sm9Var = (sm9) mgbVarL0;
            if (!sm9Var.I0().getParameters().isEmpty() && sm9Var.I0().c() != null) {
                mgbVarF = sm9Var;
                mgbVarF = sm9Var;
                List parameters3 = sm9Var.I0().getParameters();
                y45.i(parameters3, "constructor.parameters");
                List list3 = parameters3;
                ArrayList arrayList3 = new ArrayList(z71.v(list3, 10));
                Iterator it3 = list3.iterator();
                while (it3.hasNext()) {
                    arrayList3.add(new StarProjectionImpl((hcb) it3.next()));
                }
                mgbVarF = scb.f(sm9Var, arrayList3, null, 2, null);
            }
        }
        mgbVarF = sm9Var;
        mgbVarF = sm9Var;
        mgbVarF = sm9Var;
        return ddb.b(mgbVarF, mgbVarL0);
    }

    public static final boolean z(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        return b(eh5Var, new e74() {
            @Override
            public final Boolean invoke(mgb mgbVar) {
                y45.j(mgbVar, "it");
                px0 px0VarC = mgbVar.I0().c();
                boolean z = false;
                if (px0VarC != null && ((px0VarC instanceof ebb) || (px0VarC instanceof hcb))) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        });
    }
}
