package com.bytedance.adsdk.Sj.sP.sP.Sj;

import java.util.Map;
import org.json.JSONObject;

public class uA extends dNu {
    public uA() {
        super(com.bytedance.adsdk.Sj.sP.EjP.TKC.LT);
    }

    @Override
    public Object Sj(Map<String, JSONObject> map) {
        Object objSj;
        Object objSj2 = this.Sj.Sj(map);
        if (objSj2 == null || (objSj = this.sP.Sj(map)) == null) {
            return null;
        }
        return com.bytedance.adsdk.Sj.sP.HiB.Sj.EjP.Sj(objSj2, (Number) objSj);
    }
}
