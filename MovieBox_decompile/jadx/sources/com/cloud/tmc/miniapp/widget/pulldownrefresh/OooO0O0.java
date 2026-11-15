package com.cloud.tmc.miniapp.widget.pulldownrefresh;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.MiniRefreshState;

public class OooO0O0 implements Runnable {
    public final float OooO00o;
    public final int OooO0O0;
    public final boolean OooO0OO;
    public final com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o OooO0Oo;

    public class OooO00o implements ValueAnimator.AnimatorUpdateListener {
        public OooO00o() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = OooO0O0.this.OooO0Oo;
            if (oooO00o.o00000O0 == null || oooO00o.oo000o == null) {
                return;
            }
            ((com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo) oooO00o.o0ooOoO).OooO00o(((Integer) valueAnimator.getAnimatedValue()).intValue(), true);
        }
    }

    public class C0332OooO0O0 extends AnimatorListenerAdapter {
        public C0332OooO0O0() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (animator == null || animator.getDuration() != 0) {
                com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = OooO0O0.this.OooO0Oo;
                oooO00o.o00000O0 = null;
                if (oooO00o.oo000o == null) {
                    ((com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo) oooO00o.o0ooOoO).OooO00o(MiniRefreshState.NONE);
                } else {
                    MiniRefreshState miniRefreshState = oooO00o.o0OOO0o;
                    MiniRefreshState miniRefreshState2 = MiniRefreshState.RELEASE_TO_REFRESH;
                    if (miniRefreshState != miniRefreshState2) {
                        ((com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo) oooO00o.o0ooOoO).OooO00o(miniRefreshState2);
                    }
                    OooO0O0 oooO0O0 = OooO0O0.this;
                    oooO0O0.OooO0Oo.setStateRefreshing(!oooO0O0.OooO0OO);
                }
            }
        }
    }

    public OooO0O0(com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o, float f10, int i10, boolean z10) {
        this.OooO0Oo = oooO00o;
        this.OooO00o = f10;
        this.OooO0O0 = i10;
        this.OooO0OO = z10;
    }

    @Override
    public void run() {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o = this.OooO0Oo;
        if (oooO00o.o0Oo0oo != MiniRefreshState.REFRESHING) {
            return;
        }
        ValueAnimator valueAnimator = oooO00o.o00000O0;
        if (valueAnimator != null) {
            valueAnimator.setDuration(0L);
            this.OooO0Oo.o00000O0.cancel();
            this.OooO0Oo.o00000O0 = null;
        }
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o2 = this.OooO0Oo;
        oooO00o2.OooOO0 = oooO00o2.getMeasuredWidth() / 2.0f;
        ((com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o.OooOo) this.OooO0Oo.o0ooOoO).OooO00o(MiniRefreshState.PULL_DOWN_TO_REFRESH);
        com.cloud.tmc.miniapp.widget.pulldownrefresh.OooO00o oooO00o3 = this.OooO0Oo;
        oooO00o3.o00000O0 = ValueAnimator.ofInt(oooO00o3.OooO0O0, (int) (oooO00o3.Oooooo * this.OooO00o));
        this.OooO0Oo.o00000O0.setDuration(this.OooO0O0);
        this.OooO0Oo.o00000O0.setInterpolator(new com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0(0));
        this.OooO0Oo.o00000O0.addUpdateListener(new OooO00o());
        this.OooO0Oo.o00000O0.addListener(new C0332OooO0O0());
        this.OooO0Oo.o00000O0.start();
    }
}
