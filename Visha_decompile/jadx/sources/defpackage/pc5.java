package defpackage;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class pc5 {
    public static final List a(JSONArray jSONArray) throws JSONException {
        y45.j(jSONArray, "<this>");
        int length = jSONArray.length();
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            Object obj = jSONArray.get(i);
            y45.i(obj, "get(i)");
            if (obj == null) {
                obj = null;
            }
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final String b(JSONArray jSONArray, int i) {
        y45.j(jSONArray, "<this>");
        return new sb5(i, 1).c(jSONArray);
    }

    public static final String c(JSONObject jSONObject, int i) {
        y45.j(jSONObject, "<this>");
        return new sb5(i, 1).d(jSONObject);
    }

    public static String d(JSONArray jSONArray, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return b(jSONArray, i);
    }

    public static String e(JSONObject jSONObject, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return c(jSONObject, i);
    }
}
