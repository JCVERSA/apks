package com.transsion.magicvideo.widgets;

import android.animation.Animator;
import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import com.airbnb.lottie.LottieAnimationView;
import com.transsion.magicvideo.R;
import defpackage.n;

public class AISubtitleLottieAnimationView extends LottieAnimationView implements Animator.AnimatorListener {
    public AISubtitleLottieAnimationView(Context context) {
        this(context, null);
    }

    @Override
    public void cancelAnimation() {
        super.cancelAnimation();
    }

    @Override
    public void onAnimationCancel(@NonNull Animator animator) {
        setImageResource(n.a.booleanValue() ? R.drawable.ic_ai_on : R.drawable.ic_ai_off);
    }

    @Override
    public void onAnimationEnd(@NonNull Animator animator) {
    }

    @Override
    public void onAnimationRepeat(@NonNull Animator animator) {
    }

    @Override
    public void onAnimationStart(@NonNull Animator animator) {
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        addAnimatorListener(this);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeAnimatorListener(this);
    }

    @Override
    public void pauseAnimation() {
        super.pauseAnimation();
    }

    @Override
    public void playAnimation() {
        if (n.a.booleanValue()) {
            setAnimation("ai_subtitle_open_data.json");
        } else {
            setAnimation("ai_subtitle_close_data.json");
        }
        super.playAnimation();
    }

    public AISubtitleLottieAnimationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AISubtitleLottieAnimationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
