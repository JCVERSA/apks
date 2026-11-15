package com.bytedance.adsdk.Sj.sP.sP.Sj;

import java.util.Map;
import org.json.JSONObject;

public class sU implements com.bytedance.adsdk.Sj.sP.sP.Sj {
    private final String Sj;

    public sU(String str) {
        this.Sj = str;
    }

    @Override
    public Object Sj(Map<String, JSONObject> map) {
        return this.Sj;
    }

    @Override
    public String sP() {
        return "'" + this.Sj + "'";
    }

    public String toString() {
        return sP();
    }

    @Override
    public com.bytedance.adsdk.Sj.sP.EjP.HiB Sj() {
        return com.bytedance.adsdk.Sj.sP.EjP.vS.STRING;
    }
}
