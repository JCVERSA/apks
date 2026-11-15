package com.bytedance.adsdk.ugeno.EjP.Sj;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class sP implements TKC {
    private List<EjP> Sj = new CopyOnWriteArrayList();

    @Override
    public void Sj(EjP ejP) {
        this.Sj.add(ejP);
    }

    @Override
    public void Sj(String str) {
        if (this.Sj.isEmpty()) {
            return;
        }
        Iterator<EjP> it = this.Sj.iterator();
        while (it.hasNext()) {
            it.next().Sj(str);
        }
    }
}
