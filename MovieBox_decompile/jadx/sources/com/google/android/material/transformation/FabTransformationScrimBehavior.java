package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.List;
import qa.b;
import qa.i;

@Deprecated
public class FabTransformationScrimBehavior extends ExpandableTransformationBehavior {

    private final i f29356c;

    private final i f29357d;

    class a extends AnimatorListenerAdapter {

        final boolean f29358a;

        final View f29359b;

        a(boolean z10, View view) {
            this.f29358a = z10;
            this.f29359b = view;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (this.f29358a) {
                return;
            }
            this.f29359b.setVisibility(4);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            if (this.f29358a) {
                this.f29359b.setVisibility(0);
            }
        }
    }

    public FabTransformationScrimBehavior() {
        this.f29356c = new i(75L, 150L);
        this.f29357d = new i(0L, 150L);
    }

    private void K(View view, boolean z10, boolean z11, List list, List list2) {
        ObjectAnimator objectAnimatorOfFloat;
        i iVar = z10 ? this.f29356c : this.f29357d;
        if (z10) {
            if (!z11) {
                view.setAlpha(0.0f);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 1.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 0.0f);
        }
        iVar.a(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    @Override
    public boolean D(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        return super.D(coordinatorLayout, view, motionEvent);
    }

    @Override
    protected AnimatorSet J(View view, View view2, boolean z10, boolean z11) {
        ArrayList arrayList = new ArrayList();
        K(view2, z10, z11, arrayList, new ArrayList());
        AnimatorSet animatorSet = new AnimatorSet();
        b.a(animatorSet, arrayList);
        animatorSet.addListener(new a(z10, view2));
        return animatorSet;
    }

    @Override
    public boolean e(CoordinatorLayout coordinatorLayout, View view, View view2) {
        return view2 instanceof FloatingActionButton;
    }

    public FabTransformationScrimBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f29356c = new i(75L, 150L);
        this.f29357d = new i(0L, 150L);
    }
}
