package ya;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$dimen;

public class i extends ya.a {

    private final float f76203g;

    private final float f76204h;

    private final float f76205i;

    class a extends AnimatorListenerAdapter {

        final boolean f76206a;

        final int f76207b;

        a(boolean z10, int i10) {
            this.f76206a = z10;
            this.f76207b = i10;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            i.this.f76179b.setTranslationX(0.0f);
            i.this.k(0.0f, this.f76206a, this.f76207b);
        }
    }

    public i(View view) {
        super(view);
        Resources resources = view.getResources();
        this.f76203g = resources.getDimension(R$dimen.m3_back_progress_side_container_max_scale_x_distance_shrink);
        this.f76204h = resources.getDimension(R$dimen.m3_back_progress_side_container_max_scale_x_distance_grow);
        this.f76205i = resources.getDimension(R$dimen.m3_back_progress_side_container_max_scale_y_distance);
    }

    private boolean g(int i10, int i11) {
        return (GravityCompat.getAbsoluteGravity(i10, ViewCompat.getLayoutDirection(this.f76179b)) & i11) == i11;
    }

    private int i(boolean z10) {
        ViewGroup.LayoutParams layoutParams = this.f76179b.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return 0;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return z10 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
    }

    public void f() {
        if (super.b() == null) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.f76179b, (Property<View, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.f76179b, (Property<View, Float>) View.SCALE_Y, 1.0f));
        View view = this.f76179b;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i10), (Property<View, Float>) View.SCALE_Y, 1.0f));
            }
        }
        animatorSet.setDuration(this.f76182e);
        animatorSet.start();
    }

    public void h(androidx.activity.b bVar, int i10, Animator.AnimatorListener animatorListener, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        boolean z10 = bVar.b() == 0;
        boolean zG = g(i10, 3);
        float width = (this.f76179b.getWidth() * this.f76179b.getScaleX()) + i(zG);
        View view = this.f76179b;
        Property property = View.TRANSLATION_X;
        if (zG) {
            width = -width;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, width);
        if (animatorUpdateListener != null) {
            objectAnimatorOfFloat.addUpdateListener(animatorUpdateListener);
        }
        objectAnimatorOfFloat.setInterpolator(new o1.b());
        objectAnimatorOfFloat.setDuration(qa.a.c(this.f76180c, this.f76181d, bVar.a()));
        objectAnimatorOfFloat.addListener(new a(z10, i10));
        if (animatorListener != null) {
            objectAnimatorOfFloat.addListener(animatorListener);
        }
        objectAnimatorOfFloat.start();
    }

    public void j(androidx.activity.b bVar) {
        super.d(bVar);
    }

    public void k(float f10, boolean z10, int i10) {
        float fA = a(f10);
        boolean zG = g(i10, 3);
        boolean z11 = z10 == zG;
        int width = this.f76179b.getWidth();
        int height = this.f76179b.getHeight();
        float f11 = width;
        if (f11 > 0.0f) {
            float f12 = height;
            if (f12 <= 0.0f) {
                return;
            }
            float f13 = this.f76203g / f11;
            float f14 = this.f76204h / f11;
            float f15 = this.f76205i / f12;
            View view = this.f76179b;
            if (zG) {
                f11 = 0.0f;
            }
            view.setPivotX(f11);
            if (!z11) {
                f14 = -f13;
            }
            float fA2 = qa.a.a(0.0f, f14, fA);
            float f16 = fA2 + 1.0f;
            this.f76179b.setScaleX(f16);
            float fA3 = 1.0f - qa.a.a(0.0f, f15, fA);
            this.f76179b.setScaleY(fA3);
            View view2 = this.f76179b;
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
                    View childAt = viewGroup.getChildAt(i11);
                    childAt.setPivotX(zG ? (width - childAt.getRight()) + childAt.getWidth() : -childAt.getLeft());
                    childAt.setPivotY(-childAt.getTop());
                    float f17 = z11 ? 1.0f - fA2 : 1.0f;
                    float f18 = fA3 != 0.0f ? (f16 / fA3) * f17 : 1.0f;
                    childAt.setScaleX(f17);
                    childAt.setScaleY(f18);
                }
            }
        }
    }

    public void l(androidx.activity.b bVar, int i10) {
        if (super.e(bVar) == null) {
            return;
        }
        k(bVar.a(), bVar.b() == 0, i10);
    }
}
