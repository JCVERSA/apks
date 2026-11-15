package com.bytedance.sdk.openadsdk.component.reward.sP;

import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.sP.sef;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.model.dx;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.JcM;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class vS extends sP implements com.bytedance.sdk.openadsdk.aa.Dq {
    private final dx Zq;
    private boolean uvD;

    public vS(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        super(sj2);
        this.Zq = (dx) sj2.sP;
    }

    @Override
    public boolean HiB() {
        return true;
    }

    @Override
    protected boolean LqL() {
        return false;
    }

    @Override
    public void Sj(FrameLayout frameLayout) {
    }

    @Override
    public boolean sP() {
        return this.uvD;
    }

    @Override
    public boolean vS() {
        return true;
    }

    @Override
    public void wE() {
        Yf jsObject;
        if (this.Sj.Fm.isFinishing()) {
            return;
        }
        if (this.Sj.wE.Dq() || this.uvD) {
            super.wE();
            if (this.Sj.wE.Dq()) {
                ley();
                this.Sj.FPG.sP();
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.view.sP sPVarSj = this.Sj.wE.Sj();
        if (sPVarSj == null || (jsObject = sPVarSj.getJsObject()) == null) {
            return;
        }
        jsObject.Sj((com.bytedance.sdk.openadsdk.aa.Dq) this);
    }

    public static void Sj(sU sUVar, boolean z10, String str) {
        HashMap map = new HashMap();
        map.put("is_backup", Boolean.valueOf(z10));
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj("choose_ad_start_show", sUVar, str, map);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("req_id", sUVar.cKW());
            jSONObject.put("is_backup", z10);
        } catch (JSONException unused) {
        }
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj().Sj("choose_ad_start_show", jSONObject);
    }

    public void sP(boolean z10) {
        if (this.uvD) {
            return;
        }
        HashMap map = new HashMap();
        map.put("has_focus", Boolean.valueOf(z10));
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj("choose_ad_focus_changed", this.Zq, this.Sj.HiB, map);
    }

    @Override
    public void Sj(com.bytedance.sdk.openadsdk.component.reward.view.Jcg jcg) {
        if (EjP.Sj(this.Zq)) {
            EjP.Sj(this.Zq, jcg, this.Sj);
        } else {
            super.Sj(jcg);
        }
    }

    @Override
    public void Sj(int i10, long j10) {
        this.uvD = true;
        int i11 = i10 - 1;
        this.Zq.sdp(i11);
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(this.Zq, this.Sj.HiB, i10, j10);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj(this.Zq.CBE(), i11, this.Sj.EjP);
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                vS.this.wE();
                vS vSVar = vS.this;
                com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = vSVar.Sj;
                if (sj2.xhi) {
                    vSVar.ley();
                    vS.this.Sj.FPG.sP();
                } else {
                    com.bytedance.sdk.openadsdk.component.reward.Sj.HiB.Sj sjVS = sj2.FPG.vS();
                    if (sjVS != null) {
                        sjVS.uvD();
                    }
                }
            }
        });
    }

    @Override
    public void Sj(sef sefVar) {
        this.Sj.wE.Sj().sP(sefVar);
    }

    @Override
    public void Jcg() {
    }
}
