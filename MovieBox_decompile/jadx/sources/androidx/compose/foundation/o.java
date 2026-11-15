package androidx.compose.foundation;

import android.content.Context;
import android.os.Build;
import android.widget.EdgeEffect;

public final class o {

    public static final o f2837a = new o();

    private o() {
    }

    public final EdgeEffect a(Context context) {
        return Build.VERSION.SDK_INT >= 31 ? b.f2306a.a(context, null) : new u(context);
    }

    public final float b(EdgeEffect edgeEffect) {
        if (Build.VERSION.SDK_INT >= 31) {
            return b.f2306a.b(edgeEffect);
        }
        return 0.0f;
    }

    public final void c(EdgeEffect edgeEffect, int i10) {
        if (Build.VERSION.SDK_INT >= 31) {
            edgeEffect.onAbsorb(i10);
        } else if (edgeEffect.isFinished()) {
            edgeEffect.onAbsorb(i10);
        }
    }

    public final float d(EdgeEffect edgeEffect, float f10, float f11) {
        if (Build.VERSION.SDK_INT >= 31) {
            return b.f2306a.c(edgeEffect, f10, f11);
        }
        edgeEffect.onPull(f10, f11);
        return f10;
    }

    public final void e(EdgeEffect edgeEffect, float f10) {
        if (edgeEffect instanceof u) {
            ((u) edgeEffect).a(f10);
        } else {
            edgeEffect.onRelease();
        }
    }
}
