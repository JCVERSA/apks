package androidx.compose.ui.graphics;

import android.graphics.ColorFilter;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;

public abstract class i0 {
    public static final ColorFilter a(long j10, int i10) {
        return Build.VERSION.SDK_INT >= 29 ? i1.f4142a.a(j10, i10) : new PorterDuffColorFilter(w1.j(j10), f0.c(i10));
    }

    public static final ColorFilter b(v1 v1Var) {
        return v1Var.a();
    }
}
