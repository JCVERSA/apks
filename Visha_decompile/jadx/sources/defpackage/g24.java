package defpackage;

import android.animation.ValueAnimator;

public final class g24 {
    public final ValueAnimator a;
    public boolean b;

    public g24(ValueAnimator valueAnimator) {
        y45.j(valueAnimator, "animator");
        this.a = valueAnimator;
        valueAnimator.setDuration(250L);
    }

    public final void a() {
        this.a.cancel();
    }

    public final boolean b() {
        return this.b;
    }

    public final boolean c() {
        return this.a.isRunning();
    }

    public final void d() {
        this.b = !this.b;
        this.a.reverse();
    }

    public final ValueAnimator getAnimator() {
        return this.a;
    }

    public final void setReversed(boolean z) {
        this.b = z;
    }
}
