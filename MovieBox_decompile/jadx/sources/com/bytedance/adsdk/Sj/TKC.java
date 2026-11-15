package com.bytedance.adsdk.Sj;

import android.text.TextUtils;
import org.json.JSONObject;

public class TKC implements vS {
    @Override
    public Object Sj(JSONObject jSONObject, Object[] objArr) {
        if (objArr != null && objArr.length > 0) {
            for (Object obj : objArr) {
                String strValueOf = String.valueOf(obj);
                if (!TextUtils.isEmpty(strValueOf) && !TextUtils.equals(strValueOf, "null")) {
                    return strValueOf;
                }
            }
        }
        return null;
    }
}
