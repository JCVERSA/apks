package com.bytedance.sdk.component.vS.Sj.Sj;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.vS.Sj.Dq;
import com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.Jcg;
import java.util.Iterator;
import java.util.List;

public class TKC implements EjP {
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj Dq;
    private Jcg EjP;
    private com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.vS HiB;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj Jcg;
    private com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.EjP Sj;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj TEQ;
    private com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.sP TKC;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj Ym;

    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj f20303aa;
    private com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.Sj sP;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj uA;
    private com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.HiB vS;

    public TKC() {
        Context contextVS = Dq.Jcg().vS();
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.Sj()) {
            com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sjAa = Dq.Jcg().aa();
            this.Jcg = sjAa;
            this.Sj = new com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.EjP(contextVS, sjAa);
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.HiB()) {
            if (Dq.Jcg().TEQ() != null) {
                this.uA = Dq.Jcg().TEQ();
            } else {
                this.uA = Dq.Jcg().Fmk();
            }
            this.TKC = new com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.sP(contextVS, this.uA);
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.sP()) {
            com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sjFmk = Dq.Jcg().Fmk();
            this.Dq = sjFmk;
            this.sP = new com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.Sj(contextVS, sjFmk);
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.TKC()) {
            com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sjFmk2 = Dq.Jcg().Fmk();
            this.TEQ = sjFmk2;
            this.EjP = new Jcg(contextVS, sjFmk2);
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.EjP()) {
            com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sjSef = Dq.Jcg().sef();
            this.Ym = sjSef;
            this.HiB = new com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.vS(contextVS, sjSef);
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.vS()) {
            com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sjZq = Dq.Jcg().Zq();
            this.f20303aa = sjZq;
            this.vS = new com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.HiB(contextVS, sjZq);
        }
    }

    @Override
    public void Sj(com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2, int i10) {
        if (sj2 == null) {
            return;
        }
        try {
            sj2.sP(System.currentTimeMillis());
            if (sj2.EjP() == 0 && sj2.HiB() == 1) {
                if (com.bytedance.sdk.component.vS.Sj.sP.Sj.Sj()) {
                    this.Sj.Sj(sj2);
                    return;
                }
                return;
            }
            if (sj2.EjP() == 3 && sj2.HiB() == 2) {
                if (com.bytedance.sdk.component.vS.Sj.sP.Sj.HiB()) {
                    this.TKC.Sj(sj2);
                    return;
                }
                return;
            }
            if (sj2.EjP() == 0 && sj2.HiB() == 2) {
                if (com.bytedance.sdk.component.vS.Sj.sP.Sj.sP()) {
                    this.sP.Sj(sj2);
                    return;
                }
                return;
            }
            if (sj2.EjP() == 1 && sj2.HiB() == 2) {
                if (com.bytedance.sdk.component.vS.Sj.sP.Sj.TKC()) {
                    this.EjP.Sj(sj2);
                }
            } else if (sj2.EjP() == 1 && sj2.HiB() == 3) {
                if (com.bytedance.sdk.component.vS.Sj.sP.Sj.EjP()) {
                    this.HiB.Sj(sj2);
                }
            } else if (sj2.EjP() == 2 && sj2.HiB() == 3 && com.bytedance.sdk.component.vS.Sj.sP.Sj.vS()) {
                this.vS.Sj(sj2);
            }
        } catch (Throwable unused) {
            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.WMZ(), 1);
        }
    }

    public List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> sP(com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2, int i10) {
        if (sj2.EjP() == 0 && sj2.HiB() == 1 && com.bytedance.sdk.component.vS.Sj.sP.Sj.Sj()) {
            if (this.Jcg.sP() <= i10) {
                return null;
            }
            List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSj = this.Sj.Sj(this.Jcg.sP() - i10, "_id");
            if (listSj != null && listSj.size() != 0) {
                com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.ley(), 1);
            }
            return listSj;
        }
        if (sj2.EjP() == 3 && sj2.HiB() == 2 && com.bytedance.sdk.component.vS.Sj.sP.Sj.HiB()) {
            if (this.uA.sP() > i10) {
                return this.TKC.Sj(this.uA.sP() - i10, "_id");
            }
        } else if (sj2.EjP() == 0 && sj2.HiB() == 2 && com.bytedance.sdk.component.vS.Sj.sP.Sj.sP()) {
            if (this.Dq.sP() > i10) {
                List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSj2 = this.sP.Sj(this.Dq.sP() - i10, "_id");
                if (listSj2 != null && listSj2.size() != 0) {
                    com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.LqL(), 1);
                }
                return listSj2;
            }
        } else if (sj2.EjP() == 1 && sj2.HiB() == 2 && com.bytedance.sdk.component.vS.Sj.sP.Sj.TKC()) {
            if (this.TEQ.sP() > i10) {
                List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSj3 = this.EjP.Sj(this.TEQ.sP() - i10, "_id");
                if (listSj3 != null && listSj3.size() != 0) {
                    com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.Yf(), 1);
                }
                return listSj3;
            }
        } else if (sj2.EjP() == 1 && sj2.HiB() == 3 && com.bytedance.sdk.component.vS.Sj.sP.Sj.EjP()) {
            if (this.Ym.sP() > i10) {
                List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSj4 = this.HiB.Sj(this.Ym.sP() - i10, "_id");
                if (listSj4 != null && listSj4.size() != 0) {
                    com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.LD(), 1);
                }
                return listSj4;
            }
        } else if (sj2.EjP() == 2 && sj2.HiB() == 3 && com.bytedance.sdk.component.vS.Sj.sP.Sj.vS() && this.f20303aa.sP() > i10) {
            return this.vS.Sj(this.f20303aa.sP() - i10, "_id");
        }
        return null;
    }

    @Override
    public void Sj(int i10, List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list) {
        if (list == null || list.size() == 0 || list.get(0) == null) {
            return;
        }
        com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2 = list.get(0);
        if (i10 == 200 || i10 == -1) {
            com.bytedance.sdk.component.vS.Sj.sP.Sj.Sj sj3 = com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP;
            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(sj3.IOh(), list.size());
            if (i10 != 200) {
                com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(sj3.EZ(), list.size());
            }
            if (sj2.EjP() == 0 && sj2.HiB() == 1) {
                if (com.bytedance.sdk.component.vS.Sj.sP.Sj.Sj()) {
                    this.Sj.sP(list);
                    return;
                }
                return;
            }
            if (sj2.EjP() == 3 && sj2.HiB() == 2) {
                if (com.bytedance.sdk.component.vS.Sj.sP.Sj.HiB()) {
                    this.TKC.sP(list);
                    return;
                }
                return;
            }
            if (sj2.EjP() == 0 && sj2.HiB() == 2) {
                if (com.bytedance.sdk.component.vS.Sj.sP.Sj.sP()) {
                    this.sP.sP(list);
                    return;
                }
                return;
            }
            if (sj2.EjP() == 1 && sj2.HiB() == 2) {
                if (com.bytedance.sdk.component.vS.Sj.sP.Sj.TKC()) {
                    this.EjP.sP(list);
                }
            } else if (sj2.EjP() == 1 && sj2.HiB() == 3) {
                if (com.bytedance.sdk.component.vS.Sj.sP.Sj.EjP()) {
                    this.HiB.sP(list);
                }
            } else if (sj2.EjP() == 2 && sj2.HiB() == 3 && com.bytedance.sdk.component.vS.Sj.sP.Sj.vS()) {
                this.vS.sP(list);
            }
        }
    }

    @Override
    public List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> Sj(int i10, int i11, List<String> list) {
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.Sj()) {
            List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSj = this.Sj.Sj("_id");
            if (Sj(listSj, list)) {
                listSj.size();
                com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.ib(), 1);
                return listSj;
            }
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.HiB()) {
            List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSj2 = this.TKC.Sj("_id");
            if (Sj(listSj2, list)) {
                listSj2.size();
                return listSj2;
            }
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.sP()) {
            List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSj3 = this.sP.Sj("_id");
            if (Sj(listSj3, list)) {
                listSj3.size();
                com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.kF(), 1);
                return listSj3;
            }
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.TKC()) {
            List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSP = this.EjP.sP("_id");
            if (Sj(listSP, list)) {
                listSP.size();
                com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.uP(), 1);
                return listSP;
            }
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.EjP()) {
            List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSP2 = this.HiB.sP("_id");
            if (Sj(listSP2, list)) {
                listSP2.size();
                com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.wE(), 1);
                return listSP2;
            }
        }
        if (!com.bytedance.sdk.component.vS.Sj.sP.Sj.vS()) {
            return null;
        }
        List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSP3 = this.vS.sP("_id");
        if (!Sj(listSP3, list)) {
            return null;
        }
        listSP3.size();
        return listSP3;
    }

    private boolean Sj(List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list, List<String> list2) {
        if (list != null && !list.isEmpty() && list2 != null && !list2.isEmpty()) {
            try {
                Iterator<com.bytedance.sdk.component.vS.Sj.EjP.Sj> it = list.iterator();
                while (it.hasNext()) {
                    com.bytedance.sdk.component.vS.Sj.EjP.Sj next = it.next();
                    if (next != null) {
                        String strTKC = next.TKC();
                        if (!TextUtils.isEmpty(strTKC) && list2.contains(strTKC)) {
                            it.remove();
                        }
                    }
                }
            } catch (Throwable th2) {
                th2.getMessage();
            }
        }
        return (list == null || list.isEmpty()) ? false : true;
    }

    @Override
    public boolean Sj(int i10, boolean z10) {
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.HiB hiB;
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.vS vSVar;
        Jcg jcg;
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.Sj sj2;
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.sP sPVar;
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.EjP ejP;
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.Sj() && (ejP = this.Sj) != null && ejP.Sj(i10)) {
            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.sef(), 1);
            return true;
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.HiB() && (sPVar = this.TKC) != null && sPVar.Sj(i10)) {
            return true;
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.sP() && (sj2 = this.sP) != null && sj2.Sj(i10)) {
            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.Zq(), 1);
            return true;
        }
        if (com.bytedance.sdk.component.vS.Sj.sP.Sj.TKC() && (jcg = this.EjP) != null && jcg.Sj(i10)) {
            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.uvD(), 1);
            return true;
        }
        if (!com.bytedance.sdk.component.vS.Sj.sP.Sj.EjP() || (vSVar = this.HiB) == null || !vSVar.Sj(i10)) {
            return com.bytedance.sdk.component.vS.Sj.sP.Sj.vS() && (hiB = this.vS) != null && hiB.Sj(i10);
        }
        com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.dNu(), 1);
        return true;
    }

    @Override
    public void Sj(int i10, long j10) {
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.Sj(i10, j10);
        }
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.sP sPVar = this.TKC;
        if (sPVar != null) {
            sPVar.Sj(i10, j10);
        }
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.Sj sj2 = this.sP;
        if (sj2 != null) {
            sj2.Sj(i10, j10);
        }
        Jcg jcg = this.EjP;
        if (jcg != null) {
            jcg.Sj(i10, j10);
        }
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.vS vSVar = this.HiB;
        if (vSVar != null) {
            vSVar.Sj(i10, j10);
        }
        com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.HiB hiB = this.vS;
        if (hiB != null) {
            hiB.Sj(i10, j10);
        }
    }
}
