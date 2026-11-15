package com.bytedance.sdk.openadsdk.Zq.Sj;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.Mts;

public class sP {
    private int EjP;
    private boolean HiB;
    private int Jcg;
    private String Sj;
    private String TKC;
    private sU sP;
    private String vS;
    private int Dq = 0;
    private int uA = 0;

    public int Dq() {
        return this.Dq;
    }

    public int EjP() {
        return this.EjP;
    }

    public boolean HiB() {
        return this.HiB;
    }

    public int Jcg() {
        return this.Jcg;
    }

    public String Sj() {
        return this.Sj;
    }

    public String TKC() {
        sU sUVar;
        if (TextUtils.isEmpty(this.TKC) && (sUVar = this.sP) != null) {
            this.TKC = Mts.Sj(sUVar);
        }
        return this.TKC;
    }

    public sU sP() {
        return this.sP;
    }

    public int uA() {
        return this.uA;
    }

    public String vS() {
        return this.vS;
    }

    public void EjP(int i10) {
        this.uA = i10;
    }

    public void Sj(String str) {
        this.Sj = str;
    }

    public void sP(String str) {
        this.TKC = str;
    }

    public void Sj(sU sUVar) {
        this.sP = sUVar;
    }

    public void sP(int i10) {
        this.Jcg = i10;
    }

    public void Sj(int i10) {
        this.EjP = i10;
    }

    public void Sj(boolean z10) {
        this.HiB = z10;
    }

    public void TKC(String str) {
        this.vS = str;
    }

    public void TKC(int i10) {
        this.Dq = i10;
    }
}
