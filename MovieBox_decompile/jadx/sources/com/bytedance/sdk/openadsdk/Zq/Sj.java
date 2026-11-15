package com.bytedance.sdk.openadsdk.Zq;

import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.openadsdk.EjP.Sj.vS;
import com.bytedance.sdk.openadsdk.core.zR;
import com.bytedance.sdk.openadsdk.utils.JcM;

public class Sj {
    public static void Sj() {
        if (JcM.vS()) {
            JcM.Sj(new Dq("DailyTaskHelper") {
                @Override
                public void run() {
                    Sj.TKC();
                }
            });
        } else {
            TKC();
        }
    }

    public static void TKC() {
        com.bytedance.sdk.openadsdk.EjP.Sj.Sj.sP();
        vS.Sj();
        zR.Sj();
    }
}
