package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.graphics.Path;
import android.view.View;
import android.view.ViewGroup;
import com.blankj.utilcode.util.LogUtils;

public abstract class ym1 {
    public static final String a = "ym1";
    public static volatile boolean b = false;

    public class a extends AnimatorListenerAdapter {
        public final View b;
        public final AnimatorListenerAdapter c;
        public final boolean d;
        public final ViewGroup e;

        public class C0461a extends AnimatorListenerAdapter {
            public C0461a() {
            }

            @Override
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                a aVar = a.this;
                aVar.e.removeView(aVar.b);
            }
        }

        public a(View view, AnimatorListenerAdapter animatorListenerAdapter, boolean z, ViewGroup viewGroup) {
            this.b = view;
            this.c = animatorListenerAdapter;
            this.d = z;
            this.e = viewGroup;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            super.onAnimationCancel(animator);
            this.e.removeView(this.b);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            LogUtils.j(ym1.a, "onAnimationEnd:" + this.b);
            AnimatorListenerAdapter animatorListenerAdapter = this.c;
            if (animatorListenerAdapter != null) {
                animatorListenerAdapter.onAnimationEnd(animator);
            }
            if (this.d) {
                this.e.removeView(this.b);
                return;
            }
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.b, "scaleX", 1.0f, 1.2f, 1.0f);
            objectAnimatorOfFloat.setRepeatCount(1);
            objectAnimatorOfFloat.setDuration(200L);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.b, "scaleY", 1.0f, 1.2f, 1.0f);
            objectAnimatorOfFloat2.setRepeatCount(1);
            objectAnimatorOfFloat2.setDuration(200L);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.play(objectAnimatorOfFloat).with(objectAnimatorOfFloat2);
            animatorSet.setDuration(400L);
            animatorSet.start();
            animatorSet.addListener(new C0461a());
        }

        @Override
        public void onAnimationPause(Animator animator) {
            super.onAnimationPause(animator);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            LogUtils.j(ym1.a, "onAnimationStart:" + this.b);
        }
    }

    public class b implements ValueAnimator.AnimatorUpdateListener {
        public final boolean b;
        public final View c;

        public b(boolean z, View view) {
            this.b = z;
            this.c = view;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.b || ((int) this.c.getY()) >= 0) {
                return;
            }
            this.c.setVisibility(8);
        }
    }

    public static void a(ViewGroup viewGroup, View view, int[] iArr, int[] iArr2, boolean z) {
        b(viewGroup, view, iArr, iArr2, z, null);
    }

    public static void b(ViewGroup viewGroup, View view, int[] iArr, int[] iArr2, boolean z, AnimatorListenerAdapter animatorListenerAdapter) {
        Path path = new Path();
        path.moveTo(iArr[0], iArr[1]);
        float f = iArr[0];
        int i = iArr2[1];
        path.quadTo(f, i, iArr2[0], i);
        viewGroup.removeView(view);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
        view.setX(iArr[0]);
        view.setY(iArr[1]);
        viewGroup.addView(view, layoutParams);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationX", "translationY", path);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "scaleX", 1.5f, 1.0f);
        objectAnimatorOfFloat2.setRepeatCount(0);
        objectAnimatorOfFloat2.setDuration(200L);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view, "scaleY", 1.5f, 1.0f);
        objectAnimatorOfFloat3.setRepeatCount(0);
        objectAnimatorOfFloat3.setDuration(200L);
        objectAnimatorOfFloat.setDuration(1000L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(objectAnimatorOfFloat2).with(objectAnimatorOfFloat3).before(objectAnimatorOfFloat);
        objectAnimatorOfFloat.addListener(new a(view, animatorListenerAdapter, z, viewGroup));
        objectAnimatorOfFloat.addUpdateListener(new b(z, view));
        animatorSet.start();
    }
}
