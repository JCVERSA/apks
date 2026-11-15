package com.bytedance.adsdk.Sj.sP.sP.Sj;

import java.util.Map;
import org.json.JSONObject;

public class TzV extends dNu {
    private static final ThreadLocal<StringBuilder> EjP = new ThreadLocal<StringBuilder>() {
        @Override
        public StringBuilder initialValue() {
            return new StringBuilder();
        }
    };

    public TzV() {
        super(com.bytedance.adsdk.Sj.sP.EjP.TKC.PLUS);
    }

    @Override
    public Object Sj(Map<String, JSONObject> map) {
        Object objSj;
        Object objSj2 = this.Sj.Sj(map);
        if (objSj2 == null || (objSj = this.sP.Sj(map)) == null) {
            return null;
        }
        if (!(objSj2 instanceof String) && !(objSj instanceof String)) {
            return com.bytedance.adsdk.Sj.sP.HiB.Sj.Dq.Sj((Number) objSj2, (Number) objSj);
        }
        StringBuilder sb2 = EjP.get();
        sb2.append(objSj2);
        sb2.append(objSj);
        String string = sb2.toString();
        sb2.setLength(0);
        return string;
    }
}
