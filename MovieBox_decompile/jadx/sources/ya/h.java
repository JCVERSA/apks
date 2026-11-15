package ya;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.RoundedCorner;
import android.view.View;
import android.view.WindowInsets;
import com.google.android.material.R$dimen;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.f0;

public class h extends ya.a {

    private final float f76195g;

    private final float f76196h;

    private float f76197i;

    private Rect f76198j;

    private Rect f76199k;

    private Integer f76200l;

    class a extends AnimatorListenerAdapter {

        final View f76201a;

        a(View view) {
            this.f76201a = view;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            View view = this.f76201a;
            if (view != null) {
                view.setVisibility(0);
            }
        }
    }

    public h(View view) {
        super(view);
        Resources resources = view.getResources();
        this.f76195g = resources.getDimension(R$dimen.m3_back_progress_main_container_min_edge_gap);
        this.f76196h = resources.getDimension(R$dimen.m3_back_progress_main_container_max_translation_y);
    }

    private ValueAnimator h(final ClippableRoundedCornerLayout clippableRoundedCornerLayout) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(clippableRoundedCornerLayout.getCornerRadius(), k());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                h.q(clippableRoundedCornerLayout, valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    private AnimatorSet i(View view) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.f76179b, (Property<View, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.f76179b, (Property<View, Float>) View.SCALE_Y, 1.0f), ObjectAnimator.ofFloat(this.f76179b, (Property<View, Float>) View.TRANSLATION_X, 0.0f), ObjectAnimator.ofFloat(this.f76179b, (Property<View, Float>) View.TRANSLATION_Y, 0.0f));
        animatorSet.addListener(new a(view));
        return animatorSet;
    }

    private int n() {
        WindowInsets rootWindowInsets;
        if (Build.VERSION.SDK_INT < 31 || (rootWindowInsets = this.f76179b.getRootWindowInsets()) == null) {
            return 0;
        }
        return Math.max(Math.max(o(rootWindowInsets, 0), o(rootWindowInsets, 1)), Math.max(o(rootWindowInsets, 3), o(rootWindowInsets, 2)));
    }

    private int o(WindowInsets windowInsets, int i10) {
        RoundedCorner roundedCorner = windowInsets.getRoundedCorner(i10);
        if (roundedCorner != null) {
            return roundedCorner.getRadius();
        }
        return 0;
    }

    private boolean p() {
        int[] iArr = new int[2];
        this.f76179b.getLocationOnScreen(iArr);
        return iArr[1] == 0;
    }

    public static void q(ClippableRoundedCornerLayout clippableRoundedCornerLayout, ValueAnimator valueAnimator) {
        clippableRoundedCornerLayout.updateCornerRadius(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void r() {
        this.f76197i = 0.0f;
        this.f76198j = null;
        this.f76199k = null;
    }

    public void g(View view) {
        if (super.b() == null) {
            return;
        }
        AnimatorSet animatorSetI = i(view);
        View view2 = this.f76179b;
        if (view2 instanceof ClippableRoundedCornerLayout) {
            animatorSetI.playTogether(h((ClippableRoundedCornerLayout) view2));
        }
        animatorSetI.setDuration(this.f76182e);
        animatorSetI.start();
        r();
    }

    public void j(long j10, View view) {
        AnimatorSet animatorSetI = i(view);
        animatorSetI.setDuration(j10);
        animatorSetI.start();
        r();
    }

    public int k() {
        if (this.f76200l == null) {
            this.f76200l = Integer.valueOf(p() ? n() : 0);
        }
        return this.f76200l.intValue();
    }

    public Rect l() {
        return this.f76199k;
    }

    public Rect m() {
        return this.f76198j;
    }

    public void s(float f10, View view) {
        this.f76198j = f0.c(this.f76179b);
        if (view != null) {
            this.f76199k = f0.b(this.f76179b, view);
        }
        this.f76197i = f10;
    }

    public void t(androidx.activity.b bVar, View view) {
        super.d(bVar);
        s(bVar.c(), view);
    }

    public void u(float f10, boolean z10, float f11, float f12) {
        float fA = a(f10);
        float width = this.f76179b.getWidth();
        float height = this.f76179b.getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        float fA2 = qa.a.a(1.0f, 0.9f, fA);
        float fA3 = qa.a.a(0.0f, Math.max(0.0f, ((width - (0.9f * width)) / 2.0f) - this.f76195g), fA) * (z10 ? 1 : -1);
        float fMin = Math.min(Math.max(0.0f, ((height - (fA2 * height)) / 2.0f) - this.f76195g), this.f76196h);
        float f13 = f11 - this.f76197i;
        float fA4 = qa.a.a(0.0f, fMin, Math.abs(f13) / height) * Math.signum(f13);
        this.f76179b.setScaleX(fA2);
        this.f76179b.setScaleY(fA2);
        this.f76179b.setTranslationX(fA3);
        this.f76179b.setTranslationY(fA4);
        View view = this.f76179b;
        if (view instanceof ClippableRoundedCornerLayout) {
            ((ClippableRoundedCornerLayout) view).updateCornerRadius(qa.a.a(k(), f12, fA));
        }
    }

    public void v(androidx.activity.b bVar, View view, float f10) {
        if (super.e(bVar) == null) {
            return;
        }
        if (view != null && view.getVisibility() != 4) {
            view.setVisibility(4);
        }
        u(bVar.a(), bVar.b() == 0, bVar.c(), f10);
    }
}
