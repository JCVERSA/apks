package m6;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import kotlin.jvm.internal.Intrinsics;

public final class f implements b {
    @Override
    public Animator[] a(View view) {
        Intrinsics.h(view, "view");
        ObjectAnimator animator = ObjectAnimator.ofFloat(view, "translationX", view.getRootView().getWidth(), 0.0f);
        animator.setDuration(400L);
        animator.setInterpolator(new DecelerateInterpolator(1.8f));
        Intrinsics.g(animator, "animator");
        return new Animator[]{animator};
    }
}
