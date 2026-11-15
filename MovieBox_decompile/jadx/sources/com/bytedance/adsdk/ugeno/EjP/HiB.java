package com.bytedance.adsdk.ugeno.EjP;

import java.util.ArrayList;
import java.util.List;

public class HiB implements TKC {
    @Override
    public List<sP> Sj() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new sP("update") {
            @Override
            public com.bytedance.adsdk.ugeno.EjP.sP.Sj Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, String str, vS.Sj sj2) {
                return new com.bytedance.adsdk.ugeno.EjP.sP.EjP(tkc, str, sj2);
            }
        });
        arrayList.add(new sP("emit") {
            @Override
            public com.bytedance.adsdk.ugeno.EjP.sP.Sj Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, String str, vS.Sj sj2) {
                return new com.bytedance.adsdk.ugeno.EjP.sP.sP(tkc, str, sj2);
            }
        });
        return arrayList;
    }
}
