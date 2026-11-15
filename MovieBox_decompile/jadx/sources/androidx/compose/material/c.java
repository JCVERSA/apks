package androidx.compose.material;

import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.w1;

public final class c {

    public static final c f3089a = new c();

    private c() {
    }

    private final float a(float f10, float f11, androidx.compose.runtime.i iVar, int i10) {
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-1528360391, i10, -1, "androidx.compose.material.ContentAlpha.contentAlpha (ContentAlpha.kt:76)");
        }
        long jU = ((u1) iVar.l(ContentColorKt.a())).u();
        if (!e.f3100a.a(iVar, 6).m() ? w1.i(jU) >= 0.5d : w1.i(jU) <= 0.5d) {
            f10 = f11;
        }
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return f10;
    }

    public final float b(androidx.compose.runtime.i iVar, int i10) {
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(621183615, i10, -1, "androidx.compose.material.ContentAlpha.<get-disabled> (ContentAlpha.kt:57)");
        }
        float fA = a(0.38f, 0.38f, iVar, ((i10 << 6) & 896) | 54);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return fA;
    }
}
