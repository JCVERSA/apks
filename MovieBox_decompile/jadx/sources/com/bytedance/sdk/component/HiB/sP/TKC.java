package com.bytedance.sdk.component.HiB.sP;

import com.bytedance.sdk.component.HiB.Jcg;
import com.bytedance.sdk.component.HiB.vS;
import java.util.Map;

public class TKC<T> implements vS {
    private String EjP;
    private Jcg HiB;
    Map<String, String> Sj;
    private T TKC;
    private int sP;

    public TKC(int i10, T t10, String str) {
        this.sP = i10;
        this.TKC = t10;
        this.EjP = str;
    }

    @Override
    public String EjP() {
        return this.EjP;
    }

    @Override
    public Map<String, String> HiB() {
        return this.Sj;
    }

    @Override
    public Jcg Sj() {
        return this.HiB;
    }

    @Override
    public T TKC() {
        return this.TKC;
    }

    @Override
    public int sP() {
        return this.sP;
    }

    public void Sj(Jcg jcg) {
        this.HiB = jcg;
    }

    public TKC(int i10, T t10, String str, Map<String, String> map) {
        this(i10, t10, str);
        this.Sj = map;
    }
}
