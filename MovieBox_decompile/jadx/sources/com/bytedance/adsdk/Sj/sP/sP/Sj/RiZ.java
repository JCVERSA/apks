package com.bytedance.adsdk.Sj.sP.sP.Sj;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.Map;
import org.json.JSONObject;

public class RiZ implements com.bytedance.adsdk.Sj.sP.sP.sP {
    private com.bytedance.adsdk.Sj.sP.sP.Sj Sj;
    private com.bytedance.adsdk.Sj.sP.sP.Sj TKC;
    private com.bytedance.adsdk.Sj.sP.sP.Sj sP;

    @Override
    public Object Sj(Map<String, JSONObject> map) {
        Object objSj = this.Sj.Sj(map);
        if (objSj == null) {
            return null;
        }
        return ((Boolean) objSj).booleanValue() ? this.sP.Sj(map) : this.TKC.Sj(map);
    }

    @Override
    public void TKC(com.bytedance.adsdk.Sj.sP.sP.Sj sj2) {
        this.TKC = sj2;
    }

    @Override
    public void sP(com.bytedance.adsdk.Sj.sP.sP.Sj sj2) {
        this.sP = sj2;
    }

    public String toString() {
        return sP();
    }

    @Override
    public String sP() {
        return this.Sj.sP() + UrlUtils.QUESTION_MARK + this.sP.sP() + ":" + this.TKC.sP();
    }

    @Override
    public com.bytedance.adsdk.Sj.sP.EjP.HiB Sj() {
        return com.bytedance.adsdk.Sj.sP.EjP.vS.OPERATOR_RESULT;
    }

    @Override
    public void Sj(com.bytedance.adsdk.Sj.sP.sP.Sj sj2) {
        this.Sj = sj2;
    }
}
