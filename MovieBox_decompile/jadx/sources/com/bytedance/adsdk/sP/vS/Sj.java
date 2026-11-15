package com.bytedance.adsdk.sP.vS;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.os.Build;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

public abstract class Sj extends ValueAnimator {
    private final Set<ValueAnimator.AnimatorUpdateListener> Sj = new CopyOnWriteArraySet();
    private final Set<Animator.AnimatorListener> sP = new CopyOnWriteArraySet();
    private final Set<Animator.AnimatorPauseListener> TKC = new CopyOnWriteArraySet();

    void EjP() {
        Iterator<Animator.AnimatorPauseListener> it = this.TKC.iterator();
        while (it.hasNext()) {
            it.next().onAnimationPause(this);
        }
    }

    void HiB() {
        Iterator<Animator.AnimatorPauseListener> it = this.TKC.iterator();
        while (it.hasNext()) {
            it.next().onAnimationResume(this);
        }
    }

    void Sj(boolean z10) {
        for (Animator.AnimatorListener animatorListener : this.sP) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationStart(this, z10);
            } else {
                animatorListener.onAnimationStart(this);
            }
        }
    }

    void TKC() {
        Iterator<ValueAnimator.AnimatorUpdateListener> it = this.Sj.iterator();
        while (it.hasNext()) {
            it.next().onAnimationUpdate(this);
        }
    }

    @Override
    public void addListener(Animator.AnimatorListener animatorListener) {
        this.sP.add(animatorListener);
    }

    @Override
    public void addPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.TKC.add(animatorPauseListener);
    }

    @Override
    public void addUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.Sj.add(animatorUpdateListener);
    }

    @Override
    public long getStartDelay() {
        throw new UnsupportedOperationException("LottieAnimator does not support getStartDelay.");
    }

    @Override
    public void removeAllListeners() {
        this.sP.clear();
    }

    @Override
    public void removeAllUpdateListeners() {
        this.Sj.clear();
    }

    @Override
    public void removeListener(Animator.AnimatorListener animatorListener) {
        this.sP.remove(animatorListener);
    }

    @Override
    public void removePauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.TKC.remove(animatorPauseListener);
    }

    @Override
    public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.Sj.remove(animatorUpdateListener);
    }

    void sP(boolean z10) {
        for (Animator.AnimatorListener animatorListener : this.sP) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationEnd(this, z10);
            } else {
                animatorListener.onAnimationEnd(this);
            }
        }
    }

    @Override
    public void setInterpolator(TimeInterpolator timeInterpolator) {
        throw new UnsupportedOperationException("LottieAnimator does not support setInterpolator.");
    }

    @Override
    public void setStartDelay(long j10) {
        throw new UnsupportedOperationException("LottieAnimator does not support setStartDelay.");
    }

    @Override
    public ValueAnimator setDuration(long j10) {
        throw new UnsupportedOperationException("LottieAnimator does not support setDuration.");
    }

    void Sj() {
        Iterator<Animator.AnimatorListener> it = this.sP.iterator();
        while (it.hasNext()) {
            it.next().onAnimationRepeat(this);
        }
    }

    void sP() {
        Iterator<Animator.AnimatorListener> it = this.sP.iterator();
        while (it.hasNext()) {
            it.next().onAnimationCancel(this);
        }
    }
}
