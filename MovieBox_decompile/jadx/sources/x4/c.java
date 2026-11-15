package x4;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.os.Build;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

public abstract class c extends ValueAnimator {

    private final Set f75071a = new CopyOnWriteArraySet();

    private final Set f75072b = new CopyOnWriteArraySet();

    private final Set f75073c = new CopyOnWriteArraySet();

    void a() {
        Iterator it = this.f75072b.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationCancel(this);
        }
    }

    @Override
    public void addListener(Animator.AnimatorListener animatorListener) {
        this.f75072b.add(animatorListener);
    }

    @Override
    public void addPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.f75073c.add(animatorPauseListener);
    }

    @Override
    public void addUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f75071a.add(animatorUpdateListener);
    }

    void b(boolean z10) {
        for (Animator.AnimatorListener animatorListener : this.f75072b) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationEnd(this, z10);
            } else {
                animatorListener.onAnimationEnd(this);
            }
        }
    }

    void c() {
        Iterator it = this.f75073c.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorPauseListener) it.next()).onAnimationPause(this);
        }
    }

    void e() {
        Iterator it = this.f75072b.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationRepeat(this);
        }
    }

    void g() {
        Iterator it = this.f75073c.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorPauseListener) it.next()).onAnimationResume(this);
        }
    }

    @Override
    public long getStartDelay() {
        throw new UnsupportedOperationException("LottieAnimator does not support getStartDelay.");
    }

    void h(boolean z10) {
        for (Animator.AnimatorListener animatorListener : this.f75072b) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationStart(this, z10);
            } else {
                animatorListener.onAnimationStart(this);
            }
        }
    }

    void i() {
        Iterator it = this.f75071a.iterator();
        while (it.hasNext()) {
            ((ValueAnimator.AnimatorUpdateListener) it.next()).onAnimationUpdate(this);
        }
    }

    @Override
    public void removeAllListeners() {
        this.f75072b.clear();
    }

    @Override
    public void removeAllUpdateListeners() {
        this.f75071a.clear();
    }

    @Override
    public void removeListener(Animator.AnimatorListener animatorListener) {
        this.f75072b.remove(animatorListener);
    }

    @Override
    public void removePauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.f75073c.remove(animatorPauseListener);
    }

    @Override
    public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f75071a.remove(animatorUpdateListener);
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
}
