package defpackage;

import android.graphics.Path;
import java.util.List;

public class yf9 extends ab0 {
    public final sf9 i;
    public final Path j;
    public Path k;
    public Path l;
    public List m;

    public yf9(List list) {
        super(list);
        this.i = new sf9();
        this.j = new Path();
    }

    @Override
    public Path i(dg5 dg5Var, float f) {
        sf9 sf9Var = (sf9) dg5Var.b;
        sf9 sf9Var2 = (sf9) dg5Var.c;
        this.i.c(sf9Var, sf9Var2 == null ? sf9Var : sf9Var2, f);
        sf9 sf9VarG = this.i;
        List list = this.m;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                sf9VarG = ((ag9) this.m.get(size)).g(sf9VarG);
            }
        }
        xp6.h(sf9VarG, this.j);
        if (this.e == null) {
            return this.j;
        }
        if (this.k == null) {
            this.k = new Path();
            this.l = new Path();
        }
        xp6.h(sf9Var, this.k);
        if (sf9Var2 != null) {
            xp6.h(sf9Var2, this.l);
        }
        iu5 iu5Var = this.e;
        float f2 = dg5Var.g;
        float fFloatValue = dg5Var.h.floatValue();
        Path path = this.k;
        return (Path) iu5Var.b(f2, fFloatValue, path, sf9Var2 == null ? path : this.l, f, e(), f());
    }

    public void r(List list) {
        this.m = list;
    }
}
