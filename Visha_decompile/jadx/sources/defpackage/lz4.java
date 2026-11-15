package defpackage;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.l;

public final class lz4 extends l {
    public final hcb[] c;
    public final mcb[] d;
    public final boolean e;

    public lz4(hcb[] hcbVarArr, mcb[] mcbVarArr, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hcbVarArr, mcbVarArr, (i & 4) != 0 ? false : z);
    }

    @Override
    public boolean b() {
        return this.e;
    }

    @Override
    public mcb e(eh5 eh5Var) {
        y45.j(eh5Var, "key");
        px0 px0VarC = eh5Var.I0().c();
        hcb hcbVar = px0VarC instanceof hcb ? (hcb) px0VarC : null;
        if (hcbVar == null) {
            return null;
        }
        int index = hcbVar.getIndex();
        hcb[] hcbVarArr = this.c;
        if (index >= hcbVarArr.length || !y45.e(hcbVarArr[index].m(), hcbVar.m())) {
            return null;
        }
        return this.d[index];
    }

    @Override
    public boolean f() {
        return this.d.length == 0;
    }

    public final mcb[] i() {
        return this.d;
    }

    public final hcb[] j() {
        return this.c;
    }

    public lz4(hcb[] hcbVarArr, mcb[] mcbVarArr, boolean z) {
        y45.j(hcbVarArr, "parameters");
        y45.j(mcbVarArr, "arguments");
        this.c = hcbVarArr;
        this.d = mcbVarArr;
        this.e = z;
        int length = hcbVarArr.length;
        int length2 = mcbVarArr.length;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public lz4(List list, List list2) {
        this((hcb[]) list.toArray(new hcb[0]), (mcb[]) list2.toArray(new mcb[0]), false, 4, null);
        y45.j(list, "parameters");
        y45.j(list2, "argumentsList");
    }
}
