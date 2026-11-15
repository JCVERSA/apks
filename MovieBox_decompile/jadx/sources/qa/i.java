package qa;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;

public class i {

    private long f69592a;

    private long f69593b;

    private TimeInterpolator f69594c;

    private int f69595d;

    private int f69596e;

    public i(long j10, long j11) {
        this.f69594c = null;
        this.f69595d = 0;
        this.f69596e = 1;
        this.f69592a = j10;
        this.f69593b = j11;
    }

    static i b(ValueAnimator valueAnimator) {
        i iVar = new i(valueAnimator.getStartDelay(), valueAnimator.getDuration(), f(valueAnimator));
        iVar.f69595d = valueAnimator.getRepeatCount();
        iVar.f69596e = valueAnimator.getRepeatMode();
        return iVar;
    }

    private static TimeInterpolator f(ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
            return a.f69578b;
        }
        if (interpolator instanceof AccelerateInterpolator) {
            return a.f69579c;
        }
        return interpolator instanceof DecelerateInterpolator ? a.f69580d : interpolator;
    }

    public void a(Animator animator) {
        animator.setStartDelay(c());
        animator.setDuration(d());
        animator.setInterpolator(e());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(g());
            valueAnimator.setRepeatMode(h());
        }
    }

    public long c() {
        return this.f69592a;
    }

    public long d() {
        return this.f69593b;
    }

    public TimeInterpolator e() {
        TimeInterpolator timeInterpolator = this.f69594c;
        return timeInterpolator != null ? timeInterpolator : a.f69578b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (c() == iVar.c() && d() == iVar.d() && g() == iVar.g() && h() == iVar.h()) {
            return e().getClass().equals(iVar.e().getClass());
        }
        return false;
    }

    public int g() {
        return this.f69595d;
    }

    public int h() {
        return this.f69596e;
    }

    public int hashCode() {
        return (((((((((int) (c() ^ (c() >>> 32))) * 31) + ((int) (d() ^ (d() >>> 32)))) * 31) + e().getClass().hashCode()) * 31) + g()) * 31) + h();
    }

    public String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + c() + " duration: " + d() + " interpolator: " + e().getClass() + " repeatCount: " + g() + " repeatMode: " + h() + "}\n";
    }

    public i(long j10, long j11, TimeInterpolator timeInterpolator) {
        this.f69595d = 0;
        this.f69596e = 1;
        this.f69592a = j10;
        this.f69593b = j11;
        this.f69594c = timeInterpolator;
    }
}
