package com.bytedance.adsdk.sP;

import android.graphics.Rect;
import android.util.LongSparseArray;
import android.util.SparseArray;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

public class Jcg {
    private LongSparseArray<com.bytedance.adsdk.sP.TKC.TKC.HiB> Dq;
    private Map<String, TEQ> EjP;
    private float Fmk;
    private Map<String, com.bytedance.adsdk.sP.TKC.TKC> HiB;
    private SparseArray<com.bytedance.adsdk.sP.TKC.EjP> Jcg;
    private sP RiZ;
    private Rect TEQ;
    private Map<String, List<com.bytedance.adsdk.sP.TKC.TKC.HiB>> TKC;
    private Sj TzV;
    private float Ym;

    private float f20152aa;
    private boolean sef;
    private List<com.bytedance.adsdk.sP.TKC.TKC.HiB> uA;
    private TKC uvD;
    private List<com.bytedance.adsdk.sP.TKC.vS> vS;
    private final TzV Sj = new TzV();
    private final HashSet<String> sP = new HashSet<>();
    private int Zq = 0;
    private String dNu = "";

    public static class Sj {
        public int EjP;
        public int HiB;
        public JSONArray Jcg;
        public int Sj;
        public Map<String, Object> TKC;
        public Map<String, Object> sP;
        public String vS;
    }

    public static class TKC {
        public String EjP;
        public int[] HiB;
        public JSONArray Jcg;
        public int Sj;
        public String TKC;
        public String sP;
        public String vS;
    }

    public static class sP {
        public String Sj;
        public JSONArray TKC;
        public int[][] sP;
    }

    public TKC Dq() {
        return this.uvD;
    }

    public Rect EjP() {
        return this.TEQ;
    }

    public List<com.bytedance.adsdk.sP.TKC.TKC.HiB> Fmk() {
        return this.uA;
    }

    public float HiB() {
        return (long) ((dNu() / this.Fmk) * 1000.0f);
    }

    public float Jcg() {
        return this.f20152aa;
    }

    public void Sj(Rect rect, float f10, float f11, float f12, List<com.bytedance.adsdk.sP.TKC.TKC.HiB> list, LongSparseArray<com.bytedance.adsdk.sP.TKC.TKC.HiB> longSparseArray, Map<String, List<com.bytedance.adsdk.sP.TKC.TKC.HiB>> map, Map<String, TEQ> map2, SparseArray<com.bytedance.adsdk.sP.TKC.EjP> sparseArray, Map<String, com.bytedance.adsdk.sP.TKC.TKC> map3, List<com.bytedance.adsdk.sP.TKC.vS> list2, TKC tkc, String str, Sj sj2, sP sPVar) {
        this.TEQ = rect;
        this.Ym = f10;
        this.f20152aa = f11;
        this.Fmk = f12;
        this.uA = list;
        this.Dq = longSparseArray;
        this.TKC = map;
        this.EjP = map2;
        this.Jcg = sparseArray;
        this.HiB = map3;
        this.vS = list2;
        this.uvD = tkc;
        this.dNu = str;
        this.TzV = sj2;
        this.RiZ = sPVar;
    }

    public sP TEQ() {
        return this.RiZ;
    }

    public TzV TKC() {
        return this.Sj;
    }

    public Sj Ym() {
        return this.TzV;
    }

    public Map<String, com.bytedance.adsdk.sP.TKC.TKC> Zq() {
        return this.HiB;
    }

    public float aa() {
        return this.Fmk;
    }

    public float dNu() {
        return this.f20152aa - this.Ym;
    }

    public int sP() {
        return this.Zq;
    }

    public SparseArray<com.bytedance.adsdk.sP.TKC.EjP> sef() {
        return this.Jcg;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("LottieComposition:\n");
        Iterator<com.bytedance.adsdk.sP.TKC.TKC.HiB> it = this.uA.iterator();
        while (it.hasNext()) {
            sb2.append(it.next().Sj("\t"));
        }
        return sb2.toString();
    }

    public String uA() {
        return this.dNu;
    }

    public Map<String, TEQ> uvD() {
        return this.EjP;
    }

    public float vS() {
        return this.Ym;
    }

    public com.bytedance.adsdk.sP.TKC.vS TKC(String str) {
        int size = this.vS.size();
        for (int i10 = 0; i10 < size; i10++) {
            com.bytedance.adsdk.sP.TKC.vS vSVar = this.vS.get(i10);
            if (vSVar.Sj(str)) {
                return vSVar;
            }
        }
        return null;
    }

    public void sP(boolean z10) {
        this.Sj.Sj(z10);
    }

    public List<com.bytedance.adsdk.sP.TKC.TKC.HiB> sP(String str) {
        return this.TKC.get(str);
    }

    public void Sj(String str) {
        this.sP.add(str);
    }

    public void Sj(boolean z10) {
        this.sef = z10;
    }

    public void Sj(int i10) {
        this.Zq += i10;
    }

    public boolean Sj() {
        return this.sef;
    }

    public com.bytedance.adsdk.sP.TKC.TKC.HiB Sj(long j10) {
        return this.Dq.get(j10);
    }

    public float Sj(float f10) {
        return com.bytedance.adsdk.sP.vS.HiB.Sj(this.Ym, this.f20152aa, f10);
    }
}
