package com.bumptech.glide;

import androidx.annotation.NonNull;
import com.bumptech.glide.TransitionOptions;
import com.bumptech.glide.request.transition.NoTransition;
import com.bumptech.glide.request.transition.TransitionFactory;
import com.bumptech.glide.request.transition.ViewAnimationFactory;
import com.bumptech.glide.request.transition.ViewPropertyAnimationFactory;
import com.bumptech.glide.request.transition.ViewPropertyTransition;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;

public abstract class TransitionOptions<CHILD extends TransitionOptions<CHILD, TranscodeType>, TranscodeType> implements Cloneable {
    private TransitionFactory<? super TranscodeType> transitionFactory = NoTransition.getFactory();

    @NonNull
    public final CHILD dontTransition() {
        return (CHILD) transition(NoTransition.getFactory());
    }

    public boolean equals(Object obj) {
        if (obj instanceof TransitionOptions) {
            return Util.bothNullOrEqual(this.transitionFactory, ((TransitionOptions) obj).transitionFactory);
        }
        return false;
    }

    final TransitionFactory<? super TranscodeType> getTransitionFactory() {
        return this.transitionFactory;
    }

    public int hashCode() {
        TransitionFactory<? super TranscodeType> transitionFactory = this.transitionFactory;
        if (transitionFactory != null) {
            return transitionFactory.hashCode();
        }
        return 0;
    }

    @NonNull
    public final CHILD transition(int i10) {
        return (CHILD) transition(new ViewAnimationFactory(i10));
    }

    public final CHILD m204clone() {
        try {
            return (CHILD) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    @NonNull
    public final CHILD transition(@NonNull ViewPropertyTransition.Animator animator) {
        return (CHILD) transition(new ViewPropertyAnimationFactory(animator));
    }

    @NonNull
    public final CHILD transition(@NonNull TransitionFactory<? super TranscodeType> transitionFactory) {
        this.transitionFactory = (TransitionFactory) Preconditions.checkNotNull(transitionFactory);
        return (CHILD) self();
    }

    private CHILD self() {
        return this;
    }
}
