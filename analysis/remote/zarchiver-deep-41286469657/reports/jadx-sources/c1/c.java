package c1;

import android.animation.ValueAnimator;

public final class c implements ValueAnimator.AnimatorUpdateListener {

    public final d f448a;

    public c(d dVar) {
        this.f448a = dVar;
    }

    @Override
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        d dVar = this.f448a;
        float f2 = dVar.f451c;
        dVar.f453e = (valueAnimator.getAnimatedFraction() * (dVar.f455g - f2)) + f2;
        float f3 = dVar.f452d;
        dVar.f454f = (valueAnimator.getAnimatedFraction() * (dVar.f456h - f3)) + f3;
        dVar.f449a.show(dVar.f453e, dVar.f454f);
    }
}
