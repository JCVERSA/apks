package com.transsion.audio.widgets;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import androidx.annotation.NonNull;

public class HalfOpenAudioAnimotionHelper {
    public static void showVolumeWithAnimotion(View view, final View view2, final View view3, final boolean z) {
        ObjectAnimator duration;
        ObjectAnimator duration2;
        ObjectAnimator duration3;
        ObjectAnimator duration4;
        ObjectAnimator duration5;
        ObjectAnimator duration6;
        if (z) {
            view.setVisibility(0);
            view2.setVisibility(0);
        }
        ObjectAnimator duration7 = ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 0.9f, 1.0f).setDuration(300L);
        ObjectAnimator duration8 = ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 0.9f, 1.0f).setDuration(300L);
        if (z) {
            duration = ObjectAnimator.ofFloat(view2, "alpha", 1.0f, 0.0f).setDuration(150L);
            duration2 = ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 0.9f).setDuration(150L);
            duration3 = ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 0.9f).setDuration(150L);
            duration4 = ObjectAnimator.ofFloat(view3, "alpha", 0.0f, 1.0f).setDuration(150L);
            duration4.setStartDelay(150L);
            duration5 = ObjectAnimator.ofFloat(view3, "scaleX", 0.9f, 1.0f).setDuration(150L);
            duration5.setStartDelay(150L);
            duration6 = ObjectAnimator.ofFloat(view3, "scaleY", 0.9f, 1.0f).setDuration(150L);
            duration6.setStartDelay(150L);
        } else {
            duration = ObjectAnimator.ofFloat(view2, "alpha", 0.0f, 1.0f).setDuration(150L);
            duration.setStartDelay(150L);
            duration2 = ObjectAnimator.ofFloat(view, "scaleX", 0.9f, 1.0f).setDuration(150L);
            duration2.setStartDelay(150L);
            duration3 = ObjectAnimator.ofFloat(view, "scaleY", 0.9f, 1.0f).setDuration(150L);
            duration3.setStartDelay(150L);
            duration4 = ObjectAnimator.ofFloat(view3, "alpha", 1.0f, 0.0f).setDuration(150L);
            duration5 = ObjectAnimator.ofFloat(view3, "scaleX", 1.0f, 0.9f).setDuration(150L);
            duration6 = ObjectAnimator.ofFloat(view3, "scaleY", 1.0f, 0.9f).setDuration(150L);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(duration7, duration8, duration, duration2, duration3, duration4, duration5, duration6);
        animatorSet.addListener(new Animator.AnimatorListener() {
            @Override
            public void onAnimationCancel(@NonNull Animator animator) {
            }

            @Override
            public void onAnimationEnd(@NonNull Animator animator) {
                if (z) {
                    view2.setVisibility(4);
                    view3.setAlpha(1.0f);
                } else {
                    view3.setVisibility(8);
                    view2.setAlpha(1.0f);
                }
            }

            @Override
            public void onAnimationRepeat(@NonNull Animator animator) {
            }

            @Override
            public void onAnimationStart(@NonNull Animator animator) {
                if (z) {
                    view3.setVisibility(0);
                    view3.setAlpha(0.0f);
                } else {
                    view2.setVisibility(0);
                    view2.setAlpha(0.0f);
                }
            }
        });
        animatorSet.start();
    }
}
