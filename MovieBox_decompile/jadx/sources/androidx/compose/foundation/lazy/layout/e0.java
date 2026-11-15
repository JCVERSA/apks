package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.i1;
import androidx.compose.runtime.r2;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class e0 {
    public static final void a(i1 i1Var) {
        i1Var.getValue();
    }

    public static i1 c(i1 i1Var, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i10 & 1) != 0) {
            i1Var = r2.e(Unit.f64096a, r2.g());
        }
        return b(i1Var);
    }

    public static final void d(i1 i1Var) {
        i1Var.setValue(Unit.f64096a);
    }

    public static i1 b(i1 i1Var) {
        return i1Var;
    }
}
