package com.bytedance.adsdk.sP;

import android.util.Pair;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class TzV {
    private boolean Sj = false;
    private final Set<Object> sP = new Sj();
    private final Map<String, com.bytedance.adsdk.sP.vS.EjP> TKC = new HashMap();
    private final Comparator<Pair<String, Float>> EjP = new Comparator<Pair<String, Float>>() {
        @Override
        public int compare(Pair<String, Float> pair, Pair<String, Float> pair2) {
            float fFloatValue = ((Float) pair.second).floatValue();
            float fFloatValue2 = ((Float) pair2.second).floatValue();
            if (fFloatValue2 > fFloatValue) {
                return 1;
            }
            return fFloatValue > fFloatValue2 ? -1 : 0;
        }
    };

    void Sj(boolean z10) {
        this.Sj = z10;
    }

    public void Sj(String str, float f10) {
        if (this.Sj) {
            com.bytedance.adsdk.sP.vS.EjP ejP = this.TKC.get(str);
            if (ejP == null) {
                ejP = new com.bytedance.adsdk.sP.vS.EjP();
                this.TKC.put(str, ejP);
            }
            ejP.Sj(f10);
            if (str.equals("__container")) {
                Iterator<Object> it = this.sP.iterator();
                while (it.hasNext()) {
                    it.next();
                }
            }
        }
    }
}
