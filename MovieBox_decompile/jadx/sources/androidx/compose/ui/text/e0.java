package androidx.compose.ui.text;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.NoWhenBranchMatchedException;

public abstract class e0 {

    public class a {

        public static final int[] f5788a;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f5788a = iArr;
        }
    }

    public static final w b(v vVar, u uVar) {
        if (vVar == null && uVar == null) {
            return null;
        }
        return c.a(vVar, uVar);
    }

    public static final d0 c(d0 d0Var, LayoutDirection layoutDirection) {
        return new d0(SpanStyleKt.d(d0Var.y()), s.c(d0Var.v(), layoutDirection), d0Var.w());
    }

    public static final int d(LayoutDirection layoutDirection, int i10) {
        androidx.compose.ui.text.style.j.a aVar = androidx.compose.ui.text.style.j.f6105b;
        if (androidx.compose.ui.text.style.j.j(i10, aVar.a())) {
            int i11 = a.f5788a[layoutDirection.ordinal()];
            if (i11 == 1) {
                return aVar.b();
            }
            if (i11 == 2) {
                return aVar.c();
            }
            throw new NoWhenBranchMatchedException();
        }
        if (!androidx.compose.ui.text.style.j.j(i10, aVar.f())) {
            return i10;
        }
        int i12 = a.f5788a[layoutDirection.ordinal()];
        if (i12 == 1) {
            return aVar.d();
        }
        if (i12 == 2) {
            return aVar.e();
        }
        throw new NoWhenBranchMatchedException();
    }
}
