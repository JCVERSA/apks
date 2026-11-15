package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;

public final class MaterialFade extends MaterialVisibility<FadeProvider> {
    private static final float DEFAULT_FADE_END_THRESHOLD_ENTER = 0.3f;
    private static final float DEFAULT_START_SCALE = 0.8f;

    @AttrRes
    private static final int DEFAULT_THEMED_INCOMING_DURATION_ATTR = R.attr.motionDurationMedium4;

    @AttrRes
    private static final int DEFAULT_THEMED_OUTGOING_DURATION_ATTR = R.attr.motionDurationShort3;

    @AttrRes
    private static final int DEFAULT_THEMED_INCOMING_EASING_ATTR = R.attr.motionEasingEmphasizedDecelerateInterpolator;

    @AttrRes
    private static final int DEFAULT_THEMED_OUTGOING_EASING_ATTR = R.attr.motionEasingEmphasizedAccelerateInterpolator;

    public MaterialFade() {
        super(createPrimaryAnimatorProvider(), createSecondaryAnimatorProvider());
    }

    private static FadeProvider createPrimaryAnimatorProvider() {
        FadeProvider fadeProvider = new FadeProvider();
        fadeProvider.setIncomingEndThreshold(0.3f);
        return fadeProvider;
    }

    private static VisibilityAnimatorProvider createSecondaryAnimatorProvider() {
        ScaleProvider scaleProvider = new ScaleProvider();
        scaleProvider.setScaleOnDisappear(false);
        scaleProvider.setIncomingStartScale(0.8f);
        return scaleProvider;
    }

    @Override
    public void addAdditionalAnimatorProvider(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.addAdditionalAnimatorProvider(visibilityAnimatorProvider);
    }

    @Override
    public void clearAdditionalAnimatorProvider() {
        super.clearAdditionalAnimatorProvider();
    }

    @Override
    @NonNull
    public TimeInterpolator getDefaultEasingInterpolator(boolean z) {
        return AnimationUtils.LINEAR_INTERPOLATOR;
    }

    @Override
    @AttrRes
    public int getDurationThemeAttrResId(boolean z) {
        return z ? DEFAULT_THEMED_INCOMING_DURATION_ATTR : DEFAULT_THEMED_OUTGOING_DURATION_ATTR;
    }

    @Override
    @AttrRes
    public int getEasingThemeAttrResId(boolean z) {
        return z ? DEFAULT_THEMED_INCOMING_EASING_ATTR : DEFAULT_THEMED_OUTGOING_EASING_ATTR;
    }

    @Override
    @NonNull
    public VisibilityAnimatorProvider getPrimaryAnimatorProvider() {
        return super.getPrimaryAnimatorProvider();
    }

    @Override
    @Nullable
    public VisibilityAnimatorProvider getSecondaryAnimatorProvider() {
        return super.getSecondaryAnimatorProvider();
    }

    @Override
    public boolean isSeekingSupported() {
        return super.isSeekingSupported();
    }

    @Override
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onAppear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override
    public boolean removeAdditionalAnimatorProvider(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        return super.removeAdditionalAnimatorProvider(visibilityAnimatorProvider);
    }

    @Override
    public void setSecondaryAnimatorProvider(@Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.setSecondaryAnimatorProvider(visibilityAnimatorProvider);
    }
}
