package com.bytedance.sdk.component.adexpress.dynamic.HiB;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.sP.Fmk;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class sP {
    private String Dq;
    private double HiB;
    private double Jcg;
    private Fmk uA;
    private int vS;
    public Map<String, TKC> Sj = new HashMap();
    public Map<String, TKC> sP = new HashMap();
    public Map<String, TKC> TKC = new HashMap();
    private double EjP = Math.random();

    static class Sj implements Cloneable {
        float Sj;
        float TKC;
        boolean sP;

        Sj() {
        }

        public Object clone() {
            try {
                return (Sj) super.clone();
            } catch (CloneNotSupportedException unused) {
                return null;
            }
        }
    }

    static class TKC {
        float Sj;
        float sP;

        public TKC() {
        }

        public String toString() {
            return "UnitSize{width=" + this.Sj + ", height=" + this.sP + '}';
        }

        public TKC(float f10, float f11) {
            this.Sj = f10;
            this.sP = f11;
        }
    }

    static class C0198sP {
        double EjP;
        float HiB;
        float Sj;
        int TKC;
        int sP;

        C0198sP() {
        }

        static JSONObject Sj(C0198sP c0198sP) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(TtmlNode.ATTR_TTS_FONT_SIZE, c0198sP.Sj);
                jSONObject.put("letterSpacing", c0198sP.sP);
                jSONObject.put("lineHeight", c0198sP.EjP);
                jSONObject.put("maxWidth", c0198sP.HiB);
                jSONObject.put(TtmlNode.ATTR_TTS_FONT_WEIGHT, c0198sP.TKC);
            } catch (JSONException unused) {
            }
            return jSONObject;
        }
    }

    public sP(double d10, int i10, double d11, String str, Fmk fmk) {
        this.HiB = d10;
        this.vS = i10;
        this.Jcg = d11;
        this.Dq = str;
        this.uA = fmk;
    }

    private TKC HiB(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2, float f10, float f11) {
        String str = dq2.TKC() + "_" + f10 + "_" + f11;
        if (this.TKC.containsKey(str)) {
            return this.TKC.get(str);
        }
        TKC tkcVS = vS(dq2, f10, f11);
        this.TKC.put(str, tkcVS);
        return tkcVS;
    }

    private TKC vS(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2, float f10, float f11) {
        new TKC();
        com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB = dq2.TEQ().HiB();
        dq2.TEQ().TKC();
        vSVarHiB.MuB();
        float fTzV = vSVarHiB.TzV();
        int iSdp = vSVarHiB.sdp();
        double dDwU = vSVarHiB.dwU();
        int iIOh = vSVarHiB.IOh();
        boolean zHpB = vSVarHiB.HpB();
        boolean zPfr = vSVarHiB.pfr();
        int iXhi = vSVarHiB.xhi();
        C0198sP c0198sP = new C0198sP();
        c0198sP.Sj = fTzV;
        c0198sP.sP = iSdp;
        c0198sP.TKC = iIOh;
        c0198sP.EjP = dDwU;
        c0198sP.HiB = f10;
        return Sj(dq2.TEQ().TKC(), c0198sP, zHpB, zPfr, iXhi, dq2);
    }

    public TKC EjP(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2, float f10, float f11) {
        float fMin;
        TKC tkc = new TKC();
        float f12 = 0.0f;
        if (f11 <= 0.0f || f10 <= 0.0f) {
            tkc.Sj = 0.0f;
            tkc.sP = 0.0f;
            return tkc;
        }
        if (dq2.TzV()) {
            return Sj(dq2, f10, f11);
        }
        float fDq = dq2.Dq();
        float fUA = dq2.uA();
        float fZq = dq2.Zq();
        float fUvD = dq2.uvD();
        com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB = dq2.TEQ().HiB();
        String strLqL = vSVarHiB.LqL();
        String strLey = vSVarHiB.ley();
        float fMin2 = ((TextUtils.equals(strLqL, "flex") || TextUtils.equals(strLqL, "auto")) ? f10 : Math.min(fDq, f10)) - fZq;
        if (TextUtils.equals(strLey, "scale")) {
            fMin = Math.round(fMin2 / fUA) + fUvD;
            if (fMin > f11) {
                fMin2 = Math.round((f11 - fUvD) * fUA);
            }
        } else {
            fMin = (TextUtils.equals(strLey, "auto") || TextUtils.equals(strLey, "flex")) ? f11 : Math.min(fUA, f11);
        }
        float f13 = fMin - fUvD;
        List<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> listDNu = dq2.dNu();
        Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> it = listDNu.iterator();
        float fMax = 0.0f;
        float fMax2 = 0.0f;
        while (it.hasNext()) {
            Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> it2 = it;
            List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> next = it.next();
            TKC tkc2 = tkc;
            TKC tkcSP = sP(next, fMin2, f13);
            if (sP(next)) {
                f12 += 1.0f;
            } else {
                fMax = Math.max(fMax, tkcSP.Sj);
            }
            float f14 = f12;
            fMax2 = dq2.TEQ().sP().equals("carousel") ? Math.max(dq2.uA(), tkcSP.sP) : fMax2 + tkcSP.sP;
            tkc = tkc2;
            it = it2;
            f12 = f14;
        }
        TKC tkc3 = tkc;
        if (TextUtils.equals(strLqL, "auto")) {
            if (f12 == listDNu.size()) {
                fMin2 = f10;
            } else {
                for (List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list : listDNu) {
                    TKC(list);
                    sP(list, fMax, f13);
                }
                fMin2 = fMax;
            }
        }
        if (TextUtils.equals(strLey, "auto")) {
            if (fMax2 <= f11) {
                f13 = fMax2;
            } else {
                Sj(listDNu, fMin2, f13);
            }
        } else if ((TextUtils.equals(strLey, "fixed") || TextUtils.equals(strLey, "flex")) && f13 < fMax2) {
            Sj(listDNu, fMin2, f13);
        }
        tkc3.Sj = Math.min(fMin2 + fZq, f10);
        tkc3.sP = Math.min(f13 + fUvD, f11);
        return tkc3;
    }

    public TKC Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2, float f10, float f11) {
        float f12;
        if (TextUtils.isEmpty(dq2.TEQ().TKC()) && dq2.TEQ().HiB().kb() == null) {
            return new TKC(0.0f, 0.0f);
        }
        if (TextUtils.equals(dq2.TEQ().sP(), "creative-playable-bait")) {
            return new TKC(0.0f, 0.0f);
        }
        float fDq = dq2.Dq();
        float fUA = dq2.uA();
        com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB = dq2.TEQ().HiB();
        String strLqL = vSVarHiB.LqL();
        String strLey = vSVarHiB.ley();
        float fFmk = dq2.Fmk();
        float fSef = dq2.sef();
        float fZq = dq2.Zq();
        float fUvD = dq2.uvD();
        if (TextUtils.equals(strLqL, "fixed")) {
            f10 = Math.min(fDq, f10);
            if (TextUtils.equals(strLey, "auto")) {
                f12 = sP(dq2, f10 - fZq, f11 - fUvD).sP;
                fUA = f12 + fUvD;
            }
        } else if (TextUtils.equals(strLqL, "auto")) {
            TKC tkcSP = sP(dq2, f10 - fZq, f11 - fUvD);
            f10 = tkcSP.Sj + fZq;
            if (TextUtils.equals(strLey, "auto")) {
                f12 = tkcSP.sP;
                fUA = f12 + fUvD;
            }
        } else if (!TextUtils.equals(strLqL, "flex")) {
            f10 = fDq;
        } else if (TextUtils.equals(strLey, "auto")) {
            f12 = sP(dq2, f10 - fZq, f11 - fUvD).sP;
            fUA = f12 + fUvD;
        }
        if (TextUtils.equals(strLey, "scale")) {
            float fRound = Math.round((f10 - fFmk) / fUA) + fSef;
            if (fRound > f11) {
                f10 = Math.round((f11 - fSef) * fUA) + fFmk;
            } else {
                f11 = fRound;
            }
        } else if (TextUtils.equals(strLey, "fixed")) {
            f11 = Math.min(fUA + fSef, f11);
        } else if (!TextUtils.equals(strLey, "flex")) {
            f11 = fUA;
        }
        TKC tkc = new TKC();
        tkc.Sj = f10;
        tkc.sP = f11;
        return tkc;
    }

    public TKC TKC(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2, float f10, float f11) {
        if (dq2 == null) {
            return null;
        }
        TKC tkcSj = Sj(dq2);
        if (tkcSj != null && (tkcSj.Sj != 0.0f || tkcSj.sP != 0.0f)) {
            return tkcSj;
        }
        TKC tkcEjP = EjP(dq2, f10, f11);
        Sj(dq2, tkcEjP);
        return tkcEjP;
    }

    public TKC sP(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2, float f10, float f11) {
        TKC tkc = new TKC();
        if (dq2.TEQ().HiB() == null) {
            return tkc;
        }
        TKC tkcHiB = HiB(dq2, f10, f11);
        float f12 = tkcHiB.Sj;
        float f13 = tkcHiB.sP;
        tkc.Sj = Math.min(f12, f10);
        tkc.sP = Math.min(f13, f11);
        return tkc;
    }

    private TKC TKC(List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list, float f10, float f11) {
        float fMax;
        EjP(list);
        TKC tkc = new TKC();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2 : list) {
            com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB = dq2.TEQ().HiB();
            if (vSVarHiB.EZ() == 1 || vSVarHiB.EZ() == 2) {
                arrayList.add(dq2);
            }
            if (vSVarHiB.EZ() != 1 && vSVarHiB.EZ() != 2) {
                arrayList2.add(dq2);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            TKC((com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq) it.next(), f10, f11);
        }
        if (arrayList2.size() <= 0) {
            return tkc;
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(Float.valueOf(TKC(it2.next(), f10, f11).Sj));
        }
        ArrayList arrayList4 = new ArrayList();
        int i10 = 0;
        while (true) {
            fMax = 0.0f;
            if (i10 >= arrayList2.size()) {
                break;
            }
            com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq3 = arrayList2.get(i10);
            String strLqL = dq3.TEQ().HiB().LqL();
            float fDq = dq3.Dq();
            boolean zEquals = TextUtils.equals(strLqL, "flex");
            if (TextUtils.equals(strLqL, "auto")) {
                List<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> listDNu = dq3.dNu();
                if (listDNu == null || listDNu.size() <= 0) {
                    zEquals = false;
                    break;
                }
                Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> it3 = listDNu.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        zEquals = false;
                        break;
                    }
                    if (sP(it3.next())) {
                        zEquals = true;
                        break;
                    }
                }
            }
            Sj sj2 = new Sj();
            if (!zEquals) {
                fDq = ((Float) arrayList3.get(i10)).floatValue();
            }
            sj2.Sj = fDq;
            sj2.sP = !zEquals;
            if (zEquals) {
                fMax = ((Float) arrayList3.get(i10)).floatValue();
            }
            sj2.TKC = fMax;
            arrayList4.add(sj2);
            i10++;
        }
        Sj(arrayList4, f10, arrayList2);
        List<Sj> listSj = TEQ.Sj(f10, arrayList4);
        float f12 = 0.0f;
        for (int i11 = 0; i11 < arrayList2.size(); i11++) {
            f12 += listSj.get(i11).Sj;
            if (((Float) arrayList3.get(i11)).floatValue() != listSj.get(i11).Sj) {
                EjP(arrayList2.get(i11));
            }
        }
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it4 = arrayList2.iterator();
        int i12 = 0;
        boolean z10 = false;
        while (it4.hasNext()) {
            i12++;
            if (!sP(it4.next())) {
                z10 = false;
                break;
            }
            if (i12 == arrayList2.size()) {
                z10 = true;
            }
        }
        fMax = z10 ? f11 : 0.0f;
        ArrayList arrayList5 = new ArrayList();
        for (int i13 = 0; i13 < arrayList2.size(); i13++) {
            com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq4 = arrayList2.get(i13);
            TKC TKC2 = TKC(dq4, listSj.get(i13).Sj, f11);
            if (!sP(dq4)) {
                fMax = Math.max(fMax, TKC2.sP);
            }
            arrayList5.add(TKC2);
        }
        ArrayList arrayList6 = new ArrayList();
        Iterator it5 = arrayList5.iterator();
        while (it5.hasNext()) {
            arrayList6.add(Float.valueOf(((TKC) it5.next()).sP));
        }
        if (!z10) {
            for (int i14 = 0; i14 < arrayList2.size(); i14++) {
                com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq5 = arrayList2.get(i14);
                if (sP(dq5) && ((Float) arrayList6.get(i14)).floatValue() != fMax) {
                    EjP(dq5);
                    TKC(dq5, listSj.get(i14).Sj, fMax);
                }
            }
        }
        tkc.Sj = f12;
        tkc.sP = fMax;
        return tkc;
    }

    private boolean sP(List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list) {
        List<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> listDNu;
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it = list.iterator();
        while (it.hasNext()) {
            if (TextUtils.equals(it.next().TEQ().HiB().LqL(), "flex")) {
                return true;
            }
        }
        while (true) {
            boolean z10 = false;
            for (com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2 : list) {
                if (TextUtils.equals(dq2.TEQ().HiB().LqL(), "auto") && (listDNu = dq2.dNu()) != null) {
                    Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> it2 = listDNu.iterator();
                    int i10 = 0;
                    while (true) {
                        if (it2.hasNext()) {
                            List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> next = it2.next();
                            i10++;
                            if (sP(next)) {
                                if (i10 == next.size()) {
                                    z10 = true;
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            return z10;
        }
    }

    private String HiB(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        return dq2.TKC();
    }

    private TKC sP(List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list, float f10, float f11) {
        TKC tkcSj = Sj(list);
        if (tkcSj != null && (tkcSj.Sj != 0.0f || tkcSj.sP != 0.0f)) {
            return tkcSj;
        }
        TKC TKC2 = TKC(list, f10, f11);
        Sj(list, TKC2);
        return TKC2;
    }

    private boolean sP(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        if (dq2 == null) {
            return false;
        }
        if (TextUtils.equals(dq2.TEQ().HiB().ley(), "flex")) {
            return true;
        }
        return TKC(dq2);
    }

    private TKC Sj(String str, C0198sP c0198sP, boolean z10, boolean z11, int i10, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        return Ym.Sj(str, dq2.TEQ().sP(), C0198sP.Sj(c0198sP).toString(), z10, z11, i10, dq2, this.HiB, this.vS, this.Jcg, this.Dq, this.uA);
    }

    private void Sj(List<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> list, float f10, float f11) {
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> it = list.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (Sj(it.next(), false)) {
                z10 = true;
            }
        }
        ArrayList arrayList = new ArrayList();
        for (List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list2 : list) {
            Sj sj2 = new Sj();
            boolean zSj = Sj(list2, !z10);
            sj2.Sj = zSj ? 1.0f : sP(list2, f10, f11).sP;
            sj2.sP = !zSj;
            arrayList.add(sj2);
        }
        List<Sj> listSj = TEQ.Sj(f11, arrayList);
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (((Sj) arrayList.get(i10)).Sj != listSj.get(i10).Sj) {
                List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list3 = list.get(i10);
                TKC(list3);
                sP(list3, f10, listSj.get(i10).Sj);
            }
        }
    }

    private void EjP(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        this.Sj.remove(HiB(dq2));
        List<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> listDNu = dq2.dNu();
        if (listDNu == null || listDNu.size() <= 0) {
            return;
        }
        Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> it = listDNu.iterator();
        while (it.hasNext()) {
            TKC(it.next());
        }
    }

    private String EjP(List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < list.size(); i10++) {
            String strTKC = list.get(i10).TKC();
            if (i10 < list.size() - 1) {
                sb2.append(strTKC);
                sb2.append("-");
            } else {
                sb2.append(strTKC);
            }
        }
        return sb2.toString();
    }

    private boolean Sj(List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list, boolean z10) {
        for (com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2 : list) {
            com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB = dq2.TEQ().HiB();
            String strLey = vSVarHiB.ley();
            if (TextUtils.equals(strLey, "flex") || (z10 && ((TextUtils.equals(vSVarHiB.LqL(), "flex") && TextUtils.equals(vSVarHiB.ley(), "scale") && com.bytedance.sdk.component.adexpress.dynamic.EjP.HiB.Sj.get(dq2.TEQ().sP()).intValue() == 7) || TextUtils.equals(strLey, "flex")))) {
                return true;
            }
        }
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it = list.iterator();
        while (it.hasNext()) {
            if (TKC(it.next())) {
                return true;
            }
        }
        return false;
    }

    private boolean TKC(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        List<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> listDNu;
        if (!dq2.TzV() && TextUtils.equals(dq2.TEQ().HiB().ley(), "auto") && (listDNu = dq2.dNu()) != null && listDNu.size() > 0) {
            if (listDNu.size() == 1) {
                Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it = listDNu.get(0).iterator();
                while (it.hasNext()) {
                    if (!sP(it.next())) {
                        return false;
                    }
                }
                return true;
            }
            Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>> it2 = listDNu.iterator();
            while (it2.hasNext()) {
                if (Sj(it2.next(), true)) {
                    return true;
                }
            }
        }
        return false;
    }

    private void Sj(List<Sj> list, float f10, List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list2) {
        float f11 = 0.0f;
        for (Sj sj2 : list) {
            if (sj2.sP) {
                f11 += sj2.Sj;
            }
        }
        if (f11 > f10) {
            int i10 = 0;
            for (int i11 = 0; i11 < list2.size(); i11++) {
                if (list.get(i11).sP && list2.get(i11).zR()) {
                    i10++;
                }
            }
            if (i10 > 0) {
                float fCeil = (float) (Math.ceil(((f11 - f10) / i10) * 1000.0f) / 1000.0d);
                for (int i12 = 0; i12 < list2.size(); i12++) {
                    Sj sj3 = list.get(i12);
                    if (sj3.sP && list2.get(i12).zR()) {
                        sj3.Sj -= fCeil;
                    }
                }
            }
        }
    }

    private void TKC(List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        this.sP.remove(EjP(list));
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> it = list.iterator();
        while (it.hasNext()) {
            EjP(it.next());
        }
    }

    public void Sj() {
        this.TKC.clear();
        this.Sj.clear();
        this.sP.clear();
    }

    public TKC Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        return this.Sj.get(HiB(dq2));
    }

    public TKC Sj(List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list) {
        return this.sP.get(EjP(list));
    }

    private void Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2, TKC tkc) {
        this.Sj.put(HiB(dq2), tkc);
    }

    private void Sj(List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> list, TKC tkc) {
        this.sP.put(EjP(list), tkc);
    }
}
