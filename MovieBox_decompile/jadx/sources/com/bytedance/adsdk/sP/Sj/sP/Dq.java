package com.bytedance.adsdk.sP.Sj.sP;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

public class Dq {
    private final List<Sj<com.bytedance.adsdk.sP.TKC.sP.sef, Path>> Sj;
    private final List<com.bytedance.adsdk.sP.TKC.sP.Dq> TKC;
    private final List<Sj<Integer, Integer>> sP;

    public Dq(List<com.bytedance.adsdk.sP.TKC.sP.Dq> list) {
        this.TKC = list;
        this.Sj = new ArrayList(list.size());
        this.sP = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.Sj.add(list.get(i10).sP().Sj());
            this.sP.add(list.get(i10).TKC().Sj());
        }
    }

    public List<com.bytedance.adsdk.sP.TKC.sP.Dq> Sj() {
        return this.TKC;
    }

    public List<Sj<Integer, Integer>> TKC() {
        return this.sP;
    }

    public List<Sj<com.bytedance.adsdk.sP.TKC.sP.sef, Path>> sP() {
        return this.Sj;
    }
}
