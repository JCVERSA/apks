package defpackage;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.mgadplus.a.b;

public class w1d {
    public AnimatorSet c;
    public View d;
    public Animator.AnimatorListener e;
    public b a = b.TRANSLATIONX;
    public int b = 255;
    public int f = -1;

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[b.values().length];
            a = iArr;
            try {
                iArr[b.TRANSLATIONX.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[b.TRANSLATIONXOUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[b.SCALE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[b.ALPHE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[b.ALPHE1.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[b.SCALEMIDDLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[b.SCALERIGHTBOTTOM.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[b.SCALERIGHTBOTTOMINVER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public w1d a() {
        AnimatorSet animatorSet = this.c;
        if (animatorSet != null && animatorSet.isStarted()) {
            this.c.cancel();
        }
        switch (a.a[this.a.ordinal()]) {
            case 1:
                this.c = o();
                return this;
            case 2:
                this.c = p();
                return this;
            case 3:
                this.c = i();
                return this;
            case 4:
                this.c = j();
                return this;
            case 5:
                this.c = k();
                return this;
            case 6:
                this.c = l();
                return this;
            case 7:
                this.c = m();
                return this;
            case 8:
                this.c = n();
                return this;
            default:
                return this;
        }
    }

    public w1d b(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        this.c = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.d, "scaleX", f, f2);
        int i = this.f;
        ObjectAnimator duration = objectAnimatorOfFloat.setDuration(i == -1 ? 200L : i);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.d, "scaleY", f3, f4);
        int i2 = this.f;
        ObjectAnimator duration2 = objectAnimatorOfFloat2.setDuration(i2 == -1 ? 200L : i2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.d, "TranslationX", 0.0f, f5);
        int i3 = this.f;
        ObjectAnimator duration3 = objectAnimatorOfFloat3.setDuration(i3 == -1 ? 200L : i3);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.d, "TranslationY", 0.0f, f6);
        int i4 = this.f;
        ObjectAnimator duration4 = objectAnimatorOfFloat4.setDuration(i4 != -1 ? i4 : 200L);
        this.d.setPivotX(f7);
        this.d.setPivotY(f8);
        Animator.AnimatorListener animatorListener = this.e;
        if (animatorListener != null) {
            this.c.addListener(animatorListener);
        }
        this.c.setInterpolator(new AccelerateDecelerateInterpolator());
        this.c.play(duration).with(duration2).with(duration3).with(duration4);
        return this;
    }

    public w1d c(int i) {
        this.f = i;
        return this;
    }

    public w1d d(Animator.AnimatorListener animatorListener) {
        this.e = animatorListener;
        return this;
    }

    public w1d e(View view) {
        this.d = view;
        return this;
    }

    public w1d f(b bVar) {
        this.a = bVar;
        return this;
    }

    public w1d g(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        this.c = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.d, "scaleX", f, f2);
        int i = this.f;
        ObjectAnimator duration = objectAnimatorOfFloat.setDuration(i == -1 ? 200L : i);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.d, "scaleY", f3, f4);
        int i2 = this.f;
        ObjectAnimator duration2 = objectAnimatorOfFloat2.setDuration(i2 == -1 ? 200L : i2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.d, "TranslationX", f5, 0.0f);
        int i3 = this.f;
        ObjectAnimator duration3 = objectAnimatorOfFloat3.setDuration(i3 == -1 ? 200L : i3);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.d, "TranslationY", f6, 0.0f);
        int i4 = this.f;
        ObjectAnimator duration4 = objectAnimatorOfFloat4.setDuration(i4 != -1 ? i4 : 200L);
        this.d.setPivotX(f7);
        this.d.setPivotY(f8);
        Animator.AnimatorListener animatorListener = this.e;
        if (animatorListener != null) {
            this.c.addListener(animatorListener);
        }
        this.c.setInterpolator(new AccelerateDecelerateInterpolator());
        this.c.play(duration).with(duration2).with(duration3).with(duration4);
        return this;
    }

    public void h() {
        AnimatorSet animatorSet = this.c;
        if (animatorSet != null) {
            animatorSet.start();
        }
    }

    public final AnimatorSet i() {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.d, "alpha", 0.0f, 1.0f);
        int i = this.f;
        ObjectAnimator duration = objectAnimatorOfFloat.setDuration(i == -1 ? 200L : i);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.d, "scaleX", 0.0f, 1.0f);
        int i2 = this.f;
        ObjectAnimator duration2 = objectAnimatorOfFloat2.setDuration(i2 != -1 ? i2 : 200L);
        this.d.setPivotX(0.0f);
        Animator.AnimatorListener animatorListener = this.e;
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.play(duration2).with(duration);
        return animatorSet;
    }

    public final AnimatorSet j() {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.d, "alpha", 1.0f, 0.0f);
        int i = this.f;
        ObjectAnimator duration = objectAnimatorOfFloat.setDuration(i == -1 ? 200L : i);
        Animator.AnimatorListener animatorListener = this.e;
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.play(duration);
        return animatorSet;
    }

