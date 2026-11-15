package com.bytedance.adsdk.Sj.sP.sP.Sj;

import android.text.TextUtils;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class zR implements com.bytedance.adsdk.Sj.sP.sP.Sj {
    private final String Sj;

    public zR(String str) {
        this.Sj = str;
    }

    @Override
    public Object Sj(Map<String, JSONObject> map) {
        Object objSj;
        if (map == null || map.size() <= 0 || (objSj = Sj(this.Sj, map.get("default_key"))) == JSONObject.NULL) {
            return null;
        }
        return objSj;
    }

    @Override
    public String sP() {
        return this.Sj;
    }

    public String toString() {
        return "VariableNode [literals=" + this.Sj + "]";
    }

    @Override
    public com.bytedance.adsdk.Sj.sP.EjP.HiB Sj() {
        return com.bytedance.adsdk.Sj.sP.EjP.vS.VARIABLE;
    }

    public Object Sj(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return Sj(str.split("\\."), 0, jSONObject);
    }

    private Object Sj(String[] strArr, int i10, JSONObject jSONObject) {
        Object objOpt;
        if (strArr != null && strArr.length > 0 && i10 < strArr.length && jSONObject != null) {
            String str = strArr[i10];
            int iIndexOf = str.indexOf("[");
            int iIndexOf2 = str.indexOf("]");
            if (iIndexOf >= 0 && iIndexOf2 >= 0 && iIndexOf <= iIndexOf2) {
                String strSubstring = str.substring(0, iIndexOf);
                try {
                    int i11 = Integer.parseInt(str.substring(iIndexOf + 1, iIndexOf2));
                    Object objOpt2 = jSONObject.opt(strSubstring);
                    objOpt = objOpt2 instanceof JSONArray ? ((JSONArray) objOpt2).opt(i11) : null;
                } catch (NumberFormatException unused) {
                    return null;
                }
            } else {
                objOpt = jSONObject.opt(str);
            }
            if (i10 == strArr.length - 1) {
                return objOpt;
            }
            if (objOpt instanceof String) {
                try {
                    return Sj(strArr, i10 + 1, new JSONObject((String) objOpt));
                } catch (JSONException unused2) {
                    return objOpt;
                }
            }
            if (objOpt instanceof JSONObject) {
                return Sj(strArr, i10 + 1, (JSONObject) objOpt);
            }
        }
        return null;
    }
}
