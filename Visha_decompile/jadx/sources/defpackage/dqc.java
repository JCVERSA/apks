package defpackage;

import java.util.Vector;

public class dqc {
    public eqc a;
    public Vector b = new Vector();

    public dqc(eqc eqcVar) {
        this.a = eqcVar;
    }

    public dqc a(l1[] l1VarArr, x0[] x0VarArr) {
        nl[] nlVarArr = new nl[l1VarArr.length];
        for (int i = 0; i != l1VarArr.length; i++) {
            nlVarArr[i] = new nl(l1VarArr[i], x0VarArr[i]);
        }
        return c(nlVarArr);
    }

    public dqc b(l1[] l1VarArr, String[] strArr) {
        int length = strArr.length;
        x0[] x0VarArr = new x0[length];
        for (int i = 0; i != length; i++) {
            x0VarArr[i] = this.a.a(l1VarArr[i], strArr[i]);
        }
        return a(l1VarArr, x0VarArr);
    }

    public dqc c(nl[] nlVarArr) {
        this.b.addElement(new wm8(nlVarArr));
        return this;
    }

    public dqc d(l1 l1Var, x0 x0Var) {
        this.b.addElement(new wm8(l1Var, x0Var));
        return this;
    }

    public dqc e(l1 l1Var, String str) {
        d(l1Var, this.a.a(l1Var, str));
        return this;
    }

    public cqc f() {
        int size = this.b.size();
        wm8[] wm8VarArr = new wm8[size];
        for (int i = 0; i != size; i++) {
            wm8VarArr[i] = (wm8) this.b.elementAt(i);
        }
        return new cqc(this.a, wm8VarArr);
    }
}
