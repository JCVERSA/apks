package com.bumptech.glide.request.transition;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;

public class ViewTransition<R> implements Transition<R> {
    private final ViewTransitionAnimationFactory viewTransitionAnimationFactory;

    interface ViewTransitionAnimationFactory {
        Animation build(Context context);
    }

    ViewTransition(ViewTransitionAnimationFactory viewTransitionAnimationFactory) {
        this.viewTransitionAnimationFactory = viewTransitionAnimationFactory;
    }

    @Override
    public boolean transition(R r10, Transition.ViewAdapter viewAdapter) {
        View view = viewAdapter.getView();
        if (view == null) {
            return false;
        }
        view.clearAnimation();
        view.startAnimation(this.viewTransitionAnimationFactory.build(view.getContext()));
        return false;
    }
}
