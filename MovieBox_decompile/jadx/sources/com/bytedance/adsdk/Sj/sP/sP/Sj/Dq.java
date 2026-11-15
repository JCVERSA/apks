package com.bytedance.adsdk.Sj.sP.sP.Sj;

import java.util.Map;
import org.json.JSONObject;

public class Dq extends dNu {
    public Dq() {
        super(com.bytedance.adsdk.Sj.sP.EjP.TKC.LT_EQ);
    }

    @Override
    public Object Sj(Map<String, JSONObject> map) {
        Object objSj;
        Object objSj2 = this.Sj.Sj(map);
        if (objSj2 == null || (objSj = this.sP.Sj(map)) == null) {
            return null;
        }
        return Boolean.valueOf(!((Boolean) com.bytedance.adsdk.Sj.sP.HiB.Sj.TKC.Sj(objSj2, (Number) objSj)).booleanValue());
    }
}
