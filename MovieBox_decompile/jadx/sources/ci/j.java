package ci;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class j {

    public static final j f16942a = new j();

    private j() {
    }

    private final void a(JSONArray jSONArray) throws JSONException {
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            Object objOpt = jSONArray.opt(i10);
            if (objOpt instanceof String) {
                String str = (String) objOpt;
                if (e(str)) {
                    JSONObject jSONObject = new JSONObject(str);
                    b(jSONObject);
                    jSONArray.put(i10, jSONObject);
                } else if (d(str)) {
                    JSONArray jSONArray2 = new JSONArray(str);
                    a(jSONArray2);
                    jSONArray.put(i10, jSONArray2);
                }
            } else if (objOpt instanceof JSONObject) {
                b((JSONObject) objOpt);
            } else if (objOpt instanceof JSONArray) {
                a((JSONArray) objOpt);
            }
        }
    }

    private final void b(JSONObject jSONObject) throws JSONException {
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objOpt = jSONObject.opt(next);
            if (objOpt instanceof String) {
                String str = (String) objOpt;
                if (e(str)) {
                    JSONObject jSONObject2 = new JSONObject(str);
                    b(jSONObject2);
                    jSONObject.put(next, jSONObject2);
                } else if (d(str)) {
                    JSONArray jSONArray = new JSONArray(str);
                    a(jSONArray);
                    jSONObject.put(next, jSONArray);
                }
            } else if (objOpt instanceof JSONObject) {
                b((JSONObject) objOpt);
            } else if (objOpt instanceof JSONArray) {
                a((JSONArray) objOpt);
            }
        }
    }

    private final boolean d(String str) {
        try {
            new JSONArray(str);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private final boolean e(String str) {
        try {
            new JSONObject(str);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public final String c(String jsonString, int i10) {
        String string;
        Intrinsics.h(jsonString, "jsonString");
        try {
            if (StringsKt.W(StringsKt.n1(jsonString).toString(), "{", false, 2, null)) {
                JSONObject jSONObject = new JSONObject(jsonString);
                b(jSONObject);
                string = jSONObject.toString(i10);
            } else if (StringsKt.W(StringsKt.n1(jsonString).toString(), "[", false, 2, null)) {
                JSONArray jSONArray = new JSONArray(jsonString);
                a(jSONArray);
                string = jSONArray.toString(i10);
            } else {
                string = jsonString;
            }
            Intrinsics.e(string);
            return string;
        } catch (JSONException unused) {
            return jsonString;
        }
    }
}
