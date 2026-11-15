package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.c;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.j;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public abstract class d7a {
    public static final gw6 a;

    static {
        t93 t93Var = new t93(id3.a.i(), e.n);
        ClassKind classKind = ClassKind.INTERFACE;
        by6 by6VarG = e.q.g();
        yt9 yt9Var = yt9.a;
        vx9 vx9Var = LockBasedStorageManager.e;
        gw6 gw6Var = new gw6(t93Var, classKind, false, false, by6VarG, yt9Var, vx9Var);
        gw6Var.H0(Modality.ABSTRACT);
        gw6Var.J0(b92.e);
        gw6Var.I0(x71.e(icb.M0(gw6Var, md.u1.b(), false, Variance.IN_VARIANCE, by6.g("T"), 0, vx9Var)));
        gw6Var.F0();
        a = gw6Var;
    }

    public static final sm9 a(eh5 eh5Var) {
        y45.j(eh5Var, "suspendFunType");
        c.q(eh5Var);
        d dVarI = TypeUtilsKt.i(eh5Var);
        md annotations = eh5Var.getAnnotations();
        eh5 eh5VarJ = c.j(eh5Var);
        List listE = c.e(eh5Var);
        List listL = c.l(eh5Var);
        ArrayList arrayList = new ArrayList(z71.v(listL, 10));
        Iterator it = listL.iterator();
        while (it.hasNext()) {
            arrayList.add(((mcb) it.next()).getType());
        }
        j jVarH = j.c.h();
        sbb sbbVarM = a.m();
        y45.i(sbbVarM, "FAKE_CONTINUATION_CLASS_DESCRIPTOR.typeConstructor");
        List listK0 = i81.K0(arrayList, KotlinTypeFactory.j(jVarH, sbbVarM, x71.e(TypeUtilsKt.a(c.k(eh5Var))), false, null, 16, null));
        sm9 sm9VarI = TypeUtilsKt.i(eh5Var).I();
        y45.i(sm9VarI, "suspendFunType.builtIns.nullableAnyType");
        return c.b(dVarI, annotations, eh5VarJ, listE, listK0, null, sm9VarI, (128 & 128) != 0 ? false : false).M0(eh5Var.J0());
    }
}
