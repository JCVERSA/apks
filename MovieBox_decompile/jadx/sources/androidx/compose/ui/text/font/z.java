package androidx.compose.ui.text.font;

import android.graphics.Typeface;
import kotlin.jvm.internal.Intrinsics;

final class z implements x {
    private final Typeface c(String str, p pVar, int i10) {
        n.a aVar = n.f5830b;
        if (n.f(i10, aVar.b()) && Intrinsics.c(pVar, p.f5840b.a()) && (str == null || str.length() == 0)) {
            return Typeface.DEFAULT;
        }
        return Typeface.create(str == null ? Typeface.DEFAULT : Typeface.create(str, 0), pVar.h(), n.f(i10, aVar.a()));
    }

    @Override
    public Typeface a(s sVar, p pVar, int i10) {
        return c(sVar.c(), pVar, i10);
    }

    @Override
    public Typeface b(p pVar, int i10) {
        return c(null, pVar, i10);
    }
}
