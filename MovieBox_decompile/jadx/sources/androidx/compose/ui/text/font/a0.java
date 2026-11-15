package androidx.compose.ui.text.font;

import android.graphics.Typeface;
import kotlin.jvm.internal.Intrinsics;

final class a0 implements x {
    private final Typeface c(String str, p pVar, int i10) {
        if (n.f(i10, n.f5830b.b()) && Intrinsics.c(pVar, p.f5840b.a()) && (str == null || str.length() == 0)) {
            return Typeface.DEFAULT;
        }
        int iC = d.c(pVar, i10);
        return (str == null || str.length() == 0) ? Typeface.defaultFromStyle(iC) : Typeface.create(str, iC);
    }

    private final Typeface d(String str, p pVar, int i10) {
        if (str.length() == 0) {
            return null;
        }
        Typeface typefaceC = c(str, pVar, i10);
        if (Intrinsics.c(typefaceC, Typeface.create(Typeface.DEFAULT, d.c(pVar, i10))) || Intrinsics.c(typefaceC, c(null, pVar, i10))) {
            return null;
        }
        return typefaceC;
    }

    @Override
    public Typeface a(s sVar, p pVar, int i10) {
        Typeface typefaceD = d(b0.b(sVar.c(), pVar), pVar, i10);
        return typefaceD == null ? c(sVar.c(), pVar, i10) : typefaceD;
    }

    @Override
    public Typeface b(p pVar, int i10) {
        return c(null, pVar, i10);
    }
}
