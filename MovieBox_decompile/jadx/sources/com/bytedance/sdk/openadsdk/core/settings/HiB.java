package com.bytedance.sdk.openadsdk.core.settings;

import com.bytedance.sdk.component.utils.sU;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public interface HiB {
    public static final sP<JSONObject> Sj = new sP<JSONObject>() {
        @Override
        public JSONObject sP(String str) {
            try {
                return new JSONObject(str);
            } catch (Exception e10) {
                sU.Sj("ISettingsDataRepository", "", e10);
                return null;
            }
        }
    };
    public static final sP<Set<String>> sP = new sP<Set<String>>() {
        @Override
        public Set<String> sP(String str) {
            HashSet hashSet = new HashSet();
            try {
                JSONArray jSONArray = new JSONArray(str);
                int length = jSONArray.length();
                for (int i10 = 0; i10 < length; i10++) {
                    hashSet.add(jSONArray.getString(i10));
                }
            } catch (Exception e10) {
                sU.Sj("ISettingsDataRepository", "", e10);
            }
            return hashSet;
        }
    };

    public interface Sj {
        Sj Sj(String str);

        Sj Sj(String str, float f10);

        Sj Sj(String str, int i10);

        Sj Sj(String str, long j10);

        Sj Sj(String str, String str2);

        Sj Sj(String str, boolean z10);

        void Sj();
    }

    public interface sP<T> {
        T sP(String str);
    }

    void Sj(JSONObject jSONObject);
}
