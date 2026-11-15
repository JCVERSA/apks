package com.bytedance.sdk.component.adexpress.dynamic.HiB;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.sP.Fmk;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class HiB {
    private Sj EjP;
    public com.bytedance.sdk.component.adexpress.dynamic.EjP.sP Sj;
    private com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq TKC;
    protected sP sP;

    static class Sj {
        float Sj;
        float TKC;
        float sP;

        Sj() {
        }
    }

    public HiB(double d10, int i10, double d11, String str, Fmk fmk) {
        this.sP = new sP(d10, i10, d11, str, fmk);
    }

    public void Sj(Sj sj2) {
        this.EjP = sj2;
    }

    public void Sj() {
        this.sP.Sj();
    }

    public void Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2, float f10, float f11) {
        if (dq2 != null) {
            this.TKC = dq2;
        }
        com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq3 = this.TKC;
        float fDq = dq3.Dq();
        float fUA = dq3.uA();
        float f12 = TextUtils.equals(dq3.TEQ().HiB().ley(), "fixed") ? fUA : 65536.0f;
        this.sP.Sj();
        this.sP.TKC(dq3, fDq, f12);
        sP.TKC tkcSj = this.sP.Sj(dq3);
        com.bytedance.sdk.component.adexpress.dynamic.EjP.sP sPVar = new com.bytedance.sdk.component.adexpress.dynamic.EjP.sP();
        sPVar.Sj = f10;
        sPVar.sP = f11;
        if (tkcSj != null) {
            fDq = tkcSj.Sj;
        }
        sPVar.TKC = fDq;
        if (tkcSj != null) {
            fUA = tkcSj.sP;
        }
        sPVar.EjP = fUA;
        sPVar.HiB = "root";
        sPVar.uA = 1280.0f;
        sPVar.vS = dq3;
        dq3.TKC(f10);
        sPVar.vS.EjP(sPVar.sP);
        sPVar.vS.HiB(sPVar.TKC);
        sPVar.vS.vS(sPVar.EjP);
        com.bytedance.sdk.component.adexpress.dynamic.EjP.sP sPVarSj = Sj(sPVar, 0.0f);
        this.Sj = sPVarSj;
        Sj(sPVarSj);
    }

    public void Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.sP sPVar) {
        if (sPVar == null) {
            return;
        }
        sPVar.vS.TEQ().sP();
        List<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.sP>> list = sPVar.Jcg;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (List<com.bytedance.sdk.component.adexpress.dynamic.EjP.sP> list2 : list) {
            if (list2 != null && list2.size() > 0) {
                Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.sP> it = list2.iterator();
                while (it.hasNext()) {
                    Sj(it.next());
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:136:0x031d  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:90:0x01fa  */
    public com.bytedance.sdk.component.adexpress.dynamic.EjP.sP Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.sP sPVar, float f10) {
        float fSj;
        float fSj2;
        float f11;
        float f12;
        float fSj3;
        float fSj4;
        com.bytedance.sdk.component.adexpress.dynamic.EjP.sP sPVar2;
        com.bytedance.sdk.component.adexpress.dynamic.EjP.uA uAVarSj;
        float f13;
        com.bytedance.sdk.component.adexpress.dynamic.EjP.uA uAVar;
        sP.TKC tkcSj;
        sP.TKC tkcSj2;
        com.bytedance.sdk.component.adexpress.dynamic.EjP.sP sPVar3 = sPVar;
        com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2 = sPVar3.vS;
        if (dq2 == null) {
            return sPVar3;
        }
        dq2.dx();
        List<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> listDNu = dq2.dNu();
        if (listDNu == null || listDNu.size() <= 0) {
            return sPVar3;
        }
        com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB = dq2.TEQ().HiB();
        float fDNu = vSVarHiB.dNu();
        float fUvD = vSVarHiB.uvD();
        float fSef = vSVarHiB.sef();
        float fZq = vSVarHiB.Zq();
        float fAa = vSVarHiB.aa();
        String strJb = vSVarHiB.jb();
        String strEi = vSVarHiB.Ei();
        float f14 = sPVar3.Sj + fZq;
        float f15 = sPVar3.sP + fDNu;
        float f16 = fAa * 2.0f;
        float f17 = ((sPVar3.TKC - fZq) - fUvD) - f16;
        float f18 = ((sPVar3.EjP - fDNu) - fSef) - f16;
        com.bytedance.sdk.component.adexpress.dynamic.EjP.uA uAVar2 = new com.bytedance.sdk.component.adexpress.dynamic.EjP.uA(f14, f15);
        if (sPVar3.Jcg == null) {
            sPVar3.Jcg = new ArrayList();
        }
        Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> it = listDNu.iterator();
        float f19 = 0.0f;
        while (it.hasNext()) {
            sP.TKC tkcSj3 = this.sP.Sj(it.next());
            if (tkcSj3 != null) {
                f19 += tkcSj3.sP;
            }
        }
        String str = "space-between";
        String str2 = "space-around";
        if (f19 >= f18) {
            fSj = 0.0f;
            fSj2 = 0.0f;
        } else {
            if (TextUtils.equals(strEi, TtmlNode.CENTER)) {
                fSj2 = (f18 - f19) / 2.0f;
            } else if (TextUtils.equals(strEi, "flex-end")) {
                fSj2 = f18 - f19;
            } else if (TextUtils.equals(strEi, "space-around")) {
                fSj2 = TEQ.Sj((f18 - f19) / (listDNu.size() + 1));
                fSj = fSj2;
            } else {
                if (!TextUtils.equals(strEi, "space-between") || listDNu.size() <= 1) {
                    fSj = 0.0f;
                } else {
                    fSj = TEQ.Sj((f18 - f19) / (listDNu.size() - 1));
                }
                fSj2 = 0.0f;
            }
            fSj = 0.0f;
        }
        uAVar2.sP += fSj2;
        float f20 = f10;
        int i10 = 0;
        while (i10 < listDNu.size()) {
            List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list = listDNu.get(i10);
            i10++;
            List<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> list2 = listDNu;
            if (i10 >= sPVar3.Jcg.size()) {
                int size = (i10 - sPVar3.Jcg.size()) + 1;
                int i11 = 0;
                while (i11 < size) {
                    sPVar3.Jcg.add(new ArrayList());
                    i11++;
                    size = size;
                    fSj = fSj;
                }
                f11 = fSj;
            } else {
                f11 = fSj;
            }
            Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it2 = list.iterator();
            float f21 = 0.0f;
            while (true) {
                f12 = f14;
                if (!it2.hasNext()) {
                    break;
                }
                com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq next = it2.next();
                com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB2 = next.TEQ().HiB();
                String strLqL = vSVarHiB2.LqL();
                Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it3 = it2;
                int iEZ = vSVarHiB2.EZ();
                if (!TextUtils.equals(strLqL, "flex") && iEZ != 1 && iEZ != 2 && (tkcSj2 = this.sP.Sj(next)) != null) {
                    f21 += tkcSj2.Sj;
                }
                f14 = f12;
                it2 = it3;
            }
            float fMax = Math.max(f17 - f21, 0.0f);
            Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it4 = list.iterator();
            float f22 = 0.0f;
            while (it4.hasNext()) {
                com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq next2 = it4.next();
                com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB3 = next2.TEQ().HiB();
                Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it5 = it4;
                if (vSVarHiB3.EZ() != 1 && vSVarHiB3.EZ() != 2 && (tkcSj = this.sP.Sj(next2)) != null) {
                    f22 += tkcSj.Sj;
                }
                it4 = it5;
            }
            if (f22 >= f17) {
                fSj3 = 0.0f;
                fSj4 = 0.0f;
            } else {
                if (TextUtils.equals(strJb, TtmlNode.CENTER)) {
                    fSj3 = (f17 - f22) / 2.0f;
                } else if (TextUtils.equals(strJb, "flex-end")) {
                    fSj3 = f17 - f22;
                } else if (TextUtils.equals(strJb, str2)) {
                    fSj3 = TEQ.Sj((f17 - f22) / (list.size() + 1));
                    fSj4 = fSj3;
                } else if (!TextUtils.equals(strJb, str) || list.size() <= 1) {
                    fSj3 = 0.0f;
                } else {
                    fSj4 = TEQ.Sj((f17 - f22) / (list.size() - 1.0f));
                    fSj3 = 0.0f;
                }
                fSj4 = 0.0f;
            }
            uAVar2.Sj += fSj3;
            Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it6 = list.iterator();
            float fMax2 = 0.0f;
            while (it6.hasNext()) {
                com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq next3 = it6.next();
                Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it7 = it6;
                float f23 = this.sP.Sj(next3) != null ? this.sP.Sj(next3).sP : 0.0f;
                com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB4 = next3.TEQ().HiB();
                float f24 = f17;
                fMax2 = Math.max(fMax2, (vSVarHiB4.EZ() == 1 || vSVarHiB4.EZ() == 2) ? 0.0f : f23);
                it6 = it7;
                f17 = f24;
            }
            float f25 = f17;
            Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it8 = list.iterator();
            float f26 = f20;
            while (it8.hasNext()) {
                com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq next4 = it8.next();
                Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it9 = it8;
                sP.TKC tkcSj4 = this.sP.Sj(next4);
                float f27 = f26;
                com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB5 = next4.TEQ().HiB();
                String str3 = str;
                float fDb = vSVarHiB5.db();
                String str4 = str2;
                float fUHs = vSVarHiB5.UHs();
                String str5 = strJb;
                float fNdK = vSVarHiB5.ndK();
                float f28 = fSj4;
                float fQRN = vSVarHiB5.qRN();
                com.bytedance.sdk.component.adexpress.dynamic.EjP.uA uAVar3 = uAVar2;
                float f29 = tkcSj4 == null ? 0.0f : tkcSj4.Sj;
                float f30 = tkcSj4 == null ? 0.0f : tkcSj4.sP;
                com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq3 = dq2;
                float f31 = TextUtils.equals(dq2.TKC(), "root") ? i10 : f27;
                int i12 = i10;
                if (vSVarHiB5.EZ() == 1) {
                    sPVar2 = sPVar;
                    uAVarSj = Sj(sPVar2, vSVarHiB5, (f29 - fUHs) - fQRN, (f30 - fDb) - fNdK);
                } else {
                    sPVar2 = sPVar;
                    uAVarSj = uAVar3;
                }
                com.bytedance.sdk.component.adexpress.dynamic.EjP.uA uAVarSj2 = vSVarHiB5.EZ() == 2 ? Sj(vSVarHiB5, this.sP.Sj(this.TKC), new sP.TKC((f29 - fUHs) - fQRN, (f30 - fDb) - fNdK)) : uAVarSj;
                String strHcZ = vSVarHiB.HcZ();
                if (fMax2 > f30 && !TextUtils.equals(strHcZ, "flex-start")) {
                    strHcZ.hashCode();
                    if (strHcZ.equals(TtmlNode.CENTER)) {
                        f13 = (fMax2 - f30) / 2.0f;
                    } else {
                        f13 = !strHcZ.equals("flex-end") ? 0.0f : fMax2 - f30;
                    }
                }
                com.bytedance.sdk.component.adexpress.dynamic.EjP.sP sPVar4 = new com.bytedance.sdk.component.adexpress.dynamic.EjP.sP();
                sPVar4.Sj = uAVarSj2.Sj + fQRN;
                sPVar4.sP = uAVarSj2.sP + fDb + f13;
                sPVar4.TKC = (f29 - fUHs) - fQRN;
                sPVar4.EjP = (f30 - fDb) - fNdK;
                sPVar4.HiB = sPVar2.HiB + "." + next4.TKC();
                sPVar4.Dq = sPVar2;
                sPVar4.vS = next4;
                float f32 = fMax;
                sPVar4.uA = f32;
                list = list;
                sPVar4.TEQ = list;
                next4.TKC(sPVar4.Sj);
                sPVar4.vS.EjP(sPVar4.sP);
                sPVar4.vS.HiB(sPVar4.TKC);
                sPVar4.vS.vS(sPVar4.EjP);
                float f33 = f31;
                i10 = i12;
                sPVar2.Jcg.get(i10).add(Sj(sPVar4, f33));
                if (vSVarHiB5.EZ() == 1) {
                    uAVar = uAVar3;
                } else if (vSVarHiB5.EZ() != 2) {
                    uAVar = uAVar3;
                    uAVar.Sj += f29 + f28;
                } else {
                    uAVar = uAVar3;
                }
                f26 = f33;
                fMax = f32;
                uAVar2 = uAVar;
                str = str3;
                str2 = str4;
                strJb = str5;
                fSj4 = f28;
                dq2 = dq3;
                it8 = it9;
            }
            com.bytedance.sdk.component.adexpress.dynamic.EjP.uA uAVar4 = uAVar2;
            f14 = f12;
            uAVar4.Sj = f14;
            uAVar4.sP += fMax2 + f11;
            sPVar3 = sPVar;
            str = str;
            listDNu = list2;
            fSj = f11;
            f20 = f26;
            f17 = f25;
            dq2 = dq2;
        }
        return sPVar3;
    }

    private com.bytedance.sdk.component.adexpress.dynamic.EjP.uA Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVar, sP.TKC tkc, sP.TKC tkc2) {
        float fHS = vSVar.HS();
        float fTFd = vSVar.TFd();
        float fTz = vSVar.tz();
        float fMZN = vSVar.mZN();
        boolean zChv = vSVar.Chv();
        boolean zBml = vSVar.Bml();
        boolean zANB = vSVar.aNB();
        boolean zCX = vSVar.cX();
        if (!zChv) {
            if (zBml) {
                float f10 = this.EjP.Sj;
                fHS = ((f10 != 0.0f ? Math.min(f10, tkc.Sj) : tkc.Sj) - fTz) - tkc2.Sj;
            } else {
                fHS = 0.0f;
            }
        }
        if (!zANB) {
            if (zCX) {
                float f11 = this.EjP.sP;
                if (f11 == 0.0f) {
                    f11 = tkc.sP;
                }
                fTFd = (f11 - fMZN) - tkc2.sP;
            } else {
                fTFd = 0.0f;
            }
        }
        return new com.bytedance.sdk.component.adexpress.dynamic.EjP.uA(fHS, fTFd);
    }

    private com.bytedance.sdk.component.adexpress.dynamic.EjP.uA Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.sP sPVar, com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVar, float f10, float f11) {
        float f12;
        float f13;
        float f14 = sPVar.Sj;
        float f15 = sPVar.sP;
        float fHS = vSVar.HS();
        float fTFd = vSVar.TFd();
        float fTz = vSVar.tz();
        float fMZN = vSVar.mZN();
        boolean zChv = vSVar.Chv();
        boolean zBml = vSVar.Bml();
        boolean zANB = vSVar.aNB();
        boolean zCX = vSVar.cX();
        String strGY = vSVar.gY();
        float f16 = sPVar.TKC;
        float f17 = sPVar.EjP;
        if (TextUtils.equals(strGY, "0")) {
            if (zChv) {
                f14 = sPVar.Sj + fHS;
            } else if (zBml) {
                f14 = ((sPVar.Sj + f16) - fTz) - f10;
            }
            if (zANB) {
                f13 = sPVar.sP;
                f15 = f13 + fTFd;
            } else if (zCX) {
                f12 = sPVar.sP;
                f15 = ((f12 + f17) - fMZN) - f11;
            }
        } else if (TextUtils.equals(strGY, "1")) {
            f14 = sPVar.Sj + ((f16 - f10) / 2.0f);
            if (zANB) {
                f13 = sPVar.sP;
                f15 = f13 + fTFd;
            } else if (zCX) {
                f12 = sPVar.sP;
                f15 = ((f12 + f17) - fMZN) - f11;
            }
        } else if (TextUtils.equals(strGY, "2")) {
            f15 = sPVar.sP + ((f17 - f11) / 2.0f);
            if (zChv) {
                f14 = sPVar.Sj + fHS;
            } else if (zBml) {
                f14 = ((sPVar.Sj + f16) - fTz) - f10;
            }
        } else if (TextUtils.equals(strGY, "3")) {
            f14 = sPVar.Sj + ((f16 - f10) / 2.0f);
            f15 = sPVar.sP + ((f17 - f11) / 2.0f);
        }
        return new com.bytedance.sdk.component.adexpress.dynamic.EjP.uA(f14, f15);
    }
}
