package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeComponentPosition;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.j;
import kotlin.reflect.jvm.internal.impl.types.n;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public final class r85 {
    public final f85 a;

    public static final class a {
        public final eh5 a;
        public final int b;

        public a(eh5 eh5Var, int i) {
            this.a = eh5Var;
            this.b = i;
        }

        public final int a() {
            return this.b;
        }

        public final eh5 b() {
            return this.a;
        }
    }

    public static final class b {
        public final sm9 a;
        public final int b;
        public final boolean c;

        public b(sm9 sm9Var, int i, boolean z) {
            this.a = sm9Var;
            this.b = i;
            this.c = z;
        }

        public final boolean a() {
            return this.c;
        }

        public final int b() {
            return this.b;
        }

        public final sm9 c() {
            return this.a;
        }
    }

    public r85(f85 f85Var) {
        y45.j(f85Var, "javaResolverSettings");
        this.a = f85Var;
    }

    public static b c(r85 r85Var, sm9 sm9Var, e74 e74Var, int i, TypeComponentPosition typeComponentPosition, boolean z, boolean z2, int i2, Object obj) {
        return r85Var.b(sm9Var, e74Var, i, typeComponentPosition, (i2 & 8) != 0 ? false : z, (i2 & 16) != 0 ? false : z2);
    }

    public final eh5 a(eh5 eh5Var, e74 e74Var, boolean z) {
        y45.j(eh5Var, "<this>");
        y45.j(e74Var, "qualifiers");
        return d(eh5Var.L0(), e74Var, 0, z).b();
    }

    public final b b(sm9 sm9Var, e74 e74Var, int i, TypeComponentPosition typeComponentPosition, boolean z, boolean z2) {
        px0 px0VarC;
        sbb sbbVarI0;
        boolean z3;
        a aVar;
        mcb mcbVarS;
        e74 e74Var2 = e74Var;
        boolean zA = rbb.a(typeComponentPosition);
        boolean z4 = (z2 && z) ? false : true;
        eh5 eh5Var = null;
        if ((zA || !sm9Var.G0().isEmpty()) && (px0VarC = sm9Var.I0().c()) != null) {
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.a aVar2 = (kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.a) e74Var2.invoke(Integer.valueOf(i));
            px0 px0VarF = wbb.f(px0VarC, aVar2, typeComponentPosition);
            Boolean boolH = wbb.h(aVar2, typeComponentPosition);
            if (px0VarF == null || (sbbVarI0 = px0VarF.m()) == null) {
                sbbVarI0 = sm9Var.I0();
            }
            sbb sbbVar = sbbVarI0;
            y45.i(sbbVar, "enhancedClassifier?.typeConstructor ?: constructor");
            int iA = i + 1;
            List listG0 = sm9Var.G0();
            List parameters = sbbVar.getParameters();
            y45.i(parameters, "typeConstructor.parameters");
            List list = parameters;
            Iterator it = listG0.iterator();
            Iterator it2 = list.iterator();
            ArrayList arrayList = new ArrayList(Math.min(z71.v(listG0, 10), z71.v(list, 10)));
            while (it.hasNext() && it2.hasNext()) {
                Object next = it.next();
                hcb hcbVar = (hcb) it2.next();
                mcb mcbVar = (mcb) next;
                if (z4) {
                    z3 = z4;
                    if (!mcbVar.b()) {
                        aVar = d(mcbVar.getType().L0(), e74Var2, iA, z2);
                    } else if (((kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.a) e74Var2.invoke(Integer.valueOf(iA))).d() == NullabilityQualifier.FORCE_FLEXIBILITY) {
                        mgb mgbVarL0 = mcbVar.getType().L0();
                        aVar = new a(KotlinTypeFactory.d(ky3.c(mgbVarL0).M0(false), ky3.d(mgbVarL0).M0(true)), 1);
                    } else {
                        aVar = new a(null, 1);
                    }
                } else {
                    z3 = z4;
                    aVar = new a(eh5Var, 0);
                }
                iA += aVar.a();
                if (aVar.b() != null) {
                    eh5 eh5VarB = aVar.b();
                    Variance varianceC = mcbVar.c();
                    y45.i(varianceC, "arg.projectionKind");
                    mcbVarS = TypeUtilsKt.f(eh5VarB, varianceC, hcbVar);
                } else if (px0VarF == null || mcbVar.b()) {
                    mcbVarS = px0VarF != null ? n.s(hcbVar) : null;
                } else {
                    eh5 type = mcbVar.getType();
                    y45.i(type, "arg.type");
                    Variance varianceC2 = mcbVar.c();
                    y45.i(varianceC2, "arg.projectionKind");
                    mcbVarS = TypeUtilsKt.f(type, varianceC2, hcbVar);
                }
                arrayList.add(mcbVarS);
                e74Var2 = e74Var;
                z4 = z3;
                eh5Var = null;
            }
            int i2 = iA - i;
            if (px0VarF == null && boolH == null) {
                if (!arrayList.isEmpty()) {
                    Iterator it3 = arrayList.iterator();
                    do {
                        if (it3.hasNext()) {
                        }
                    } while (((mcb) it3.next()) == null);
                }
                return new b(null, i2, false);
            }
            md annotations = sm9Var.getAnnotations();
            va3 va3Var = wbb.b;
            if (px0VarF == null) {
                va3Var = null;
            }
            boolean z5 = false;
            j jVarB = lbb.b(wbb.e(y71.p(annotations, va3Var, boolH != null ? wbb.g() : null)));
            List listG1 = sm9Var.G0();
            Iterator it4 = arrayList.iterator();
            Iterator it5 = listG1.iterator();
            ArrayList arrayList2 = new ArrayList(Math.min(z71.v(arrayList, 10), z71.v(listG1, 10)));
            while (it4.hasNext() && it5.hasNext()) {
                Object next2 = it4.next();
                mcb mcbVar2 = (mcb) it5.next();
                mcb mcbVar3 = (mcb) next2;
                if (mcbVar3 != null) {
                    mcbVar2 = mcbVar3;
                }
                arrayList2.add(mcbVar2);
            }
            sm9 sm9VarJ = KotlinTypeFactory.j(jVarB, sbbVar, arrayList2, boolH != null ? boolH.booleanValue() : sm9Var.J0(), null, 16, null);
            if (aVar2.b()) {
                sm9VarJ = e(sm9VarJ);
            }
            if (boolH != null && aVar2.e()) {
                z5 = true;
            }
            return new b(sm9VarJ, i2, z5);
        }
        return new b(null, 1, false);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0098  */
    public final a d(mgb mgbVar, e74 e74Var, int i, boolean z) {
        eh5 eh5VarC;
        eh5 eh5VarD = null;
        if (fh5.a(mgbVar)) {
            return new a(null, 1);
        }
        if (!(mgbVar instanceof fy3)) {
            if (!(mgbVar instanceof sm9)) {
                throw new NoWhenBranchMatchedException();
            }
            b bVarC = c(this, (sm9) mgbVar, e74Var, i, TypeComponentPosition.INFLEXIBLE, false, z, 8, null);
            return new a(bVarC.a() ? ddb.d(mgbVar, bVarC.c()) : bVarC.c(), bVarC.b());
        }
        boolean z2 = mgbVar instanceof co8;
        fy3 fy3Var = (fy3) mgbVar;
        b bVarB = b(fy3Var.Q0(), e74Var, i, TypeComponentPosition.FLEXIBLE_LOWER, z2, z);
        b bVarB2 = b(fy3Var.R0(), e74Var, i, TypeComponentPosition.FLEXIBLE_UPPER, z2, z);
        bVarB.b();
        bVarB2.b();
        if (bVarB.c() != null || bVarB2.c() != null) {
            if (bVarB.a() || bVarB2.a()) {
                sm9 sm9VarC = bVarB2.c();
                if (sm9VarC == null) {
                    eh5VarC = bVarB.c();
                    y45.g(eh5VarC);
                } else {
                    sm9 sm9VarC2 = bVarB.c();
                    if (sm9VarC2 == null) {
                        sm9VarC2 = sm9VarC;
                    }
                    eh5VarC = KotlinTypeFactory.d(sm9VarC2, sm9VarC);
                    if (eh5VarC == null) {
                        eh5VarC = bVarB.c();
                        y45.g(eh5VarC);
                    }
                }
                eh5VarD = ddb.d(mgbVar, eh5VarC);
            } else if (z2) {
                sm9 sm9VarC3 = bVarB.c();
                if (sm9VarC3 == null) {
                    sm9VarC3 = fy3Var.Q0();
                }
                sm9 sm9VarC4 = bVarB2.c();
                if (sm9VarC4 == null) {
                    sm9VarC4 = fy3Var.R0();
                }
                eh5VarD = new RawTypeImpl(sm9VarC3, sm9VarC4);
            } else {
                sm9 sm9VarC5 = bVarB.c();
                if (sm9VarC5 == null) {
                    sm9VarC5 = fy3Var.Q0();
                }
                sm9 sm9VarC6 = bVarB2.c();
                if (sm9VarC6 == null) {
                    sm9VarC6 = fy3Var.R0();
                }
                eh5VarD = KotlinTypeFactory.d(sm9VarC5, sm9VarC6);
            }
        }
        return new a(eh5VarD, bVarB.b());
    }

    public final sm9 e(sm9 sm9Var) {
        return this.a.a() ? tu9.h(sm9Var, true) : new a27(sm9Var);
    }
}
