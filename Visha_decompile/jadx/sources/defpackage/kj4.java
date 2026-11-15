package defpackage;

import java.util.List;

public class kj4 extends eg5 {
    public final jj4 i;

    public kj4(List list) {
        super(list);
        int iMax = 0;
        for (int i = 0; i < list.size(); i++) {
            jj4 jj4Var = (jj4) ((dg5) list.get(i)).b;
            if (jj4Var != null) {
                iMax = Math.max(iMax, jj4Var.f());
            }
        }
        this.i = new jj4(new float[iMax], new int[iMax]);
    }

    @Override
    public jj4 i(dg5 dg5Var, float f) {
        this.i.g((jj4) dg5Var.b, (jj4) dg5Var.c, f);
        return this.i;
    }
}
