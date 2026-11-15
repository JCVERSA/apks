package com.yandex.div.core.view2.animations;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Transition;
import androidx.transition.TransitionListenerAdapter;
import androidx.transition.TransitionValues;
import androidx.transition.Visibility;
import defpackage.l7b;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J6\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\b2\u0006\u0010\f\u001a\u00020\nH\u0016J6\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\b2\u0006\u0010\f\u001a\u00020\nH\u0016¨\u0006\u000e"}, d2 = {"Lcom/yandex/div/core/view2/animations/OutlineAwareVisibility;", "Landroidx/transition/Visibility;", "()V", "onAppear", "Landroid/animation/Animator;", "sceneRoot", "Landroid/view/ViewGroup;", "startValues", "Landroidx/transition/TransitionValues;", "startVisibility", "", "endValues", "endVisibility", "onDisappear", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class OutlineAwareVisibility extends Visibility {
    @Override
    public Animator onAppear(ViewGroup sceneRoot, TransitionValues startValues, int startVisibility, final TransitionValues endValues, int endVisibility) {
        y45.j(sceneRoot, "sceneRoot");
        View view = endValues != null ? endValues.view : null;
        final l7b l7bVar = view instanceof l7b ? (l7b) view : null;
        if (l7bVar != null) {
            View view2 = endValues.view;
            y45.i(view2, "endValues.view");
            l7bVar.transitionStarted(view2);
        }
        addListener(new TransitionListenerAdapter() {
            @Override
            public void onTransitionEnd(Transition transition) {
                y45.j(transition, "transition");
                l7b l7bVar2 = l7bVar;
                if (l7bVar2 != null) {
                    View view3 = endValues.view;
                    y45.i(view3, "endValues.view");
                    l7bVar2.transitionFinished(view3);
                }
                this.removeListener(this);
            }
        });
        return super.onAppear(sceneRoot, startValues, startVisibility, endValues, endVisibility);
    }

    @Override
    public Animator onDisappear(ViewGroup sceneRoot, final TransitionValues startValues, int startVisibility, TransitionValues endValues, int endVisibility) {
        y45.j(sceneRoot, "sceneRoot");
        View view = startValues != null ? startValues.view : null;
        final l7b l7bVar = view instanceof l7b ? (l7b) view : null;
        if (l7bVar != null) {
            View view2 = startValues.view;
            y45.i(view2, "startValues.view");
            l7bVar.transitionStarted(view2);
        }
        addListener(new TransitionListenerAdapter() {
            @Override
            public void onTransitionEnd(Transition transition) {
                y45.j(transition, "transition");
                l7b l7bVar2 = l7bVar;
                if (l7bVar2 != null) {
                    View view3 = startValues.view;
                    y45.i(view3, "startValues.view");
                    l7bVar2.transitionFinished(view3);
                }
                this.removeListener(this);
            }
        });
        return super.onDisappear(sceneRoot, startValues, startVisibility, endValues, endVisibility);
    }
}
