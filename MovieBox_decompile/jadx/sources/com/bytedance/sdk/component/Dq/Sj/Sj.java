package com.bytedance.sdk.component.Dq.Sj;

import android.os.Handler;
import com.bytedance.sdk.component.utils.Dq;
import com.bytedance.sdk.component.utils.LqL;

public class Sj {
    private final EjP<sP> Sj;
    private Handler sP;

    private static class C0191Sj {
        private static final Sj Sj = new Sj();
    }

    public Handler sP() {
        if (this.sP == null) {
            synchronized (Sj.class) {
                try {
                    if (this.sP == null) {
                        this.sP = Sj("csj_io_handler");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.sP;
    }

    private Sj() {
        this.Sj = EjP.Sj(2);
    }

    public static Sj Sj() {
        return C0191Sj.Sj;
    }

    public void Sj(final Handler handler, final Handler handler2) {
        if (handler.getLooper().getQueue().isIdle()) {
            handler.removeCallbacksAndMessages(null);
            handler.getLooper().quit();
        } else {
            handler2.postDelayed(new Runnable() {
                @Override
                public void run() {
                    Sj.this.Sj(handler, handler2);
                }
            }, 1000L);
        }
    }

    private sP sP(LqL.Sj sj2, String str) {
        return new sP(Dq.Sj(str), sj2);
    }

    public LqL Sj(LqL.Sj sj2, final String str) {
        sP sPVar = (sP) this.Sj.Sj();
        if (sPVar != null) {
            sPVar.Sj(sj2);
            sPVar.post(new Runnable() {
                @Override
                public void run() {
                    Thread.currentThread().setName(str);
                }
            });
            return sPVar;
        }
        return sP(sj2, str);
    }

    public LqL Sj(String str) {
        return Sj((LqL.Sj) null, str);
    }

    public boolean Sj(LqL lqL) {
        if (!(lqL instanceof sP)) {
            return false;
        }
        sP sPVar = (sP) lqL;
        if (this.Sj.Sj(sPVar)) {
            return true;
        }
        sPVar.sP();
        return true;
    }
}
