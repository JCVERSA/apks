package com.google.android.material.navigation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Color;
import android.view.View;
import androidx.drawerlayout.widget.DrawerLayout;

public abstract class b {

    private static final int f28565a = Color.alpha(-1728053248);

    class a extends AnimatorListenerAdapter {

        final DrawerLayout f28566a;

        final View f28567b;

        a(DrawerLayout drawerLayout, View view) {
            this.f28566a = drawerLayout;
            this.f28567b = view;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f28566a.closeDrawer(this.f28567b, false);
            this.f28566a.setScrimColor(-1728053248);
        }
    }

    public static Animator.AnimatorListener b(DrawerLayout drawerLayout, View view) {
        return new a(drawerLayout, view);
    }

    public static ValueAnimator.AnimatorUpdateListener c(final DrawerLayout drawerLayout) {
        return new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                b.d(drawerLayout, valueAnimator);
            }
        };
    }

    public static void d(DrawerLayout drawerLayout, ValueAnimator valueAnimator) {
        drawerLayout.setScrimColor(z0.b.p(-1728053248, qa.a.c(f28565a, 0, valueAnimator.getAnimatedFraction())));
    }
}
