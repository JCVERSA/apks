package androidx.compose.foundation.layout;

import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.WindowInsetsCompat;

public final class a implements h0 {

    private final int f2522a;

    private final String f2523b;

    private final i1 f2524c = u2.c(z0.c.f76464e, null, 2, null);

    private final i1 f2525d = u2.c(Boolean.TRUE, null, 2, null);

    public a(int i10, String str) {
        this.f2522a = i10;
        this.f2523b = str;
    }

    private final void g(boolean z10) {
        this.f2525d.setValue(Boolean.valueOf(z10));
    }

    @Override
    public int a(o0.e eVar) {
        return e().f76466b;
    }

    @Override
    public int b(o0.e eVar) {
        return e().f76468d;
    }

    @Override
    public int c(o0.e eVar, LayoutDirection layoutDirection) {
        return e().f76465a;
    }

    @Override
    public int d(o0.e eVar, LayoutDirection layoutDirection) {
        return e().f76467c;
    }

    public final z0.c e() {
        return (z0.c) this.f2524c.getValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.f2522a == ((a) obj).f2522a;
    }

    public final void f(z0.c cVar) {
        this.f2524c.setValue(cVar);
    }

    public final void h(WindowInsetsCompat windowInsetsCompat, int i10) {
        if (i10 == 0 || (i10 & this.f2522a) != 0) {
            f(windowInsetsCompat.getInsets(this.f2522a));
            g(windowInsetsCompat.isVisible(this.f2522a));
        }
    }

    public int hashCode() {
        return this.f2522a;
    }

    public String toString() {
        return this.f2523b + '(' + e().f76465a + ", " + e().f76466b + ", " + e().f76467c + ", " + e().f76468d + ')';
    }
}
