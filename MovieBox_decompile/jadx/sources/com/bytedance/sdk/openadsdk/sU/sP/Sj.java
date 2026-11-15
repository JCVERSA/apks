package com.bytedance.sdk.openadsdk.sU.sP;

import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Sj {
    private String Sj;
    private List<C0269Sj> TKC;
    private List<C0269Sj> sP;

    public static class C0269Sj {
        private String Sj;
        private int TKC;
        private String sP;

        public boolean equals(Object obj) {
            String str;
            if (!(obj instanceof C0269Sj)) {
                return super.equals(obj);
            }
            String str2 = this.Sj;
            if (str2 != null) {
                C0269Sj c0269Sj = (C0269Sj) obj;
                if (str2.equals(c0269Sj.Sj) && (str = this.sP) != null && str.equals(c0269Sj.sP)) {
                    return true;
                }
            }
            return false;
        }

        public static C0269Sj Sj(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            C0269Sj c0269Sj = new C0269Sj();
            c0269Sj.Sj = jSONObject.optString("url");
            c0269Sj.sP = jSONObject.optString("md5");
            c0269Sj.TKC = jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
            return c0269Sj;
        }

        public String Sj() {
            return this.Sj;
        }
    }

    public void Sj(String str) {
        this.Sj = str;
    }

    public List<C0269Sj> TKC() {
        return this.TKC;
    }

    public void sP(List<C0269Sj> list) {
        this.TKC = list;
    }

    public void Sj(List<C0269Sj> list) {
        this.sP = list;
    }

    public List<C0269Sj> sP() {
        return this.sP;
    }

    public static Sj sP(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            Sj sj2 = new Sj();
            sj2.Sj(jSONObject.optString("version"));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("resources");
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    C0269Sj c0269SjSj = C0269Sj.Sj(jSONArrayOptJSONArray.optJSONObject(i10));
                    if (c0269SjSj != null) {
                        if (c0269SjSj.TKC != 1) {
                            if (c0269SjSj.TKC == 2 && arrayList2.size() < 10) {
                                arrayList2.add(c0269SjSj);
                            }
                        } else {
                            arrayList.add(c0269SjSj);
                        }
                    }
                }
            }
            sj2.Sj(arrayList);
            sj2.sP(arrayList2);
            return sj2;
        } catch (JSONException unused) {
            return null;
        }
    }

    public String Sj() {
        return this.Sj;
    }
}
