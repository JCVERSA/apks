package kotlin.reflect.jvm.internal.impl.types.checker;

import defpackage.ddb;
import defpackage.eh5;
import defpackage.f07;
import defpackage.fy3;
import defpackage.g4;
import defpackage.gh5;
import defpackage.mcb;
import defpackage.mgb;
import defpackage.pr0;
import defpackage.sbb;
import defpackage.sm9;
import defpackage.y45;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.NoWhenBranchMatchedException;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public abstract class KotlinTypePreparator extends g4 {

    public static final class a extends KotlinTypePreparator {
        public static final a a = new a();
    }

    @Override
    public mgb a(gh5 gh5Var) {
        mgb mgbVarD;
        y45.j(gh5Var, "type");
        if (!(gh5Var instanceof eh5)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        mgb mgbVarL0 = ((eh5) gh5Var).L0();
        if (mgbVarL0 instanceof sm9) {
            mgbVarD = c((sm9) mgbVarL0);
        } else {
            if (!(mgbVarL0 instanceof fy3)) {
                throw new NoWhenBranchMatchedException();
            }
            fy3 fy3Var = (fy3) mgbVarL0;
            sm9 sm9VarC = c(fy3Var.Q0());
            sm9 sm9VarC2 = c(fy3Var.R0());
            mgbVarD = (sm9VarC == fy3Var.Q0() && sm9VarC2 == fy3Var.R0()) ? mgbVarL0 : KotlinTypeFactory.d(sm9VarC, sm9VarC2);
        }
        return ddb.c(mgbVarD, mgbVarL0, new KotlinTypePreparator$prepareType$1(this));
    }

    public final sm9 c(sm9 sm9Var) {
        eh5 type;
        sbb sbbVarI0 = sm9Var.I0();
        IntersectionTypeConstructor intersectionTypeConstructorL = null;
        mgbVarL0 = null;
        mgb mgbVarL0 = null;
        if (!(sbbVarI0 instanceof pr0)) {
            if (!(sbbVarI0 instanceof IntersectionTypeConstructor) || !sm9Var.J0()) {
                return sm9Var;
            }
            IntersectionTypeConstructor intersectionTypeConstructor = (IntersectionTypeConstructor) sbbVarI0;
            Collection collectionK = intersectionTypeConstructor.k();
            ArrayList arrayList = new ArrayList(z71.v(collectionK, 10));
            Iterator it = collectionK.iterator();
            boolean z = false;
            while (it.hasNext()) {
                arrayList.add(TypeUtilsKt.w((eh5) it.next()));
                z = true;
            }
            if (z) {
                eh5 eh5VarG = intersectionTypeConstructor.g();
                intersectionTypeConstructorL = new IntersectionTypeConstructor(arrayList).l(eh5VarG != null ? TypeUtilsKt.w(eh5VarG) : null);
            }
            if (intersectionTypeConstructorL != null) {
                intersectionTypeConstructor = intersectionTypeConstructorL;
            }
            return intersectionTypeConstructor.f();
        }
        pr0 pr0Var = (pr0) sbbVarI0;
        mcb mcbVarB = pr0Var.b();
        if (mcbVarB.c() != Variance.IN_VARIANCE) {
            mcbVarB = null;
        }
        if (mcbVarB != null && (type = mcbVarB.getType()) != null) {
            mgbVarL0 = type.L0();
        }
        mgb mgbVar = mgbVarL0;
        if (pr0Var.f() == null) {
            mcb mcbVarB2 = pr0Var.b();
            Collection collectionK2 = pr0Var.k();
            ArrayList arrayList2 = new ArrayList(z71.v(collectionK2, 10));
            Iterator it2 = collectionK2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((eh5) it2.next()).L0());
            }
            pr0Var.h(new NewCapturedTypeConstructor(mcbVarB2, arrayList2, null, 4, null));
        }
        CaptureStatus captureStatus = CaptureStatus.FOR_SUBTYPING;
        NewCapturedTypeConstructor newCapturedTypeConstructorF = pr0Var.f();
        y45.g(newCapturedTypeConstructorF);
        return new f07(captureStatus, newCapturedTypeConstructorF, mgbVar, sm9Var.H0(), sm9Var.J0(), false, 32, null);
    }
}
