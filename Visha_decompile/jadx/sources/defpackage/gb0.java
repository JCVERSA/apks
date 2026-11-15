package defpackage;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

public abstract class gb0 extends ValueAnimator {
    public final Set b = new CopyOnWriteArraySet();
    public final Set c = new CopyOnWriteArraySet();
    public final Set d = new CopyOnWriteArraySet();

    public void a() {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationCancel(this);
        }
    }

    @Override
    public void addListener(Animator.AnimatorListener animatorListener) {
        this.c.add(animatorListener);
    }

    @Override
    public void addPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.d.add(animatorPauseListener);
    }

    @Override
    public void addUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.b.add(animatorUpdateListener);
    }

    public void c(boolean z) {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationEnd(this, z);
        }
    }

    public void d() {
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorPauseListener) it.next()).onAnimationPause(this);
        }
    }

    public void e() {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationRepeat(this);
        }
    }

    public void f() {
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorPauseListener) it.next()).onAnimationResume(this);
        }
    }

    public void g(boolean z) {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationStart(this, z);
        }
    }

    @Override
    public long getStartDelay() {
        throw new UnsupportedOperationException("LottieAnimator does not support getStartDelay.");
    }

    public void h() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((ValueAnimator.AnimatorUpdateListener) it.next()).onAnimationUpdate(this);
        }
    }

    @Override
    public void removeAllListeners() {
        this.c.clear();
    }

    @Override
    public void removeAllUpdateListeners() {
        this.b.clear();
    }

    @Override
    public void removeListener(Animator.AnimatorListener animatorListener) {
        this.c.remove(animatorListener);
    }

    @Override
    public void removePauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.d.remove(animatorPauseListener);
    }

    @Override
    public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.b.remove(animatorUpdateListener);
    }

    @Override
    public void setInterpolator(TimeInterpolator timeInterpolator) {
        throw new UnsupportedOperationException("LottieAnimator does not support setInterpolator.");
    }

    @Override
    public void setStartDelay(long j) {
        throw new UnsupportedOperationException("LottieAnimator does not support setStartDelay.");
    }

    @Override
    public ValueAnimator setDuration(long j) {
        throw new UnsupportedOperationException("LottieAnimator does not support setDuration.");
    }
}
