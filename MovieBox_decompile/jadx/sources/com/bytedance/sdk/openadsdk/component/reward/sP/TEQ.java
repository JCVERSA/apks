package com.bytedance.sdk.openadsdk.component.reward.sP;

import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;

public class TEQ extends sP {
    public TEQ(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        super(sj2);
    }

    @Override
    public boolean HiB() {
        return true;
    }

    @Override
    public void RiZ() {
        if (this.Sj.uP.Dq(com.bytedance.sdk.openadsdk.component.reward.Sj.Dq.TKC) && uP.TzV(this.Sj.sP)) {
            this.Sj.uP.TKC("return_foreground");
            com.bytedance.sdk.openadsdk.core.widget.sP sPVar = this.Fmk;
            if ((sPVar == null || !sPVar.isShowing()) && this.Sj.uP.sP() >= 0.0f) {
                this.Sj.uP.HiB(0);
            }
        }
    }

    @Override
    public void Sj(FrameLayout frameLayout) {
    }

    @Override
    public void dNu() {
        if (uP.Dq(this.sP) && this.Sj.JcM.xD() && !this.Sj.JcM.Ei()) {
            TzV();
        }
        if (uP.Jcg(this.Sj.sP)) {
            if (DeviceUtils.Jcg() == 0) {
                this.Sj.ndK = true;
            }
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.Sj;
            if (sj2.ndK) {
                sj2.Mts.sP(true);
                this.Sj.uP.HiB(true);
            }
        }
        this.Sj.f20380xu.Sj();
    }

    @Override
    public void dx() {
        super.dx();
        if (uP.TzV(this.Sj.sP)) {
            this.TEQ.removeMessages(600);
            this.Sj.uP.TKC("go_background");
        }
    }

    @Override
    public void sU() {
        super.sU();
        if (uP.TzV(this.Sj.sP)) {
            this.TEQ.removeMessages(600);
            this.Sj.uP.TKC("go_background");
        }
    }

    @Override
    public boolean vS() {
        return true;
    }

    public static boolean Sj(sU sUVar) {
        return uP.Jcg(sUVar) || uP.TzV(sUVar);
    }

    @Override
    public void Jcg() {
    }
}
