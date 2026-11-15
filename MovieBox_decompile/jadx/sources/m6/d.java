package m6;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import kotlin.jvm.internal.Intrinsics;

public final class d implements b {
    @Override
    public Animator[] a(View view) {
        Intrinsics.h(view, "view");
        ObjectAnimator animator = ObjectAnimator.ofFloat(view, "translationY", view.getMeasuredHeight(), 0.0f);
        animator.setDuration(400L);
        animator.setInterpolator(new DecelerateInterpolator(1.3f));
        Intrinsics.g(animator, "animator");
        return new Animator[]{animator};
    }
}
