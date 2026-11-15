package defpackage;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;

public final class o19 extends Visibility {
    public final float b;

    public o19(float f) {
        this.b = f;
    }

    @Override
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        y45.j(view, "view");
        y45.j(transitionValues, "startValues");
        y45.j(transitionValues2, "endValues");
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_X, this.b, view.getScaleX()), PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_Y, this.b, view.getScaleY()));
        y45.i(objectAnimatorOfPropertyValuesHolder, "ofPropertyValuesHolder(\n…Y\n            )\n        )");
        return objectAnimatorOfPropertyValuesHolder;
    }

    @Override
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        y45.j(view, "view");
        y45.j(transitionValues, "startValues");
        y45.j(transitionValues2, "endValues");
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_X, view.getScaleX(), this.b), PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_Y, view.getScaleY(), this.b));
        y45.i(objectAnimatorOfPropertyValuesHolder, "ofPropertyValuesHolder(\n…r\n            )\n        )");
        return objectAnimatorOfPropertyValuesHolder;
    }
}
