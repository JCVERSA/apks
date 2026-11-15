package kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil;

import defpackage.a92;
import defpackage.by6;
import defpackage.dv7;
import defpackage.e74;
import defpackage.eh5;
import defpackage.g05;
import defpackage.gd;
import defpackage.hh5;
import defpackage.inb;
import defpackage.jq1;
import defpackage.o54;
import defpackage.or5;
import defpackage.p54;
import defpackage.pc9;
import defpackage.px0;
import defpackage.qq6;
import defpackage.qw0;
import defpackage.qx0;
import defpackage.ti8;
import defpackage.ubc;
import defpackage.x71;
import defpackage.xt1;
import defpackage.xw0;
import defpackage.y45;
import defpackage.y71;
import defpackage.y82;
import defpackage.z71;
import defpackage.z82;
import defpackage.zc9;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.mozilla.javascript.ES6Iterator;

public abstract class DescriptorUtilsKt {
    public static final by6 a;

    public static final class a extends jq1.b {
        public final Ref$ObjectRef a;
        public final e74 b;

        public a(Ref$ObjectRef ref$ObjectRef, e74 e74Var) {
            this.a = ref$ObjectRef;
            this.b = e74Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void c(CallableMemberDescriptor callableMemberDescriptor) {
            y45.j(callableMemberDescriptor, "current");
            if (this.a.element == 0 && ((Boolean) this.b.invoke(callableMemberDescriptor)).booleanValue()) {
                this.a.element = callableMemberDescriptor;
            }
        }

        @Override
        public boolean b(CallableMemberDescriptor callableMemberDescriptor) {
            y45.j(callableMemberDescriptor, "current");
            return this.a.element == 0;
        }

        @Override
        public CallableMemberDescriptor a() {
            return (CallableMemberDescriptor) this.a.element;
        }
    }

    static {
        by6 by6VarG = by6.g(ES6Iterator.VALUE_PROPERTY);
        y45.i(by6VarG, "identifier(\"value\")");
        a = by6VarG;
    }

    public static final boolean c(h hVar) {
        y45.j(hVar, "<this>");
        Boolean boolE = jq1.e(x71.e(hVar), z82.a, DescriptorUtilsKt$declaresOrInheritsDefaultValue$2.INSTANCE);
        y45.i(boolE, "ifAny(\n        listOf(th…eclaresDefaultValue\n    )");
        return boolE.booleanValue();
    }

    public static final Iterable d(h hVar) {
        Collection collectionE = hVar.e();
        ArrayList arrayList = new ArrayList(z71.v(collectionE, 10));
        Iterator it = collectionE.iterator();
        while (it.hasNext()) {
            arrayList.add(((h) it.next()).a());
        }
        return arrayList;
    }

    public static final CallableMemberDescriptor e(CallableMemberDescriptor callableMemberDescriptor, boolean z, e74 e74Var) {
        y45.j(callableMemberDescriptor, "<this>");
        y45.j(e74Var, "predicate");
        return (CallableMemberDescriptor) jq1.b(x71.e(callableMemberDescriptor), new a92(z), new a(new Ref$ObjectRef(), e74Var));
    }

    public static CallableMemberDescriptor f(CallableMemberDescriptor callableMemberDescriptor, boolean z, e74 e74Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return e(callableMemberDescriptor, z, e74Var);
    }

    public static final Iterable g(boolean z, CallableMemberDescriptor callableMemberDescriptor) {
        if (z) {
            callableMemberDescriptor = callableMemberDescriptor != null ? callableMemberDescriptor.a() : null;
        }
        Collection collectionE = callableMemberDescriptor != null ? callableMemberDescriptor.e() : null;
        return collectionE == null ? y71.k() : collectionE;
    }

    public static final o54 h(xt1 xt1Var) {
        y45.j(xt1Var, "<this>");
        p54 p54VarM = m(xt1Var);
        if (!p54VarM.f()) {
            p54VarM = null;
        }
        if (p54VarM != null) {
            return p54VarM.l();
        }
        return null;
    }

    public static final qw0 i(gd gdVar) {
        y45.j(gdVar, "<this>");
        px0 px0VarC = gdVar.getType().I0().c();
        if (px0VarC instanceof qw0) {
            return (qw0) px0VarC;
        }
        return null;
    }

