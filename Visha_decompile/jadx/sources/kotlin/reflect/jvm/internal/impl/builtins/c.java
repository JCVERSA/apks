package kotlin.reflect.jvm.internal.impl.builtins;

import defpackage.abb;
import defpackage.by6;
import defpackage.eh5;
import defpackage.gd;
import defpackage.i81;
import defpackage.ky5;
import defpackage.lbb;
import defpackage.mcb;
import defpackage.md;
import defpackage.o54;
import defpackage.p54;
import defpackage.pf1;
import defpackage.px0;
import defpackage.qw0;
import defpackage.s0a;
import defpackage.sm9;
import defpackage.v71;
import defpackage.x15;
import defpackage.xt1;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.BuiltInAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public abstract class c {
    public static final int a(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        gd gdVarA = eh5Var.getAnnotations().a(e.a.D);
        if (gdVarA == null) {
            return 0;
        }
        pf1 pf1Var = (pf1) kotlin.collections.a.m(gdVarA.f(), e.l);
        y45.h(pf1Var, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.constants.IntValue");
        return ((Number) ((x15) pf1Var).b()).intValue();
    }

    public static final sm9 b(d dVar, md mdVar, eh5 eh5Var, List list, List list2, List list3, eh5 eh5Var2, boolean z) {
        y45.j(dVar, "builtIns");
        y45.j(mdVar, "annotations");
        y45.j(list, "contextReceiverTypes");
        y45.j(list2, "parameterTypes");
        y45.j(eh5Var2, "returnType");
        List listG = g(eh5Var, list, list2, list3, eh5Var2, dVar);
        qw0 qw0VarF = f(dVar, list2.size() + list.size() + (eh5Var == null ? 0 : 1), z);
        if (eh5Var != null) {
            mdVar = t(mdVar, dVar);
        }
        if (!list.isEmpty()) {
            mdVar = s(mdVar, dVar, list.size());
        }
        return KotlinTypeFactory.g(lbb.b(mdVar), qw0VarF, listG);
    }

    public static final by6 d(eh5 eh5Var) {
        String str;
        y45.j(eh5Var, "<this>");
        gd gdVarA = eh5Var.getAnnotations().a(e.a.E);
        if (gdVarA == null) {
            return null;
        }
        Object objP0 = i81.P0(gdVarA.f().values());
        s0a s0aVar = objP0 instanceof s0a ? (s0a) objP0 : null;
        if (s0aVar != null && (str = (String) s0aVar.b()) != null) {
            if (!by6.i(str)) {
                str = null;
            }
            if (str != null) {
                return by6.g(str);
            }
        }
        return null;
    }

    public static final List e(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        o(eh5Var);
        int iA = a(eh5Var);
        if (iA == 0) {
            return y71.k();
        }
        List listSubList = eh5Var.G0().subList(0, iA);
        ArrayList arrayList = new ArrayList(z71.v(listSubList, 10));
        Iterator it = listSubList.iterator();
        while (it.hasNext()) {
            eh5 type = ((mcb) it.next()).getType();
            y45.i(type, "it.type");
            arrayList.add(type);
        }
        return arrayList;
    }

    public static final qw0 f(d dVar, int i, boolean z) {
        y45.j(dVar, "builtIns");
        qw0 qw0VarX = z ? dVar.X(i) : dVar.C(i);
        y45.i(qw0VarX, "if (isSuspendFunction) b…tFunction(parameterCount)");
        return qw0VarX;
    }

    public static final List g(eh5 eh5Var, List list, List list2, List list3, eh5 eh5Var2, d dVar) {
        by6 by6Var;
        y45.j(list, "contextReceiverTypes");
        y45.j(list2, "parameterTypes");
        y45.j(eh5Var2, "returnType");
        y45.j(dVar, "builtIns");
        int i = 0;
        ArrayList arrayList = new ArrayList(list2.size() + list.size() + (eh5Var != null ? 1 : 0) + 1);
        List list4 = list;
        ArrayList arrayList2 = new ArrayList(z71.v(list4, 10));
        Iterator it = list4.iterator();
        while (it.hasNext()) {
            arrayList2.add(TypeUtilsKt.a((eh5) it.next()));
        }
        arrayList.addAll(arrayList2);
        v71.a(arrayList, eh5Var != null ? TypeUtilsKt.a(eh5Var) : null);
        for (Object obj : list2) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            eh5 eh5VarX = (eh5) obj;
            if (list3 == null || (by6Var = (by6) list3.get(i)) == null || by6Var.h()) {
                by6Var = null;
            }
            if (by6Var != null) {
                o54 o54Var = e.a.E;
                by6 by6VarG = by6.g("name");
                String strB = by6Var.b();
                y45.i(strB, "name.asString()");
                eh5VarX = TypeUtilsKt.x(eh5VarX, md.u1.a(i81.I0(eh5VarX.getAnnotations(), new BuiltInAnnotationDescriptor(dVar, o54Var, ky5.h(abb.a(by6VarG, new s0a(strB)))))));
            }
            arrayList.add(TypeUtilsKt.a(eh5VarX));
            i = i2;
        }
        arrayList.add(TypeUtilsKt.a(eh5Var2));
        return arrayList;
    }

    public static final FunctionClassKind h(xt1 xt1Var) {
        y45.j(xt1Var, "<this>");
        if ((xt1Var instanceof qw0) && d.B0(xt1Var)) {
            return i(DescriptorUtilsKt.m(xt1Var));
        }
        return null;
    }

    public static final FunctionClassKind i(p54 p54Var) {
        if (!p54Var.f() || p54Var.e()) {
            return null;
        }
        FunctionClassKind.a aVar = FunctionClassKind.Companion;
        String strB = p54Var.i().b();
        y45.i(strB, "shortName().asString()");
        o54 o54VarE = p54Var.l().e();
        y45.i(o54VarE, "toSafe().parent()");
        return aVar.b(strB, o54VarE);
    }

    public static final eh5 j(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        o(eh5Var);
        if (!r(eh5Var)) {
            return null;
        }
        return ((mcb) eh5Var.G0().get(a(eh5Var))).getType();
    }

    public static final eh5 k(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        o(eh5Var);
        eh5 type = ((mcb) i81.A0(eh5Var.G0())).getType();
        y45.i(type, "arguments.last().type");
        return type;
    }

    public static final List l(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        o(eh5Var);
        List listG0 = eh5Var.G0();
        return listG0.subList(a(eh5Var) + (m(eh5Var) ? 1 : 0), listG0.size() - 1);
    }

    public static final boolean m(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        return o(eh5Var) && r(eh5Var);
    }

    public static final boolean n(xt1 xt1Var) {
        y45.j(xt1Var, "<this>");
        FunctionClassKind functionClassKindH = h(xt1Var);
        return functionClassKindH == FunctionClassKind.Function || functionClassKindH == FunctionClassKind.SuspendFunction;
    }

    public static final boolean o(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        px0 px0VarC = eh5Var.I0().c();
        return px0VarC != null && n(px0VarC);
    }

    public static final boolean p(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        px0 px0VarC = eh5Var.I0().c();
        return (px0VarC != null ? h(px0VarC) : null) == FunctionClassKind.Function;
    }

    public static final boolean q(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        px0 px0VarC = eh5Var.I0().c();
        return (px0VarC != null ? h(px0VarC) : null) == FunctionClassKind.SuspendFunction;
    }

    public static final boolean r(eh5 eh5Var) {
        return eh5Var.getAnnotations().a(e.a.C) != null;
    }

    public static final md s(md mdVar, d dVar, int i) {
        y45.j(mdVar, "<this>");
        y45.j(dVar, "builtIns");
        o54 o54Var = e.a.D;
        return mdVar.h(o54Var) ? mdVar : md.u1.a(i81.I0(mdVar, new BuiltInAnnotationDescriptor(dVar, o54Var, ky5.h(abb.a(e.l, new x15(i))))));
    }

    public static final md t(md mdVar, d dVar) {
        y45.j(mdVar, "<this>");
        y45.j(dVar, "builtIns");
        o54 o54Var = e.a.C;
        return mdVar.h(o54Var) ? mdVar : md.u1.a(i81.I0(mdVar, new BuiltInAnnotationDescriptor(dVar, o54Var, kotlin.collections.a.l())));
    }
}
