package com.bytedance.adsdk.ugeno.HiB;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

public class TKC {
    int Dq;
    int Fmk;
    int HiB;
    int Jcg;
    float TEQ;
    boolean TzV;
    float Ym;
    int Zq;

    int f20195aa;
    boolean dNu;
    int uA;
    int uvD;
    int vS;
    int Sj = Integer.MAX_VALUE;
    int sP = Integer.MAX_VALUE;
    int TKC = Integer.MIN_VALUE;
    int EjP = Integer.MIN_VALUE;
    List<Integer> sef = new ArrayList();

    TKC() {
    }

    public int Sj() {
        return this.Jcg;
    }

    public int sP() {
        return this.Dq - this.uA;
    }

    void Sj(View view, int i10, int i11, int i12, int i13) {
        sP sPVar = (sP) view.getLayoutParams();
        this.Sj = Math.min(this.Sj, (view.getLeft() - sPVar.Fmk()) - i10);
        this.sP = Math.min(this.sP, (view.getTop() - sPVar.sef()) - i11);
        this.TKC = Math.max(this.TKC, view.getRight() + sPVar.Zq() + i12);
        this.EjP = Math.max(this.EjP, view.getBottom() + sPVar.uvD() + i13);
    }
}
