package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.text.style.p;
import kotlin.ranges.RangesKt;

public abstract class b {
    public static final long a(long j10, boolean z10, int i10, float f10) {
        return o0.b.f67397b.b(0, c(j10, z10, i10, f10), 0, o0.b.k(j10));
    }

    public static final int b(boolean z10, int i10, int i11) {
        if (z10 || !p.e(i10, p.f6133a.b())) {
            return RangesKt.e(i11, 1);
        }
        return 1;
    }

    public static final int c(long j10, boolean z10, int i10, float f10) {
        int iL = ((z10 || p.e(i10, p.f6133a.b())) && o0.b.h(j10)) ? o0.b.l(j10) : Integer.MAX_VALUE;
        return o0.b.n(j10) == iL ? iL : RangesKt.l(androidx.compose.foundation.text.b.a(f10), o0.b.n(j10), iL);
    }
}
