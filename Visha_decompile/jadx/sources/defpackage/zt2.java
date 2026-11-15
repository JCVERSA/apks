package defpackage;

import com.yandex.div2.Div;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;

public abstract class zt2 {
    public static final List b(Div div, oj3 oj3Var) {
        if (!(div instanceof Div.q) && !(div instanceof Div.g) && !(div instanceof Div.e) && !(div instanceof Div.l) && !(div instanceof Div.h) && !(div instanceof Div.m) && !(div instanceof Div.i) && !(div instanceof Div.c) && !(div instanceof Div.k) && !(div instanceof Div.r) && !(div instanceof Div.o)) {
            if (div instanceof Div.b) {
                return bh2.c(((Div.b) div).c(), oj3Var);
            }
            if (div instanceof Div.f) {
                return bh2.p(((Div.f) div).c(), oj3Var);
            }
            if (div instanceof Div.d) {
                return bh2.d(((Div.d) div).c(), oj3Var);
            }
            if (div instanceof Div.j) {
                return bh2.e(((Div.j) div).c(), oj3Var);
            }
            if (div instanceof Div.p) {
                return bh2.q(((Div.p) div).c(), oj3Var);
            }
            if (div instanceof Div.n) {
                return bh2.r(((Div.n) div).c(), oj3Var);
            }
            throw new NoWhenBranchMatchedException();
        }
        return y71.k();
    }

    public static final yt2 c(Div div, oj3 oj3Var) {
        y45.j(div, "<this>");
        y45.j(oj3Var, "resolver");
        return new yt2(div, oj3Var);
    }
}
