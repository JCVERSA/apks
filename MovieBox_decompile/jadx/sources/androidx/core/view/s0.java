package androidx.core.view;

import android.view.WindowInsetsAnimation;
import android.view.animation.Interpolator;

public abstract class s0 {
    public static WindowInsetsAnimation a(int i10, Interpolator interpolator, long j10) {
        return new WindowInsetsAnimation(i10, interpolator, j10);
    }
}
