package freemarker.core;

import defpackage.zfa;
import java.util.ArrayList;
import java.util.List;

public class i0 extends m {
    public t0 k;
    public t0 l;

    @Override
    public zfa F(Environment environment) {
        return (this.h.O(environment) ? this.k : this.l).Q(environment);
    }

    @Override
    public void h0(List list, Token token, Token token2) throws ParseException {
        if (list.size() != 2) {
            throw m0("requires exactly 2", token, token2);
        }
        this.k = (t0) list.get(0);
        this.l = (t0) list.get(1);
    }

    @Override
    public void i0(t0 t0Var, String str, t0 t0Var2, t0.a aVar) {
        i0 i0Var = (i0) t0Var;
        i0Var.k = this.k.I(str, t0Var2, aVar);
        i0Var.l = this.l.I(str, t0Var2, aVar);
    }

    @Override
    public t0 j0(int i) {
        if (i == 0) {
            return this.k;
        }
        if (i == 1) {
            return this.l;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public List k0() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(this.k);
        arrayList.add(this.l);
        return arrayList;
    }

    @Override
    public int l0() {
        return 2;
    }
}
