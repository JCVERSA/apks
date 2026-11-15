package freemarker.core;

import defpackage.zfa;
import java.util.ArrayList;
import java.util.List;

public class h0 extends m {
    public List k;

    @Override
    public zfa F(Environment environment) throws _MiscTemplateException, InvalidReferenceException {
        zfa zfaVarQ = this.h.Q(environment);
        List list = this.k;
        int size = list.size();
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i2 >= size) {
                int i3 = size;
                if (i3 % 2 != 0) {
                    return ((t0) list.get(i3 - 1)).Q(environment);
                }
                throw new _MiscTemplateException(this.h, new Object[]{"The value before ?", this.i, "(case1, value1, case2, value2, ...) didn't match any of the case parameters, and there was no default value parameter (an additional last parameter) eihter. "});
            }
            t0 t0Var = (t0) list.get(i);
            int i4 = i;
            int i5 = size;
            if (q0.d(zfaVarQ, this.h, 1, "==", t0Var.Q(environment), t0Var, this, true, false, false, false, environment)) {
                return ((t0) list.get(i2)).Q(environment);
            }
            i = i4 + 2;
            size = i5;
        }
    }

    @Override
    public void h0(List list, Token token, Token token2) throws ParseException {
        if (list.size() < 2) {
            throw m0("must have at least 2", token, token2);
        }
        this.k = list;
    }

    @Override
    public void i0(t0 t0Var, String str, t0 t0Var2, t0.a aVar) {
        ArrayList arrayList = new ArrayList(this.k.size());
        for (int i = 0; i < this.k.size(); i++) {
            arrayList.add(((t0) this.k.get(i)).I(str, t0Var2, aVar));
        }
        ((h0) t0Var).k = arrayList;
    }

    @Override
    public t0 j0(int i) {
        return (t0) this.k.get(i);
    }

    @Override
    public List k0() {
        return this.k;
    }

    @Override
    public int l0() {
        return this.k.size();
    }
}
