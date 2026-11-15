package defpackage;

import android.view.View;

public abstract class dmb {
    public static final float a(View view) {
        y45.j(view, "<this>");
        return (view.getMeasuredWidth() / view.getContext().getResources().getDisplayMetrics().density) * (view.getMeasuredHeight() / view.getContext().getResources().getDisplayMetrics().density);
    }

    public static final float b(float f) {
        if (f >= 34560.0f) {
            return 1.05f;
        }
        if (f <= 2304.0f) {
            return 1.25f;
        }
        return 1.25f - (((f - 2304.0f) / 32256.0f) * 0.20000005f);
    }

    public static final float c(float f) {
        if (f >= 34560.0f) {
            return 0.97f;
        }
        if (f <= 2304.0f) {
            return 0.9f;
        }
        return (((f - 2304.0f) / 32256.0f) * 0.07000005f) + 0.9f;
    }

    public static final float d(float f) {
        return q97.a.a(f);
    }
}
