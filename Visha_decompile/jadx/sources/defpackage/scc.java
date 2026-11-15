package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.transsion.widgetslib.R;

public final class scc {
    public static final scc a = new scc();

    public static final class a extends AnimatorListenerAdapter {
        public final View b;
        public final View c;
        public final View d;

        public a(View view, View view2, View view3) {
            this.b = view;
            this.c = view2;
            this.d = view3;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            this.d.setTranslationX(0.0f);
            this.d.setAlpha(1.0f);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animation");
            this.b.setTranslationX(this.c.getX() - this.b.getX());
        }
    }

    public static final class b extends AnimatorListenerAdapter {
        public final View b;

        public b(View view) {
            this.b = view;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            this.b.setAlpha(1.0f);
        }
    }

    public final void a(View view, View view2) {
        y45.j(view, "currentItemViewBefore");
        y45.j(view2, "currentItemViewReal");
        view.animate().cancel();
        view2.animate().cancel();
        view.animate().alpha(0.0f).setDuration(50L).setInterpolator(AnimationUtils.loadInterpolator(view.getContext(), R.anim.os_page_change_alpha_out_interpolator)).setListener(new a(view, view2, view)).start();
        if (view2.getAlpha() == 1.0f) {
            view2.setAlpha(0.0f);
        }
        view2.animate().alpha(1.0f).setDuration(50L).setInterpolator(AnimationUtils.loadInterpolator(view2.getContext(), R.anim.os_page_change_alpha_in_interpolator)).setListener(new b(view2)).start();
    }
}
