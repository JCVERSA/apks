package com.bytedance.sdk.openadsdk.core.Dq;

import com.bytedance.sdk.openadsdk.utils.JcM;
import org.json.JSONObject;

public class Fmk implements com.bytedance.adsdk.ugeno.core.Zq, com.bytedance.sdk.component.adexpress.sP.uA {
    private final String EjP;
    private long HiB;
    private final com.bytedance.sdk.openadsdk.EjP.EjP.HiB Sj;
    private final com.bytedance.sdk.openadsdk.core.model.sU TKC;
    private final String sP;

    public Fmk(com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB, String str, com.bytedance.sdk.openadsdk.core.model.sU sUVar, String str2) {
        this.Sj = hiB;
        this.sP = str;
        this.EjP = str2;
        this.TKC = sUVar;
    }

    @Override
    public void Dq() {
        this.Sj.sef();
    }

    @Override
    public void EjP() {
        this.Sj.Sj();
    }

    @Override
    public void HiB() {
        this.Sj.sP();
    }

    @Override
    public void Jcg() {
        this.Sj.Sj(true);
        this.Sj.Fmk();
        JcM.sP(new com.bytedance.sdk.component.Dq.Dq("native_success") {
            @Override
            public void run() {
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(Fmk.this.TKC, Fmk.this.sP, "dynamic_backup_render", (JSONObject) null);
            }
        }, 10);
    }

    @Override
    public void TEQ() {
        this.Sj.sP();
    }

    @Override
    public void TKC(int i10) {
        if (i10 == 3) {
            this.Sj.EjP("dynamic_sub_analysis2_end");
        } else {
            this.Sj.EjP("dynamic_sub_analysis_end");
        }
    }

    public void Ym() {
        this.Sj.Ym();
        this.Sj.aa();
    }

    @Override
    public void uA() {
        this.Sj.Zq();
    }

    @Override
    public void vS(int i10) {
        final String str;
        System.currentTimeMillis();
        if (i10 == 3) {
            this.Sj.Jcg("dynamic_render2_success");
            str = "dynamic2_render";
        } else {
            this.Sj.Jcg("dynamic_render_success");
            str = "dynamic_backup_native_render";
        }
        this.Sj.Sj(true);
        JcM.sP(new com.bytedance.sdk.component.Dq.Dq("dynamic_success") {
            @Override
            public void run() {
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(Fmk.this.TKC, Fmk.this.sP, str, (JSONObject) null);
            }
        }, 10);
    }

    @Override
    public void EjP(int i10) {
        if (i10 == 3) {
            this.Sj.EjP("dynamic_sub_render2_start");
        } else {
            this.Sj.EjP("dynamic_sub_render_start");
        }
    }

    @Override
    public void HiB(int i10) {
        if (i10 == 3) {
            this.Sj.EjP("dynamic_sub_render2_end");
        } else {
            this.Sj.EjP("dynamic_sub_render_end");
        }
    }

    @Override
    public void Sj(boolean z10) {
        this.Sj.Sj(z10 ? 1 : 0);
    }

    @Override
    public void sP(int i10) {
        if (i10 == 3) {
            this.Sj.EjP("dynamic_sub_analysis2_start");
        } else {
            this.Sj.EjP("dynamic_sub_analysis_start");
        }
    }

    @Override
    public void Sj(int i10, String str) {
        this.Sj.Sj(i10, str);
        Ym.Sj("Web", i10, str, this.sP, this.EjP, this.TKC);
    }

    @Override
    public void TKC() {
        this.Sj.HiB("ugen_sub_render_start");
    }

    @Override
    public void sP() {
        this.Sj.HiB("ugen_sub_analysis_end");
    }

    @Override
    public void Sj(int i10) {
        this.HiB = System.currentTimeMillis();
        if (i10 == 3) {
            this.Sj.TKC("dynamic_render2_start");
        } else {
            this.Sj.TKC("dynamic_render_start");
        }
    }

    @Override
    public void vS() {
        this.Sj.TKC();
    }

    @Override
    public void Sj(int i10, int i11, String str, boolean z10) {
        if (!z10) {
            this.Sj.Sj(true);
        }
        if (i10 == 3) {
            this.Sj.sP(i11, "dynamic_render2_error");
        } else {
            this.Sj.sP(i11, "dynamic_render_error");
        }
        Ym.Sj("NDR", i11, str, this.sP, this.EjP, this.TKC);
    }

    @Override
    public void Sj() {
        this.Sj.HiB("ugen_render_start");
        this.Sj.HiB("ugen_sub_analysis_start");
    }

    @Override
    public void Sj(com.bytedance.adsdk.ugeno.core.sef sefVar) {
        if (sefVar.Sj() == 0) {
            this.Sj.HiB("ugen_sub_render_end");
            this.Sj.vS("ugen_render_success");
        } else {
            this.Sj.TKC(sefVar.Sj(), "ugen_render_error");
            Ym.Sj("UGen", sefVar.Sj(), sefVar.sP(), this.sP, this.EjP, this.TKC);
        }
        this.Sj.Sj(true);
    }
}
