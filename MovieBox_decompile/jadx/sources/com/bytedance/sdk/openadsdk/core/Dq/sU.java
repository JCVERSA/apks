package com.bytedance.sdk.openadsdk.core.Dq;

import android.view.View;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.JcM;
import java.util.concurrent.atomic.AtomicBoolean;

public class sU extends com.bytedance.sdk.component.adexpress.sP.Sj<Sj> {
    private com.bytedance.sdk.component.adexpress.sP.TKC EjP;
    private com.bytedance.sdk.component.adexpress.sP.Jcg HiB;
    AtomicBoolean Sj = new AtomicBoolean(false);
    private final View TKC;
    private Sj sP;
    private final com.bytedance.sdk.component.adexpress.sP.Fmk vS;

    public sU(View view, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, com.bytedance.sdk.component.adexpress.sP.Fmk fmk) {
        this.TKC = view;
        this.vS = fmk;
    }

    public void sP() {
        if (this.Sj.get()) {
            return;
        }
        com.bytedance.sdk.component.adexpress.sP.TKC tkc = this.EjP;
        if (tkc == null || !tkc.Sj((RiZ) this.TKC, 0)) {
            this.HiB.Sj(107, "backup false");
            return;
        }
        this.vS.HiB().Jcg();
        Sj sj2 = (Sj) this.TKC.findViewWithTag("tt_express_backup_fl_tag_26");
        this.sP = sj2;
        if (sj2 == null) {
            this.HiB.Sj(107, "backupview is null");
            return;
        }
        com.bytedance.sdk.component.adexpress.sP.sef sefVar = new com.bytedance.sdk.component.adexpress.sP.sef();
        Sj sj3 = this.sP;
        float realWidth = sj3 == null ? 0.0f : sj3.getRealWidth();
        Sj sj4 = this.sP;
        float realHeight = sj4 != null ? sj4.getRealHeight() : 0.0f;
        sefVar.Sj(true);
        sefVar.Sj(realWidth);
        sefVar.sP(realHeight);
        this.HiB.Sj(this.sP, sefVar);
    }

    @Override
    public void Sj(com.bytedance.sdk.component.adexpress.sP.Jcg jcg) {
        this.HiB = jcg;
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                sU.this.sP();
            }
        });
    }

    @Override
    public Sj HiB() {
        return this.sP;
    }

    @Override
    public void Sj(com.bytedance.sdk.component.adexpress.sP.TKC tkc) {
        this.EjP = tkc;
    }
}