    public static final d j(xt1 xt1Var) {
        y45.j(xt1Var, "<this>");
        return p(xt1Var).o();
    }

    public static final xw0 k(px0 px0Var) {
        xt1 xt1VarB;
        xw0 xw0VarK;
        if (px0Var == null || (xt1VarB = px0Var.b()) == null) {
            return null;
        }
        if (xt1VarB instanceof dv7) {
            return new xw0(((dv7) xt1VarB).d(), px0Var.getName());
        }
        if (!(xt1VarB instanceof qx0) || (xw0VarK = k((px0) xt1VarB)) == null) {
            return null;
        }
        return xw0VarK.d(px0Var.getName());
    }

    public static final o54 l(xt1 xt1Var) {
        y45.j(xt1Var, "<this>");
        o54 o54VarN = y82.n(xt1Var);
        y45.i(o54VarN, "getFqNameSafe(this)");
        return o54VarN;
    }

    public static final p54 m(xt1 xt1Var) {
        y45.j(xt1Var, "<this>");
        p54 p54VarM = y82.m(xt1Var);
        y45.i(p54VarM, "getFqName(this)");
        return p54VarM;
    }

    public static final g05 n(qw0 qw0Var) {
        inb inbVarC0 = qw0Var != null ? qw0Var.c0() : null;
        if (inbVarC0 instanceof g05) {
            return (g05) inbVarC0;
        }
        return null;
    }

    public static final c o(qq6 qq6Var) {
        y45.j(qq6Var, "<this>");
        ubc.a(qq6Var.s0(hh5.a()));
        return c.a.a;
    }

    public static final qq6 p(xt1 xt1Var) {
        y45.j(xt1Var, "<this>");
        qq6 qq6VarG = y82.g(xt1Var);
        y45.i(qq6VarG, "getContainingModule(this)");
        return qq6VarG;
    }

    public static final pc9 q(xt1 xt1Var) {
        y45.j(xt1Var, "<this>");
        return SequencesKt___SequencesKt.E(r(xt1Var), 1);
    }

    public static final pc9 r(xt1 xt1Var) {
        y45.j(xt1Var, "<this>");
        return zc9.p(xt1Var, new e74() {
            @Override
            public final xt1 invoke(xt1 xt1Var2) {
                y45.j(xt1Var2, "it");
                return xt1Var2.b();
            }
        });
    }

    public static final CallableMemberDescriptor s(CallableMemberDescriptor callableMemberDescriptor) {
        y45.j(callableMemberDescriptor, "<this>");
        if (!(callableMemberDescriptor instanceof f)) {
            return callableMemberDescriptor;
        }
        ti8 ti8VarE0 = ((f) callableMemberDescriptor).e0();
        y45.i(ti8VarE0, "correspondingProperty");
        return ti8VarE0;
    }

    public static final qw0 t(qw0 qw0Var) {
        y45.j(qw0Var, "<this>");
        for (eh5 eh5Var : qw0Var.q().I0().k()) {
            if (!d.b0(eh5Var)) {
                px0 px0VarC = eh5Var.I0().c();
                if (y82.w(px0VarC)) {
                    y45.h(px0VarC, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    return (qw0) px0VarC;
                }
            }
        }
        return null;
    }

    public static final boolean u(qq6 qq6Var) {
        y45.j(qq6Var, "<this>");
        ubc.a(qq6Var.s0(hh5.a()));
        return false;
    }

    public static final qw0 v(qq6 qq6Var, o54 o54Var, or5 or5Var) {
        y45.j(qq6Var, "<this>");
        y45.j(o54Var, "topLevelClassFqName");
        y45.j(or5Var, "location");
        o54Var.d();
        o54 o54VarE = o54Var.e();
        y45.i(o54VarE, "topLevelClassFqName.parent()");
        MemberScope memberScopeP = qq6Var.C(o54VarE).p();
        by6 by6VarG = o54Var.g();
        y45.i(by6VarG, "topLevelClassFqName.shortName()");
        px0 px0VarF = memberScopeP.f(by6VarG, or5Var);
        if (px0VarF instanceof qw0) {
            return (qw0) px0VarF;
        }
        return null;
    }
}
