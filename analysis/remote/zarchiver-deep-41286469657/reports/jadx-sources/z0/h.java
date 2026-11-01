package z0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

public final class h extends AnimatorListenerAdapter {

    public final View f2353a;

    public h(View view) {
        this.f2353a = view;
    }

    @Override
    public final void onAnimationStart(Animator animator) {
        this.f2353a.setVisibility(0);
    }
}
