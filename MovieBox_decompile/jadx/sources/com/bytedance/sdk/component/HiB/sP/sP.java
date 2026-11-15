package com.bytedance.sdk.component.HiB.sP;

import com.bytedance.sdk.component.HiB.HiB;
import com.bytedance.sdk.component.HiB.sef;

public class sP implements HiB {
    private sef EjP;
    private String Sj;
    private boolean TKC;
    private boolean sP;

    public sP(String str, boolean z10, boolean z11, sef sefVar) {
        this.Sj = str;
        this.sP = z10;
        this.TKC = z11;
        this.EjP = sefVar;
    }

    @Override
    public String Sj() {
        return this.Sj;
    }

    @Override
    public boolean TKC() {
        return this.TKC;
    }

    @Override
    public boolean sP() {
        return this.sP;
    }
}
