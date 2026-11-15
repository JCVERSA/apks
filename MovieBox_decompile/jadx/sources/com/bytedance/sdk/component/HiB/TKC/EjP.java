package com.bytedance.sdk.component.HiB.TKC;

import com.bytedance.sdk.component.HiB.Ym;
import java.util.Map;

public class EjP<T> implements Ym {
    private boolean Dq;
    private T EjP;
    private int HiB;
    private Map<String, String> Jcg;
    private String Sj;
    private com.bytedance.sdk.component.HiB.Jcg TEQ;
    private T TKC;
    private int Ym;
    private String sP;
    private boolean uA;
    private int vS;

    @Override
    public Map<String, String> EjP() {
        return this.Jcg;
    }

    @Override
    public boolean HiB() {
        return this.Dq;
    }

    @Override
    public int Jcg() {
        return this.Ym;
    }

    public EjP Sj(TKC tkc, T t10) {
        this.TKC = t10;
        this.Sj = tkc.TEQ();
        this.sP = tkc.Sj();
        this.HiB = tkc.sP();
        this.vS = tkc.TKC();
        this.uA = tkc.Zq();
        this.TEQ = tkc.uvD();
        this.Ym = tkc.dNu();
        return this;
    }

    @Override
    public T TKC() {
        return this.EjP;
    }

    @Override
    public T sP() {
        return this.TKC;
    }

    @Override
    public boolean vS() {
        return this.uA;
    }

    public EjP Sj(TKC tkc, T t10, Map<String, String> map, boolean z10) {
        this.Jcg = map;
        this.Dq = z10;
        return Sj(tkc, t10);
    }

    @Override
    public String Sj() {
        return this.sP;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void Sj(Object obj) {
        this.EjP = this.TKC;
        this.TKC = obj;
    }
}
