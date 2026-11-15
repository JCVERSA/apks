package defpackage;

import java.util.Objects;

public final class arj {
    public final int a;
    public final baj[] b;
    public final tqj[] c;
    public final naf d;
    public final Object e;

    public arj(baj[] bajVarArr, tqj[] tqjVarArr, naf nafVar, Object obj) {
        int length = bajVarArr.length;
        n7g.d(length == tqjVarArr.length);
        this.b = bajVarArr;
        this.c = (tqj[]) tqjVarArr.clone();
        this.d = nafVar;
        this.e = obj;
        this.a = length;
    }

    public final boolean a(arj arjVar, int i) {
        return arjVar != null && Objects.equals(this.b[i], arjVar.b[i]) && Objects.equals(this.c[i], arjVar.c[i]);
    }

    public final boolean b(int i) {
        return this.b[i] != null;
    }
}
