package com.bumptech.glide.request.transition;

import com.bumptech.glide.load.DataSource;

public class NoTransition<R> implements Transition<R> {
    static final NoTransition<?> NO_ANIMATION = new NoTransition<>();
    private static final TransitionFactory<?> NO_ANIMATION_FACTORY = new NoAnimationFactory();

    public static class NoAnimationFactory<R> implements TransitionFactory<R> {
        @Override
        public Transition<R> build(DataSource dataSource, boolean z10) {
            return NoTransition.NO_ANIMATION;
        }
    }

    public static <R> Transition<R> get() {
        return NO_ANIMATION;
    }

    public static <R> TransitionFactory<R> getFactory() {
        return (TransitionFactory<R>) NO_ANIMATION_FACTORY;
    }

    @Override
    public boolean transition(Object obj, Transition.ViewAdapter viewAdapter) {
        return false;
    }
}
