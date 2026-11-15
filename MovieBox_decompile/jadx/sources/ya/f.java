package ya;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.R$dimen;

public class f extends ya.a {

    private final float f76191g;

    private final float f76192h;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            f.this.f76179b.setTranslationY(0.0f);
            f.this.k(0.0f);
        }
    }

    public f(View view) {
        super(view);
        Resources resources = view.getResources();
        this.f76191g = resources.getDimension(R$dimen.m3_back_progress_bottom_container_max_scale_x_distance);
        this.f76192h = resources.getDimension(R$dimen.m3_back_progress_bottom_container_max_scale_y_distance);
    }

    private Animator g() {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.f76179b, (Property<View, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.f76179b, (Property<View, Float>) View.SCALE_Y, 1.0f));
        View view = this.f76179b;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i10), (Property<View, Float>) View.SCALE_Y, 1.0f));
            }
        }
        animatorSet.setInterpolator(new o1.b());
        return animatorSet;
    }

    public void f() {
        if (super.b() == null) {
            return;
        }
        Animator animatorG = g();
        animatorG.setDuration(this.f76182e);
        animatorG.start();
    }

    public void h(androidx.activity.b bVar, Animator.AnimatorListener animatorListener) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f76179b, (Property<View, Float>) View.TRANSLATION_Y, this.f76179b.getHeight() * this.f76179b.getScaleY());
        objectAnimatorOfFloat.setInterpolator(new o1.b());
        objectAnimatorOfFloat.setDuration(qa.a.c(this.f76180c, this.f76181d, bVar.a()));
        objectAnimatorOfFloat.addListener(new a());
        if (animatorListener != null) {
            objectAnimatorOfFloat.addListener(animatorListener);
        }
        objectAnimatorOfFloat.start();
    }

    public void i(androidx.activity.b bVar, Animator.AnimatorListener animatorListener) {
        Animator animatorG = g();
        animatorG.setDuration(qa.a.c(this.f76180c, this.f76181d, bVar.a()));
        if (animatorListener != null) {
            animatorG.addListener(animatorListener);
        }
        animatorG.start();
    }

    public void j(androidx.activity.b bVar) {
        super.d(bVar);
    }

    public void k(float f10) {
        float fA = a(f10);
        float width = this.f76179b.getWidth();
        float height = this.f76179b.getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        float f11 = this.f76191g / width;
        float f12 = this.f76192h / height;
        float fA2 = 1.0f - qa.a.a(0.0f, f11, fA);
        float fA3 = 1.0f - qa.a.a(0.0f, f12, fA);
        this.f76179b.setScaleX(fA2);
        this.f76179b.setPivotY(height);
        this.f76179b.setScaleY(fA3);
        View view = this.f76179b;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                View childAt = viewGroup.getChildAt(i10);
                childAt.setPivotY(-childAt.getTop());
                childAt.setScaleY(fA3 != 0.0f ? fA2 / fA3 : 1.0f);
            }
        }
    }

    public void l(androidx.activity.b bVar) {
        if (super.e(bVar) == null) {
            return;
        }
        k(bVar.a());
    }
}
