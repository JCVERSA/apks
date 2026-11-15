package com.bytedance.sdk.component.adexpress.dynamic.EjP;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class TKC {
    private HashMap<String, Object> Sj = new HashMap<>();
    private JSONObject sP;

    public TKC(JSONObject jSONObject) {
        this.sP = jSONObject;
    }

    public Object Sj(String str) {
        if (this.Sj.containsKey(str)) {
            return this.Sj.get(str);
        }
        return null;
    }

    public boolean sP(String str) {
        return this.Sj.containsKey(str);
    }

    public void Sj() {
        Iterator<String> itKeys = this.sP.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objOpt = this.sP.opt(next);
            int i10 = 0;
            if (TextUtils.equals("image", next)) {
                if (objOpt instanceof JSONArray) {
                    while (true) {
                        JSONArray jSONArray = (JSONArray) objOpt;
                        if (i10 < jSONArray.length()) {
                            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                            if (jSONObjectOptJSONObject != null) {
                                Iterator<String> itKeys2 = jSONObjectOptJSONObject.keys();
                                while (itKeys2.hasNext()) {
                                    String next2 = itKeys2.next();
                                    Object objOpt2 = jSONObjectOptJSONObject.opt(next2);
                                    this.Sj.put(next + "." + i10 + "." + next2, objOpt2);
                                }
                            }
                            i10++;
                        }
                    }
                }
            } else if (TextUtils.equals("dynamic_creative", next)) {
                if (objOpt instanceof String) {
                    try {
                        JSONObject jSONObject = new JSONObject((String) objOpt);
                        Iterator<String> itKeys3 = jSONObject.keys();
                        while (itKeys3.hasNext()) {
                            String next3 = itKeys3.next();
                            Object objOpt3 = jSONObject.opt(next3);
                            if ((objOpt3 instanceof JSONArray) && !TextUtils.equals(next3, "short_phrase") && !TextUtils.equals(next3, "long_phrase")) {
                                for (int i11 = 0; i11 < ((JSONArray) objOpt3).length(); i11++) {
                                    this.Sj.put(next + "." + next3 + "." + i11, ((JSONArray) objOpt3).opt(i11));
                                }
                            } else if ((objOpt3 instanceof JSONObject) && TextUtils.equals(next3, "coupon")) {
                                Iterator<String> itKeys4 = ((JSONObject) objOpt3).keys();
                                while (itKeys4.hasNext()) {
                                    String next4 = itKeys4.next();
                                    Object objOpt4 = ((JSONObject) objOpt3).opt(next4);
                                    this.Sj.put(next + "." + next3 + "." + next4, objOpt4);
                                }
                            } else if ((objOpt3 instanceof JSONObject) && TextUtils.equals(next3, "live_room_data")) {
                                Sj(next, next3, objOpt3);
                            } else {
                                this.Sj.put(next + "." + next3, objOpt3);
                            }
                        }
                    } catch (JSONException unused) {
                    }
                }
            } else if (!(objOpt instanceof JSONObject)) {
                this.Sj.put(next, objOpt);
                if (objOpt instanceof String) {
                    this.Sj.put(next, objOpt);
                }
            } else if (objOpt != null) {
                JSONObject jSONObject2 = (JSONObject) objOpt;
                Iterator<String> itKeys5 = jSONObject2.keys();
                while (itKeys5.hasNext()) {
                    String next5 = itKeys5.next();
                    Object objOpt5 = jSONObject2.opt(next5);
                    this.Sj.put(next + "." + next5, objOpt5);
                }
            }
        }
    }

    private void Sj(String str, String str2, Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objOpt = jSONObject.opt(next);
            if ((objOpt instanceof JSONArray) && TextUtils.equals(next, "product_infos")) {
                int i10 = 0;
                while (true) {
                    JSONArray jSONArray = (JSONArray) objOpt;
                    if (i10 < jSONArray.length()) {
                        JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                        Iterator<String> itKeys2 = jSONObjectOptJSONObject.keys();
                        while (itKeys2.hasNext()) {
                            String next2 = itKeys2.next();
                            Object objOpt2 = jSONObjectOptJSONObject.opt(next2);
                            this.Sj.put(str + "." + str2 + "." + next + "." + i10 + "." + next2, objOpt2);
                        }
                        i10++;
                    }
                }
            } else {
                this.Sj.put(str + "." + str2 + "." + next, objOpt);
            }
        }
    }
}
