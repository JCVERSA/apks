package com.bytedance.sdk.component.vS.Sj.Sj;

import com.bytedance.sdk.component.vS.Sj.Dq;
import com.bytedance.sdk.component.vS.Sj.Sj.sP.Jcg;
import java.util.List;
import java.util.Queue;

public class vS implements EjP {
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj Dq;
    private com.bytedance.sdk.component.vS.Sj.Sj.sP.sP EjP;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj Fmk;
    private Jcg HiB;
    private com.bytedance.sdk.component.vS.Sj.Sj.sP.vS Jcg;
    HiB Sj = Dq.Jcg().EjP();
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj TEQ;
    private com.bytedance.sdk.component.vS.Sj.Sj.sP.Sj TKC;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj Ym;

    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj f20304aa;
    private com.bytedance.sdk.component.vS.Sj.Sj.sP.HiB sP;
    private Queue<String> sef;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj uA;
    private com.bytedance.sdk.component.vS.Sj.Sj.sP.TKC vS;

    public vS(Queue<String> queue) {
        this.sef = queue;
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.Sj()) {
            com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sjAa = Dq.Jcg().aa();
            this.Dq = sjAa;
            this.sP = new com.bytedance.sdk.component.vS.Sj.Sj.sP.HiB(sjAa, queue);
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.HiB()) {
            if (Dq.Jcg().TEQ() != null) {
                this.TEQ = Dq.Jcg().TEQ();
            } else {
                this.TEQ = Dq.Jcg().Fmk();
            }
            this.EjP = new com.bytedance.sdk.component.vS.Sj.Sj.sP.sP(this.TEQ, queue);
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.sP()) {
            com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sjFmk = Dq.Jcg().Fmk();
            this.uA = sjFmk;
            this.TKC = new com.bytedance.sdk.component.vS.Sj.Sj.sP.Sj(sjFmk, queue);
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.TKC()) {
            com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sjFmk2 = Dq.Jcg().Fmk();
            this.Ym = sjFmk2;
            this.HiB = new Jcg(sjFmk2, queue);
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.EjP()) {
            com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sjSef = Dq.Jcg().sef();
            this.f20304aa = sjSef;
            this.vS = new com.bytedance.sdk.component.vS.Sj.Sj.sP.TKC(sjSef, queue);
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.vS()) {
            com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sjZq = Dq.Jcg().Zq();
            this.Fmk = sjZq;
            this.Jcg = new com.bytedance.sdk.component.vS.Sj.Sj.sP.vS(sjZq, queue);
        }
    }

    @Override
    public void Sj(int i10, long j10) {
    }

    @Override
    public void Sj(com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2, int i10) {
        try {
            byte bEjP = sj2.EjP();
            byte bHiB = sj2.HiB();
            if (bEjP == 0 && bHiB == 1 && com.bytedance.sdk.component.vS.Sj.sP.Sj.Sj()) {
                this.sP.Sj(sj2);
                return;
            }
            if (bEjP == 3 && bHiB == 2 && com.bytedance.sdk.component.vS.Sj.sP.Sj.HiB()) {
                this.EjP.Sj(sj2);
                return;
            }
            if (bEjP == 0 && bHiB == 2 && com.bytedance.sdk.component.vS.Sj.sP.Sj.sP()) {
                this.TKC.Sj(sj2);
                return;
            }
            if (bEjP == 1 && bHiB == 2 && com.bytedance.sdk.component.vS.Sj.sP.Sj.TKC()) {
                this.HiB.Sj(sj2);
                return;
            }
            if (bEjP == 1 && bHiB == 3 && com.bytedance.sdk.component.vS.Sj.sP.Sj.EjP()) {
                this.vS.Sj(sj2);
            } else if (bEjP == 2 && bHiB == 3 && com.bytedance.sdk.component.vS.Sj.sP.Sj.vS()) {
                this.Jcg.Sj(sj2);
            }
        } catch (Throwable unused) {
        }
    }

    @Override
    public void Sj(int i10, List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list) {
        if (list == null || list.size() == 0 || list.get(0) == null) {
            return;
        }
        com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2 = list.get(0);
        byte bHiB = sj2.HiB();
        byte bEjP = sj2.EjP();
        if (bEjP == 0 && bHiB == 1 && com.bytedance.sdk.component.vS.Sj.sP.Sj.Sj()) {
            this.sP.Sj(i10, list);
            return;
        }
        if (bEjP == 3 && bHiB == 2 && com.bytedance.sdk.component.vS.Sj.sP.Sj.HiB()) {
            this.EjP.Sj(i10, list);
            return;
        }
        if (bEjP == 0 && bHiB == 2 && com.bytedance.sdk.component.vS.Sj.sP.Sj.sP()) {
            this.TKC.Sj(i10, list);
            return;
        }
        if (bEjP == 1 && bHiB == 2 && com.bytedance.sdk.component.vS.Sj.sP.Sj.TKC()) {
            this.HiB.Sj(i10, list);
            return;
        }
        if (bEjP == 1 && bHiB == 3 && com.bytedance.sdk.component.vS.Sj.sP.Sj.EjP()) {
            this.vS.Sj(i10, list);
        } else if (bEjP == 2 && bHiB == 3 && com.bytedance.sdk.component.vS.Sj.sP.Sj.vS()) {
            this.Jcg.Sj(i10, list);
        }
    }

    @Override
    public List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> Sj(int i10, int i11, List<String> list) {
        List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSj;
        List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSj2;
        List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSj3;
        List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSj4;
        List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSj5;
        List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSj6;
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.Sj() && this.sP.sP(i10, i11) && (listSj6 = this.sP.Sj(i10, i11)) != null && listSj6.size() != 0) {
            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.TzV(), 1);
            return listSj6;
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.HiB() && this.EjP.sP(i10, i11) && (listSj5 = this.EjP.Sj(i10, i11)) != null && listSj5.size() != 0) {
            return listSj5;
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.sP() && this.TKC.sP(i10, i11) && (listSj4 = this.TKC.Sj(i10, i11)) != null && listSj4.size() != 0) {
            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.RiZ(), 1);
            return listSj4;
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.TKC() && this.HiB.sP(i10, i11) && (listSj3 = this.HiB.Sj(i10, i11)) != null && listSj3.size() != 0) {
            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.sU(), 1);
            return listSj3;
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.EjP() && this.vS.sP(i10, i11) && (listSj2 = this.vS.Sj(i10, i11)) != null && listSj2.size() != 0) {
            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.dx(), 1);
            return listSj2;
        }
        if (!com.bytedance.sdk.component.vS.Sj.sP.Sj.vS() || !this.Jcg.sP(i10, i11) || (listSj = this.Jcg.Sj(i10, i11)) == null || listSj.size() == 0) {
            return null;
        }
        return listSj;
    }

    @Override
    public boolean Sj(int i10, boolean z10) {
        com.bytedance.sdk.component.vS.Sj.Sj.sP.vS vSVar;
        com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2;
        com.bytedance.sdk.component.vS.Sj.Sj.sP.TKC tkc;
        com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj3;
        Jcg jcg;
        com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj4;
        com.bytedance.sdk.component.vS.Sj.Sj.sP.Sj sj5;
        com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj6;
        com.bytedance.sdk.component.vS.Sj.Sj.sP.sP sPVar;
        com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj7;
        com.bytedance.sdk.component.vS.Sj.Sj.sP.HiB hiB;
        com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj8;
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.Sj() && (hiB = this.sP) != null && (sj8 = this.Dq) != null && hiB.sP(i10, sj8.Sj())) {
            return true;
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.HiB() && (sPVar = this.EjP) != null && (sj7 = this.TEQ) != null && sPVar.sP(i10, sj7.Sj())) {
            return true;
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.sP() && (sj5 = this.TKC) != null && (sj6 = this.uA) != null && sj5.sP(i10, sj6.Sj())) {
            return true;
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.TKC() && (jcg = this.HiB) != null && (sj4 = this.Ym) != null && jcg.sP(i10, sj4.Sj())) {
            return true;
        }
        if (!com.bytedance.sdk.component.vS.Sj.sP.Sj.EjP() || (tkc = this.vS) == null || (sj3 = this.f20304aa) == null || !tkc.sP(i10, sj3.Sj())) {
            return com.bytedance.sdk.component.vS.Sj.sP.Sj.vS() && (vSVar = this.Jcg) != null && (sj2 = this.Fmk) != null && vSVar.sP(i10, sj2.Sj());
        }
        return true;
    }
}
