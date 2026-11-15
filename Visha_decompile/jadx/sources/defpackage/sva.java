package defpackage;

import com.google.android.exoplayer2.b0;

public final class sva {
    public final int a;
    public final ls8[] b;
    public final qi3[] c;
    public final b0 d;
    public final Object e;

    public sva(ls8[] ls8VarArr, qi3[] qi3VarArr, b0 b0Var, Object obj) {
        this.b = ls8VarArr;
        this.c = (qi3[]) qi3VarArr.clone();
        this.d = b0Var;
        this.e = obj;
        this.a = ls8VarArr.length;
    }

    public boolean a(sva svaVar) {
        if (svaVar == null || svaVar.c.length != this.c.length) {
            return false;
        }
        for (int i = 0; i < this.c.length; i++) {
            if (!b(svaVar, i)) {
                return false;
            }
        }
        return true;
    }

    public boolean b(sva svaVar, int i) {
        return svaVar != null && blb.c(this.b[i], svaVar.b[i]) && blb.c(this.c[i], svaVar.c[i]);
    }

    public boolean c(int i) {
        return this.b[i] != null;
    }
}
