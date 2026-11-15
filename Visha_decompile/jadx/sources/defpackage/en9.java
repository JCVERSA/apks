package defpackage;

import com.yandex.div.internal.widget.indicator.c;
import kotlin.NoWhenBranchMatchedException;

public abstract class en9 {
    public static final dn9 a(sz4 sz4Var) {
        y45.j(sz4Var, "style");
        c cVarA = sz4Var.a();
        if (cVarA instanceof c.b) {
            return new gw8(sz4Var);
        }
        if (cVarA instanceof c.a) {
            return new dw0(sz4Var);
        }
        throw new NoWhenBranchMatchedException();
    }
}