    public final AnimatorSet k() {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.d, "alpha", 0.0f, 1.0f);
        int i = this.f;
        ObjectAnimator duration = objectAnimatorOfFloat.setDuration(i == -1 ? 200L : i);
        Animator.AnimatorListener animatorListener = this.e;
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.play(duration);
        return animatorSet;
    }

    public final AnimatorSet l() {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.d, "alpha", 0.0f, 1.0f);
        int i = this.f;
        ObjectAnimator duration = objectAnimatorOfFloat.setDuration(i == -1 ? 200L : i);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.d, "scaleX", 0.0f, 1.0f);
        int i2 = this.f;
        ObjectAnimator duration2 = objectAnimatorOfFloat2.setDuration(i2 == -1 ? 200L : i2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.d, "scaleY", 0.0f, 1.0f);
        int i3 = this.f;
        ObjectAnimator duration3 = objectAnimatorOfFloat3.setDuration(i3 != -1 ? i3 : 200L);
        Animator.AnimatorListener animatorListener = this.e;
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.play(duration2).with(duration3).with(duration);
        return animatorSet;
    }

    public final AnimatorSet m() {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.d, "alpha", 0.0f, 1.0f);
        int i = this.f;
        ObjectAnimator duration = objectAnimatorOfFloat.setDuration(i == -1 ? 200L : i);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.d, "scaleX", 0.0f, 1.0f);
        int i2 = this.f;
        ObjectAnimator duration2 = objectAnimatorOfFloat2.setDuration(i2 == -1 ? 200L : i2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.d, "scaleY", 0.0f, 1.0f);
        int i3 = this.f;
        ObjectAnimator duration3 = objectAnimatorOfFloat3.setDuration(i3 != -1 ? i3 : 200L);
        this.d.setPivotX(1.0f);
        this.d.setPivotX(2.0f);
        Animator.AnimatorListener animatorListener = this.e;
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.play(duration2).with(duration3).with(duration);
        return animatorSet;
    }

    public final AnimatorSet n() {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.d, "alpha", 1.0f, 0.0f);
        int i = this.f;
        ObjectAnimator duration = objectAnimatorOfFloat.setDuration(i == -1 ? 200L : i);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.d, "scaleX", 1.0f, 0.0f);
        int i2 = this.f;
        ObjectAnimator duration2 = objectAnimatorOfFloat2.setDuration(i2 == -1 ? 200L : i2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.d, "scaleY", 1.0f, 0.0f);
        int i3 = this.f;
        ObjectAnimator duration3 = objectAnimatorOfFloat3.setDuration(i3 != -1 ? i3 : 200L);
        Animator.AnimatorListener animatorListener = this.e;
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.play(duration2).with(duration3).with(duration);
        return animatorSet;
    }

    public final AnimatorSet o() {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.d, "TranslationX", this.b, 0.0f);
        int i = this.f;
        ObjectAnimator duration = objectAnimatorOfFloat.setDuration(i == -1 ? 200L : i);
        Animator.AnimatorListener animatorListener = this.e;
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.play(duration);
        return animatorSet;
    }

    public final AnimatorSet p() {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.d, "TranslationX", 0.0f, this.b);
        int i = this.f;
        ObjectAnimator duration = objectAnimatorOfFloat.setDuration(i == -1 ? 200L : i);
        Animator.AnimatorListener animatorListener = this.e;
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.play(duration);
        return animatorSet;
    }
}
