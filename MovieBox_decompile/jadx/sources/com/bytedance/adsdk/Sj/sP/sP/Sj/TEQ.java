package com.bytedance.adsdk.Sj.sP.sP.Sj;

import java.util.Map;
import org.json.JSONObject;

public class TEQ implements com.bytedance.adsdk.Sj.sP.sP.Sj {
    private com.bytedance.adsdk.Sj.sP.sP.Sj[] Sj;
    private com.bytedance.adsdk.Sj.sP.Sj.Sj TKC;
    private String sP;

    public TEQ(String str) {
        this.sP = str;
    }

    public void Sj(com.bytedance.adsdk.Sj.sP.sP.Sj[] sjArr) {
        this.Sj = sjArr;
    }

    @Override
    public String sP() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.sP);
        sb2.append("(");
        com.bytedance.adsdk.Sj.sP.sP.Sj[] sjArr = this.Sj;
        if (sjArr != null && sjArr.length > 0) {
            int i10 = 0;
            while (true) {
                com.bytedance.adsdk.Sj.sP.sP.Sj[] sjArr2 = this.Sj;
                if (i10 >= sjArr2.length) {
                    break;
                }
                sb2.append(sjArr2[i10].sP());
                sb2.append(",");
                i10++;
            }
        }
        sb2.append(")");
        return sb2.toString();
    }

    @Override
    public Object Sj(Map<String, JSONObject> map) {
        com.bytedance.adsdk.Sj.sP.Sj.Sj sj2 = new com.bytedance.adsdk.Sj.sP.Sj.Sj();
        this.TKC = sj2;
        sj2.Sj(this.sP);
        Object[] objArr = new Object[this.Sj.length];
        int i10 = 0;
        while (true) {
            com.bytedance.adsdk.Sj.sP.sP.Sj[] sjArr = this.Sj;
            if (i10 >= sjArr.length) {
                this.TKC.Sj(objArr);
                return com.bytedance.adsdk.Sj.Dq.Sj(this.sP).Sj(map.get("default_key"), objArr);
            }
            com.bytedance.adsdk.Sj.sP.sP.Sj sj3 = sjArr[i10];
            if (sj3 != null) {
                objArr[i10] = sj3.Sj(map);
            }
            i10++;
        }
    }

    @Override
    public com.bytedance.adsdk.Sj.sP.EjP.HiB Sj() {
        return com.bytedance.adsdk.Sj.sP.EjP.sP.METHOD;
    }
}
