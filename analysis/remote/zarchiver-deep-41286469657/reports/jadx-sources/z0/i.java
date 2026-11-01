package z0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

public final class i extends AnimatorListenerAdapter {

    public final View f2354a;

    public i(View view) {
        this.f2354a = view;
    }

    @Override
    public final void onAnimationEnd(Animator animator) {
        View view = this.f2354a;
        view.setVisibility(8);
        view.setAlpha(1.0f);
    }
}
