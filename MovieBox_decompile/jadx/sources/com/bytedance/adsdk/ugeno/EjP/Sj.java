package com.bytedance.adsdk.ugeno.EjP;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

public class Sj implements Dq {
    @Override
    public List<Jcg> Sj() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Jcg("slide") {
            @Override
            public com.bytedance.adsdk.ugeno.EjP.EjP.Sj Sj(Context context) {
                return new com.bytedance.adsdk.ugeno.EjP.EjP.TKC(context);
            }
        });
        arrayList.add(new Jcg("tap") {
            @Override
            public com.bytedance.adsdk.ugeno.EjP.EjP.Sj Sj(Context context) {
                return new com.bytedance.adsdk.ugeno.EjP.EjP.Jcg(context);
            }
        });
        arrayList.add(new Jcg("timer") {
            @Override
            public com.bytedance.adsdk.ugeno.EjP.EjP.Sj Sj(Context context) {
                return new com.bytedance.adsdk.ugeno.EjP.EjP.Dq(context);
            }
        });
        arrayList.add(new Jcg("videoProgress") {
            @Override
            public com.bytedance.adsdk.ugeno.EjP.EjP.Sj Sj(Context context) {
                return new com.bytedance.adsdk.ugeno.EjP.EjP.uA(context);
            }
        });
        return arrayList;
    }
}
