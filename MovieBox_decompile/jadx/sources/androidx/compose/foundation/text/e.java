package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.v;

final class e implements v {

    private final v f2894b;

    private final int f2895c;

    private final int f2896d;

    public e(v vVar, int i10, int i11) {
        this.f2894b = vVar;
        this.f2895c = i10;
        this.f2896d = i11;
    }

    @Override
    public int a(int i10) {
        int iA = this.f2894b.a(i10);
        if (i10 >= 0 && i10 <= this.f2895c) {
            f.c(iA, this.f2896d, i10);
        }
        return iA;
    }
}
