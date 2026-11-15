package com.bytedance.sdk.openadsdk.component.HiB;

import com.bytedance.sdk.openadsdk.core.model.sU;

public class sP {
    private com.bytedance.sdk.openadsdk.core.model.Sj EjP;
    private int HiB;
    private boolean Jcg;
    private int Sj;
    private sU TKC;
    private int sP;
    private String vS;

    public sP(int i10, int i11, sU sUVar, com.bytedance.sdk.openadsdk.core.model.Sj sj2) {
        this.Sj = i10;
        this.sP = i11;
        this.TKC = sUVar;
        this.EjP = sj2;
    }

    public int EjP() {
        return this.sP;
    }

    public sU HiB() {
        return this.TKC;
    }

    public String Jcg() {
        return this.vS;
    }

    public com.bytedance.sdk.openadsdk.core.model.Sj Sj() {
        return this.EjP;
    }

    public int TKC() {
        return this.Sj;
    }

    public boolean sP() {
        return this.Jcg;
    }

    public int vS() {
        return this.HiB;
    }

    public void Sj(boolean z10) {
        this.Jcg = z10;
    }

    public sP(int i10, int i11, int i12, String str) {
        this.Sj = i10;
        this.sP = i11;
        this.HiB = i12;
        this.vS = str;
    }
}
