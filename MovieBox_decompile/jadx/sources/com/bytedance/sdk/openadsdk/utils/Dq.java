package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.concurrent.atomic.AtomicBoolean;

public class Dq implements Fmk, Runnable {
    private boolean Dq;
    private long EjP;
    private long HiB;
    private final Sj Jcg;
    private final Activity sP;
    private boolean vS;
    private final AtomicBoolean uA = new AtomicBoolean(false);
    private final Handler TKC = new Handler(Looper.getMainLooper());
    private View Sj = EjP();

    public interface Sj {
        View Sj();

        void sP();
    }

    private Dq(Activity activity, int i10, Sj sj2) {
        this.Jcg = sj2;
        this.sP = activity;
        this.EjP = i10;
    }

    private View EjP() {
        Sj sj2 = this.Jcg;
        if (sj2 != null) {
            return sj2.Sj();
        }
        return null;
    }

    private void HiB() {
        this.Dq = false;
        this.HiB = SystemClock.elapsedRealtime();
        Handler handler = this.TKC;
        if (handler != null) {
            handler.postDelayed(this, this.EjP);
        }
    }

    private void Jcg() {
        ViewParent parent = this.Sj.getParent();
        if (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if (viewGroup.indexOfChild(this.Sj) != viewGroup.getChildCount() - 1) {
                this.Sj.bringToFront();
            }
        }
    }

    public static Fmk Sj(Activity activity, Sj sj2) {
        int iLiH = com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().liH();
        return iLiH < 0 ? new Fmk() {
            @Override
            public void Sj() {
            }

            @Override
            public void Sj(long j10) {
            }

            @Override
            public void TKC() {
            }

            @Override
            public void sP() {
            }
        } : new Dq(activity, Math.min(iLiH, 50) * 1000, sj2);
    }

    private void vS() {
        Activity activity;
        View childAt;
        if (this.vS || (activity = this.sP) == null || activity.isFinishing() || this.sP.isDestroyed()) {
            return;
        }
        if (this.Sj == null) {
            this.Sj = EjP();
        }
        View view = this.Sj;
        if (view != null) {
            if (sP(view)) {
                Sj(this.Sj);
                View view2 = this.Sj;
                if ((view2 instanceof ViewGroup) && ((ViewGroup) view2).getChildCount() > 0 && (childAt = ((ViewGroup) this.Sj).getChildAt(0)) != null && sP(childAt)) {
                    Sj(childAt);
                }
                Sj sj2 = this.Jcg;
                if (sj2 != null) {
                    sj2.sP();
                }
            }
            Jcg();
        }
        this.vS = true;
    }

    @Override
    public void TKC() {
        if (this.vS) {
            return;
        }
        this.vS = true;
        Handler handler = this.TKC;
        if (handler != null) {
            try {
                handler.removeCallbacks(this);
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.sP(th2.getMessage(), new Object[0]);
            }
        }
    }

    @Override
    public void run() {
        vS();
    }

    @Override
    public void sP() {
        if (this.HiB <= 0 || this.vS) {
            return;
        }
        if (!this.Dq) {
            this.EjP -= SystemClock.elapsedRealtime() - this.HiB;
        }
        this.Dq = true;
        if (this.EjP <= 0) {
            vS();
            return;
        }
        Handler handler = this.TKC;
        if (handler != null) {
            try {
                handler.removeCallbacks(this);
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.sP(th2.getMessage(), new Object[0]);
            }
        }
    }

    @Override
    public void Sj(long j10) {
        if (this.uA.compareAndSet(false, true)) {
            if (j10 < 0) {
                j10 = 0;
            }
            this.EjP += j10;
            HiB();
        }
    }

    @Override
    public void Sj() {
        if (this.HiB == 0 || !this.Dq) {
            return;
        }
        HiB();
    }

    private void Sj(View view) {
        view.setVisibility(0);
        view.setAlpha(1.0f);
    }

    private boolean sP(View view) {
        if (view == null) {
            return true;
        }
        return !view.isShown() || ((double) view.getAlpha()) <= 0.9d;
    }
}
