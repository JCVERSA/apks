package defpackage;

import android.animation.ValueAnimator;
import android.view.View;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class vx0 {
    public final CharSequence a;
    public final int b;
    public final int c;
    public ValueAnimator d;
    public View.OnAttachStateChangeListener e;

    public vx0(CharSequence charSequence, int i, int i2, ValueAnimator valueAnimator, View.OnAttachStateChangeListener onAttachStateChangeListener) {
        y45.j(charSequence, "originalText");
        this.a = charSequence;
        this.b = i;
        this.c = i2;
        this.d = valueAnimator;
        this.e = onAttachStateChangeListener;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vx0)) {
            return false;
        }
        vx0 vx0Var = (vx0) obj;
        return y45.e(this.a, vx0Var.a) && this.b == vx0Var.b && this.c == vx0Var.c && y45.e(this.d, vx0Var.d) && y45.e(this.e, vx0Var.e);
    }

    public final ValueAnimator getAnimator() {
        return this.d;
    }

    public final View.OnAttachStateChangeListener getAttachStateListener() {
        return this.e;
    }

    public final int getOriginalGravity() {
        return this.b;
    }

    public final CharSequence getOriginalText() {
        return this.a;
    }

    public final int getOriginalTextAlignment() {
        return this.c;
    }

    public int hashCode() {
        int iHashCode = ((((this.a.hashCode() * 31) + Integer.hashCode(this.b)) * 31) + Integer.hashCode(this.c)) * 31;
        ValueAnimator valueAnimator = this.d;
        int iHashCode2 = (iHashCode + (valueAnimator == null ? 0 : valueAnimator.hashCode())) * 31;
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.e;
        return iHashCode2 + (onAttachStateChangeListener != null ? onAttachStateChangeListener.hashCode() : 0);
    }

    public final void setAnimator(ValueAnimator valueAnimator) {
        this.d = valueAnimator;
    }

    public final void setAttachStateListener(View.OnAttachStateChangeListener onAttachStateChangeListener) {
        this.e = onAttachStateChangeListener;
    }

    public String toString() {
        CharSequence charSequence = this.a;
        return "ClickMarqueeState(originalText=" + ((Object) charSequence) + ", originalGravity=" + this.b + ", originalTextAlignment=" + this.c + ", animator=" + this.d + ", attachStateListener=" + this.e + ")";
    }

    public vx0(CharSequence charSequence, int i, int i2, ValueAnimator valueAnimator, View.OnAttachStateChangeListener onAttachStateChangeListener, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(charSequence, i, i2, (i3 & 8) != 0 ? null : valueAnimator, (i3 & 16) != 0 ? null : onAttachStateChangeListener);
    }
}
