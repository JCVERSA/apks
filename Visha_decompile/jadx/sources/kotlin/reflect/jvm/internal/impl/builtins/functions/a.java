package kotlin.reflect.jvm.internal.impl.builtins.functions;

import defpackage.by6;
import defpackage.g1a;
import defpackage.h84;
import defpackage.i81;
import defpackage.j1a;
import defpackage.nn0;
import defpackage.o54;
import defpackage.qq6;
import defpackage.qw0;
import defpackage.sw0;
import defpackage.ubc;
import defpackage.vx9;
import defpackage.xw0;
import defpackage.y45;
import defpackage.ye9;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class a implements sw0 {
    public final vx9 a;
    public final qq6 b;

    public a(vx9 vx9Var, qq6 qq6Var) {
        y45.j(vx9Var, "storageManager");
        y45.j(qq6Var, "module");
        this.a = vx9Var;
        this.b = qq6Var;
    }

    @Override
    public boolean a(o54 o54Var, by6 by6Var) {
        y45.j(o54Var, "packageFqName");
        y45.j(by6Var, "name");
        String strB = by6Var.b();
        y45.i(strB, "name.asString()");
        return (g1a.R(strB, "Function", false, 2, null) || g1a.R(strB, "KFunction", false, 2, null) || g1a.R(strB, "SuspendFunction", false, 2, null) || g1a.R(strB, "KSuspendFunction", false, 2, null)) && FunctionClassKind.Companion.c(strB, o54Var) != null;
    }

    @Override
    public qw0 b(xw0 xw0Var) {
        y45.j(xw0Var, "classId");
        if (xw0Var.k() || xw0Var.l()) {
            return null;
        }
        String strB = xw0Var.i().b();
        y45.i(strB, "classId.relativeClassName.asString()");
        if (!j1a.X(strB, "Function", false, 2, null)) {
            return null;
        }
        o54 o54VarH = xw0Var.h();
        y45.i(o54VarH, "classId.packageFqName");
        FunctionClassKind.a.C0377a c0377aC = FunctionClassKind.Companion.c(strB, o54VarH);
        if (c0377aC == null) {
            return null;
        }
        FunctionClassKind functionClassKindA = c0377aC.a();
        int iB = c0377aC.b();
        List listH = this.b.C(o54VarH).H();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listH) {
            if (obj instanceof nn0) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            it.next();
        }
        ubc.a(i81.q0(arrayList2));
        return new h84(this.a, (nn0) i81.o0(arrayList), functionClassKindA, iB);
    }

    @Override
    public Collection c(o54 o54Var) {
        y45.j(o54Var, "packageFqName");
        return ye9.f();
    }
}
