package com.bytedance.sdk.component.adexpress.dynamic.EjP;

import android.text.TextUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class Dq {
    private float Dq;
    private float EjP;
    private String Fmk;
    private float HiB;
    private float Jcg;
    private String Sj;
    private List<Dq> TEQ;
    private float TKC;
    private Dq Ym;

    private List<List<Dq>> f20253aa;
    private float sP;
    private boolean sef;
    private HiB uA;
    private float vS;
    private Map<String, String> Zq = new HashMap();
    private Map<Integer, String> uvD = new HashMap();

    public float Dq() {
        return this.vS;
    }

    public float EjP() {
        return this.EjP;
    }

    public int Fmk() {
        vS vSVarHiB = this.uA.HiB();
        return vSVarHiB.qRN() + vSVarHiB.UHs();
    }

    public float HiB() {
        return this.HiB;
    }

    public float Jcg() {
        return this.TKC;
    }

    public boolean RiZ() {
        return this.sef;
    }

    public String Sj() {
        return this.Fmk;
    }

    public HiB TEQ() {
        return this.uA;
    }

    public String TKC() {
        return this.Sj;
    }

    public boolean TzV() {
        List<Dq> list = this.TEQ;
        return list == null || list.size() <= 0;
    }

    public List<Dq> Ym() {
        return this.TEQ;
    }

    public float Zq() {
        vS vSVarHiB = this.uA.HiB();
        return Fmk() + vSVarHiB.Zq() + vSVarHiB.uvD() + (vSVarHiB.aa() * 2.0f);
    }

    public Dq aa() {
        return this.Ym;
    }

    public List<List<Dq>> dNu() {
        return this.f20253aa;
    }

    public void dx() {
        List<List<Dq>> list = this.f20253aa;
        if (list == null || list.size() <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (List<Dq> list2 : this.f20253aa) {
            if (list2 != null && list2.size() > 0) {
                arrayList.add(list2);
            }
        }
        this.f20253aa = arrayList;
    }

    public String ib() {
        return this.uA.HiB().ib();
    }

    public boolean kF() {
        return this.uA.HiB().TFd() < 0 || this.uA.HiB().mZN() < 0 || this.uA.HiB().HS() < 0 || this.uA.HiB().tz() < 0;
    }

    public Map<Integer, String> sP() {
        return this.uvD;
    }

    public Map<String, String> sU() {
        return this.Zq;
    }

    public int sef() {
        vS vSVarHiB = this.uA.HiB();
        return vSVarHiB.db() + vSVarHiB.ndK();
    }

    public String toString() {
        return "DynamicLayoutUnit{id='" + this.Sj + "', x=" + this.sP + ", y=" + this.TKC + ", width=" + this.vS + ", height=" + this.Jcg + ", remainWidth=" + this.Dq + ", rootBrick=" + this.uA + ", childrenBrickUnits=" + this.TEQ + '}';
    }

    public float uA() {
        return this.Jcg;
    }

    public float uvD() {
        vS vSVarHiB = this.uA.HiB();
        return sef() + vSVarHiB.dNu() + vSVarHiB.sef() + (vSVarHiB.aa() * 2.0f);
    }

    public float vS() {
        return this.sP;
    }

    public boolean zR() {
        return TextUtils.equals(this.uA.HiB().LqL(), "flex");
    }

    public void EjP(float f10) {
        this.TKC = f10;
    }

    public void HiB(float f10) {
        this.vS = f10;
    }

    public void Jcg(float f10) {
        this.Dq = f10;
    }

    public void Sj(String str) {
        this.Fmk = str;
    }

    public void TKC(float f10) {
        this.sP = f10;
    }

    public void sP(String str) {
        this.Sj = str;
    }

    public void vS(float f10) {
        this.Jcg = f10;
    }

    public void Sj(JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                if (jSONArray.length() == 0) {
                    return;
                }
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                    this.uvD.put(Integer.valueOf(jSONObjectOptJSONObject.optInt("id")), jSONObjectOptJSONObject.optString(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void TKC(String str) {
        this.uA.HiB().vS(str);
    }

    public void sP(float f10) {
        this.HiB = f10;
    }

    public void sP(List<List<Dq>> list) {
        this.f20253aa = list;
    }

    public void Sj(float f10) {
        this.EjP = f10;
    }

    public void Sj(HiB hiB) {
        this.uA = hiB;
    }

    public void Sj(List<Dq> list) {
        this.TEQ = list;
    }

    public void Sj(Dq dq2) {
        this.Ym = dq2;
    }

    public void Sj(boolean z10) {
        this.sef = z10;
    }

    public void Sj(String str, String str2) {
        this.Zq.put(str, str2);
    }

    public String Sj(int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.uA.sP());
        sb2.append(":");
        sb2.append(this.Sj);
        if (this.uA.HiB() != null) {
            sb2.append(":");
            sb2.append(this.uA.HiB().mj());
        }
        sb2.append(":");
        sb2.append(i10);
        return sb2.toString();
    }
}
