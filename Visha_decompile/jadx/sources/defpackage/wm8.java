package defpackage;

public class wm8 extends j1 {
    public t1 b;

    public wm8(l1 l1Var, x0 x0Var) {
        this(new nl(l1Var, x0Var));
    }

    public static wm8 n(Object obj) {
        if (obj instanceof wm8) {
            return (wm8) obj;
        }
        if (obj != null) {
            return new wm8(t1.y(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        return this.b;
    }

    public nl m() {
        if (this.b.size() == 0) {
            return null;
        }
        return nl.m(this.b.z(0));
    }

    public nl[] o() {
        int size = this.b.size();
        nl[] nlVarArr = new nl[size];
        for (int i = 0; i != size; i++) {
            nlVarArr[i] = nl.m(this.b.z(i));
        }
        return nlVarArr;
    }

    public boolean p() {
        return this.b.size() > 1;
    }

    public int size() {
        return this.b.size();
    }

    public wm8(t1 t1Var) {
        this.b = t1Var;
    }

    public wm8(nl nlVar) {
        this.b = new bq1(nlVar);
    }

    public wm8(nl[] nlVarArr) {
        this.b = new bq1(nlVarArr);
    }
}
