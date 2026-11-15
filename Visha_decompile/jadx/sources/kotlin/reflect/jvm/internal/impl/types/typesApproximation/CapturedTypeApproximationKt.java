package kotlin.reflect.jvm.internal.impl.types.typesApproximation;

import defpackage.ddb;
import defpackage.e74;
import defpackage.eh5;
import defpackage.fbb;
import defpackage.hcb;
import defpackage.i81;
import defpackage.ky3;
import defpackage.mcb;
import defpackage.mgb;
import defpackage.ocb;
import defpackage.or0;
import defpackage.sbb;
import defpackage.scb;
import defpackage.sm9;
import defpackage.uf;
import defpackage.y45;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.k;
import kotlin.reflect.jvm.internal.impl.types.n;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public abstract class CapturedTypeApproximationKt {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[Variance.values().length];
            try {
                iArr[Variance.INVARIANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Variance.IN_VARIANCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Variance.OUT_VARIANCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final class b extends k {
        @Override
        public mcb k(sbb sbbVar) {
            y45.j(sbbVar, "key");
            or0 or0Var = sbbVar instanceof or0 ? (or0) sbbVar : null;
            if (or0Var == null) {
                return null;
            }
            return or0Var.b().b() ? new ocb(Variance.OUT_VARIANCE, or0Var.b().getType()) : or0Var.b();
        }
    }

    public static final uf a(eh5 eh5Var) {
        Object objE;
        y45.j(eh5Var, "type");
        if (ky3.b(eh5Var)) {
            uf ufVarA = a(ky3.c(eh5Var));
            uf ufVarA2 = a(ky3.d(eh5Var));
            return new uf(ddb.b(KotlinTypeFactory.d(ky3.c((eh5) ufVarA.c()), ky3.d((eh5) ufVarA2.c())), eh5Var), ddb.b(KotlinTypeFactory.d(ky3.c((eh5) ufVarA.d()), ky3.d((eh5) ufVarA2.d())), eh5Var));
        }
        sbb sbbVarI0 = eh5Var.I0();
        if (CapturedTypeConstructorKt.d(eh5Var)) {
            y45.h(sbbVarI0, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.calls.inference.CapturedTypeConstructor");
            mcb mcbVarB = ((or0) sbbVarI0).b();
            eh5 type = mcbVarB.getType();
            y45.i(type, "typeProjection.type");
            eh5 eh5VarB = b(type, eh5Var);
            int i = a.a[mcbVarB.c().ordinal()];
            if (i == 2) {
                sm9 sm9VarI = TypeUtilsKt.i(eh5Var).I();
                y45.i(sm9VarI, "type.builtIns.nullableAnyType");
                return new uf(eh5VarB, sm9VarI);
            }
            if (i == 3) {
                sm9 sm9VarH = TypeUtilsKt.i(eh5Var).H();
                y45.i(sm9VarH, "type.builtIns.nothingType");
                return new uf(b(sm9VarH, eh5Var), eh5VarB);
            }
            throw new AssertionError("Only nontrivial projections should have been captured, not: " + mcbVarB);
        }
        if (eh5Var.G0().isEmpty() || eh5Var.G0().size() != sbbVarI0.getParameters().size()) {
            return new uf(eh5Var, eh5Var);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List listG0 = eh5Var.G0();
        List parameters = sbbVarI0.getParameters();
        y45.i(parameters, "typeConstructor.parameters");
        for (Pair pair : i81.l1(listG0, parameters)) {
            mcb mcbVar = (mcb) pair.component1();
            hcb hcbVar = (hcb) pair.component2();
            y45.i(hcbVar, "typeParameter");
            fbb fbbVarG = g(mcbVar, hcbVar);
            if (mcbVar.b()) {
                arrayList.add(fbbVarG);
                arrayList2.add(fbbVarG);
            } else {
                uf ufVarD = d(fbbVarG);
                fbb fbbVar = (fbb) ufVarD.a();
                fbb fbbVar2 = (fbb) ufVarD.b();
                arrayList.add(fbbVar);
                arrayList2.add(fbbVar2);
            }
        }
        boolean z = false;
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (!((fbb) it.next()).d()) {
                    z = true;
                    break;
                }
            }
        }
        if (z) {
            objE = TypeUtilsKt.i(eh5Var).H();
            y45.i(objE, "type.builtIns.nothingType");
        } else {
            objE = e(eh5Var, arrayList);
        }
        return new uf(objE, e(eh5Var, arrayList2));
    }

    public static final eh5 b(eh5 eh5Var, eh5 eh5Var2) {
        eh5 eh5VarQ = n.q(eh5Var, eh5Var2.J0());
        y45.i(eh5VarQ, "makeNullableIfNeeded(this, type.isMarkedNullable)");
        return eh5VarQ;
    }

    public static final mcb c(mcb mcbVar, boolean z) {
        if (mcbVar == null) {
            return null;
        }
        if (mcbVar.b()) {
            return mcbVar;
        }
        eh5 type = mcbVar.getType();
        y45.i(type, "typeProjection.type");
        if (!n.c(type, new e74() {
            @Override
            public final Boolean invoke(mgb mgbVar) {
                y45.i(mgbVar, "it");
                return Boolean.valueOf(CapturedTypeConstructorKt.d(mgbVar));
            }
        })) {
            return mcbVar;
        }
        Variance varianceC = mcbVar.c();
        y45.i(varianceC, "typeProjection.projectionKind");
        if (varianceC == Variance.OUT_VARIANCE) {
            return new ocb(varianceC, (eh5) a(type).d());
        }
        return z ? new ocb(varianceC, (eh5) a(type).c()) : f(mcbVar);
    }

    public static final uf d(fbb fbbVar) {
        uf ufVarA = a(fbbVar.a());
        eh5 eh5Var = (eh5) ufVarA.a();
        eh5 eh5Var2 = (eh5) ufVarA.b();
        uf ufVarA2 = a(fbbVar.b());
        return new uf(new fbb(fbbVar.c(), eh5Var2, (eh5) ufVarA2.a()), new fbb(fbbVar.c(), eh5Var, (eh5) ufVarA2.b()));
    }

    public static final eh5 e(eh5 eh5Var, List list) {
        eh5Var.G0().size();
        list.size();
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(h((fbb) it.next()));
        }
        return scb.e(eh5Var, arrayList, null, null, 6, null);
    }

    public static final mcb f(mcb mcbVar) {
        TypeSubstitutor typeSubstitutorG = TypeSubstitutor.g(new b());
        y45.i(typeSubstitutorG, "create(object : TypeCons…ojection\n        }\n    })");
        return typeSubstitutorG.t(mcbVar);
    }

    public static final fbb g(mcb mcbVar, hcb hcbVar) {
        int i = a.a[TypeSubstitutor.c(hcbVar.h(), mcbVar).ordinal()];
        if (i == 1) {
            eh5 type = mcbVar.getType();
            y45.i(type, "type");
            eh5 type2 = mcbVar.getType();
            y45.i(type2, "type");
            return new fbb(hcbVar, type, type2);
        }
        if (i == 2) {
            eh5 type3 = mcbVar.getType();
            y45.i(type3, "type");
            sm9 sm9VarI = DescriptorUtilsKt.j(hcbVar).I();
            y45.i(sm9VarI, "typeParameter.builtIns.nullableAnyType");
            return new fbb(hcbVar, type3, sm9VarI);
        }
        if (i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        sm9 sm9VarH = DescriptorUtilsKt.j(hcbVar).H();
        y45.i(sm9VarH, "typeParameter.builtIns.nothingType");
        eh5 type4 = mcbVar.getType();
        y45.i(type4, "type");
        return new fbb(hcbVar, sm9VarH, type4);
    }

    public static final mcb h(fbb fbbVar) {
        fbbVar.d();
        if (!y45.e(fbbVar.a(), fbbVar.b())) {
            Variance varianceH = fbbVar.c().h();
            Variance variance = Variance.IN_VARIANCE;
            if (varianceH != variance) {
                if ((!d.n0(fbbVar.a()) || fbbVar.c().h() == variance) && d.p0(fbbVar.b())) {
                    return new ocb(i(fbbVar, variance), fbbVar.a());
                }
                return new ocb(i(fbbVar, Variance.OUT_VARIANCE), fbbVar.b());
            }
        }
        return new ocb(fbbVar.a());
    }

    public static final Variance i(fbb fbbVar, Variance variance) {
        return variance == fbbVar.c().h() ? Variance.INVARIANT : variance;
    }
}
