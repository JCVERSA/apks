package com.bytedance.sdk.openadsdk.uA;

import com.bytedance.sdk.component.HiB.RiZ;
import com.bytedance.sdk.component.HiB.uA;

public class HiB implements RiZ {
    private static int Sj;
    private boolean EjP;
    private final String HiB;
    private long TKC;
    private long sP = 0;

    public HiB() {
        Sj++;
        this.HiB = "image_request_" + Sj;
    }

    @Override
    public void Sj(String str, uA uAVar) {
        if (!this.EjP) {
            uAVar.Sj();
            uAVar.sP();
            uAVar.TKC();
            this.EjP = true;
        }
        this.sP = System.currentTimeMillis();
        TKC(str, uAVar);
    }

    @Override
    public void sP(String str, uA uAVar) {
        this.TKC += System.currentTimeMillis() - this.sP;
        TKC(str, uAVar);
    }

    private String TKC(String str, uA uAVar) {
        return str;
    }
}
