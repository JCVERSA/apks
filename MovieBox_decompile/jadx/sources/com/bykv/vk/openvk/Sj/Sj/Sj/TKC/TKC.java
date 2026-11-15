package com.bykv.vk.openvk.Sj.Sj.Sj.TKC;

import a6.b;
import android.os.Build;
import android.text.TextUtils;
import java.io.Serializable;
import java.util.HashMap;
import org.json.JSONObject;

public class TKC implements Serializable {
    public int EjP;
    private int Fmk;
    private b HiB;
    private String Jcg;
    private int RiZ;
    public String Sj;
    private int TzV;
    private String Ym;
    private long Zq;

    private int f19535aa;
    private boolean dNu;
    public int sP;
    private String sef;
    private boolean uvD;
    private b vS;
    private int Dq = 204800;
    private int uA = 0;
    private int TEQ = 0;
    public final HashMap<String, Object> TKC = new HashMap<>();
    private int sU = 10000;

    private int f19536dx = 10000;
    private int zR = 10000;

    private int f19537ib = 0;
    private JSONObject kF = new JSONObject();

    public TKC(String str, b bVar, b bVar2, int i10, int i11) {
        this.TzV = 0;
        this.RiZ = 0;
        this.Jcg = str;
        this.HiB = bVar;
        this.vS = bVar2;
        this.TzV = i10;
        this.RiZ = i11;
    }

    public boolean Dq() {
        return this.uvD;
    }

    public boolean EjP() {
        return this.dNu;
    }

    public String Fmk() {
        if (Ym()) {
            return this.vS.x();
        }
        b bVar = this.HiB;
        if (bVar != null) {
            return bVar.x();
        }
        return null;
    }

    public int HiB() {
        return this.f19535aa;
    }

    public long Jcg() {
        return this.Zq;
    }

    public int RiZ() {
        return this.f19537ib;
    }

    public int Sj() {
        return this.kF.optInt("pitaya_cache_size", 0);
    }

    public boolean TEQ() {
        if (Ym()) {
            return this.vS.B();
        }
        b bVar = this.HiB;
        if (bVar != null) {
            return bVar.B();
        }
        return true;
    }

    public int TKC() {
        if (Ym()) {
            return this.vS.y();
        }
        b bVar = this.HiB;
        if (bVar != null) {
            return bVar.y();
        }
        return 0;
    }

    public int TzV() {
        return this.zR;
    }

    public boolean Ym() {
        b bVar;
        if (this.RiZ == 1 && (bVar = this.vS) != null && !TextUtils.isEmpty(bVar.x())) {
            if (v5.b.j() == 2) {
                if (Build.VERSION.SDK_INT >= 26) {
                    return true;
                }
            } else if (this.TzV == 1) {
                return true;
            }
        }
        return false;
    }

    public int Zq() {
        return this.TzV;
    }

    public float aa() {
        if (Ym()) {
            return this.vS.a();
        }
        b bVar = this.HiB;
        if (bVar != null) {
            return bVar.a();
        }
        return -1.0f;
    }

    public int dNu() {
        return this.f19536dx;
    }

    public b dx() {
        return this.vS;
    }

    public String sP() {
        return this.Jcg;
    }

    public b sU() {
        return this.HiB;
    }

    public String sef() {
        if (Ym()) {
            return this.vS.G();
        }
        b bVar = this.HiB;
        if (bVar != null) {
            return bVar.G();
        }
        return null;
    }

    public long uA() {
        if (Ym()) {
            return this.vS.g();
        }
        b bVar = this.HiB;
        if (bVar != null) {
            return bVar.g();
        }
        return 0L;
    }

    public int uvD() {
        return this.sU;
    }

    public int vS() {
        return this.Fmk;
    }

    public void EjP(String str) {
        this.Sj = str;
    }

    public synchronized Object HiB(String str) {
        return this.TKC.get(str);
    }

    public void Jcg(int i10) {
        this.f19537ib = i10;
    }

    public void Sj(String str) {
        this.Jcg = str;
    }

    public void sP(String str) {
        this.Ym = str;
    }

    public void vS(int i10) {
        this.zR = i10;
    }

    public void EjP(int i10) {
        this.sU = i10;
    }

    public void HiB(int i10) {
        this.f19536dx = i10;
    }

    public void Sj(int i10) {
        this.f19535aa = i10;
    }

    public void sP(int i10) {
        this.Fmk = i10;
    }

    public void Sj(long j10) {
        this.Zq = j10;
    }

    public void Sj(boolean z10) {
        this.uvD = z10;
    }

    public void TKC(String str) {
        this.sef = str;
    }

    public synchronized void Sj(String str, Object obj) {
        this.TKC.put(str, obj);
    }

    public void TKC(int i10) {
        this.sP = i10;
    }
}
