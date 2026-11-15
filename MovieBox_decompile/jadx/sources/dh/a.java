package dh;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.h;
import kotlin.jvm.internal.Intrinsics;

public final class a extends h {

    private final Float f59035q;

    private final Float f59036r;

    private final DecelerateInterpolator f59037s;

    public a(Context context, Float f10, Float f11) {
        super(context);
        this.f59035q = f10;
        this.f59036r = f11;
        this.f59037s = new DecelerateInterpolator(f11 != null ? f11.floatValue() : 1.0f);
    }

    @Override
    protected void o(View targetView, RecyclerView.x state, RecyclerView.w.a action) {
        Intrinsics.h(targetView, "targetView");
        Intrinsics.h(state, "state");
        Intrinsics.h(action, "action");
        int iT = t(targetView, z());
        int iU = u(targetView, B());
        int iW = w((int) Math.sqrt((iT * iT) + (iU * iU)));
        if (iW > 0) {
            action.d(-iT, -iU, iW, this.f59037s);
        }
    }

    @Override
    protected float v(DisplayMetrics displayMetrics) {
        Intrinsics.h(displayMetrics, "displayMetrics");
        Float f10 = this.f59035q;
        return (f10 != null ? f10.floatValue() : 25.0f) / displayMetrics.densityDpi;
    }
}
