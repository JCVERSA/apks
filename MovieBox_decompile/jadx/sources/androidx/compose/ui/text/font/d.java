package androidx.compose.ui.text.font;

public abstract class d {
    public static final p a(p.a aVar) {
        return aVar.d();
    }

    public static final int b(boolean z10, boolean z11) {
        if (z11 && z10) {
            return 3;
        }
        if (z10) {
            return 1;
        }
        return z11 ? 2 : 0;
    }

    public static final int c(p pVar, int i10) {
        return b(pVar.compareTo(a(p.f5840b)) >= 0, n.f(i10, n.f5830b.a()));
    }
}
