package defpackage;

import com.yandex.div.core.view2.reuse.b;
import com.yandex.div2.Div;
import com.yandex.div2.DivState;
import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;

public final class o07 extends fpa {
    public b e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o07(zl2 zl2Var, int i, b bVar) {
        super(zl2Var, i);
        y45.j(zl2Var, "item");
        this.e = bVar;
    }

    public final List f() {
        Div div;
        oj3 oj3VarD = d().d();
        Div divC = d().c();
        if (!(divC instanceof Div.q) && !(divC instanceof Div.g) && !(divC instanceof Div.e) && !(divC instanceof Div.l) && !(divC instanceof Div.h) && !(divC instanceof Div.m) && !(divC instanceof Div.i) && !(divC instanceof Div.k) && !(divC instanceof Div.r) && !(divC instanceof Div.o)) {
            if (divC instanceof Div.b) {
                return h(bh2.c(((Div.b) divC).c(), oj3VarD));
            }
            if (divC instanceof Div.c) {
                return h(bh2.s(bh2.l(((Div.c) divC).c()), oj3VarD));
            }
            if (divC instanceof Div.f) {
                return h(bh2.p(((Div.f) divC).c(), oj3VarD));
            }
            if (divC instanceof Div.d) {
                return h(bh2.d(((Div.d) divC).c(), oj3VarD));
            }
            if (divC instanceof Div.j) {
                return h(bh2.e(((Div.j) divC).c(), oj3VarD));
            }
            if (divC instanceof Div.p) {
                return h(bh2.q(((Div.p) divC).c(), oj3VarD));
            }
            if (!(divC instanceof Div.n)) {
                throw new NoWhenBranchMatchedException();
            }
            DivState.State stateF = eu2.f(((Div.n) divC).c(), oj3VarD);
            return (stateF == null || (div = stateF.c) == null) ? y71.k() : h(x71.e(bh2.t(div, oj3VarD)));
        }
        return y71.k();
    }

    public final b g() {
        return this.e;
    }

    public final List h(List list) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            arrayList.add(new o07((zl2) obj, i, this.e));
            i = i2;
        }
        return arrayList;
    }

    public final void i(b bVar) {
        this.e = bVar;
    }
}
