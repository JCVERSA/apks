package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.gms.ads.internal.overlay.zzu;

public final class qjj extends AnimatorListenerAdapter {
    public final zzu b;

    public qjj(zzu zzuVar) {
        this.b = zzuVar;
    }

    public final void a(boolean z) {
        zzu zzuVar = this.b;
        zzuVar.setEnabled(z);
        zzuVar.b.setEnabled(z);
    }

    @Override
    public final void onAnimationCancel(Animator animator) {
        a(true);
    }

    @Override
    public final void onAnimationEnd(Animator animator) {
        a(true);
    }

    @Override
    public final void onAnimationStart(Animator animator) {
        a(false);
    }
}
