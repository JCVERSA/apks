package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.a;
import kotlin.reflect.jvm.internal.impl.types.k;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public abstract class iy5 {
    public static final k a(qw0 qw0Var, qw0 qw0Var2) {
        y45.j(qw0Var, "from");
        y45.j(qw0Var2, TypedValues.TransitionType.S_TO);
        qw0Var.r().size();
        qw0Var2.r().size();
        k.a aVar = k.c;
        List listR = qw0Var.r();
        y45.i(listR, "from.declaredTypeParameters");
        List list = listR;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((hcb) it.next()).m());
        }
        List listR2 = qw0Var2.r();
        y45.i(listR2, "to.declaredTypeParameters");
        List list2 = listR2;
        ArrayList arrayList2 = new ArrayList(z71.v(list2, 10));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            sm9 sm9VarQ = ((hcb) it2.next()).q();
            y45.i(sm9VarQ, "it.defaultType");
            arrayList2.add(TypeUtilsKt.a(sm9VarQ));
        }
        return k.a.e(aVar, a.y(i81.l1(arrayList, arrayList2)), false, 2, null);
    }
}
