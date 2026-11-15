package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.v;

public abstract class f {

    private static final v f2897a = new e(v.f5968a.a(), 0, 0);

    public static final v b() {
        return f2897a;
    }

    public static final void c(int i10, int i11, int i12) {
        if (i10 < 0 || i10 > i11) {
            throw new IllegalStateException(("OffsetMapping.originalToTransformed returned invalid mapping: " + i12 + " -> " + i10 + " is not in range of transformed text [0, " + i11 + ']').toString());
        }
    }
}
