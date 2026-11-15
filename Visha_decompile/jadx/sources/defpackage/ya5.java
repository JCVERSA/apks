package defpackage;

import android.util.Log;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class ya5 {
    public static void a(String str, String str2, String str3) {
        try {
            if (str2.startsWith("{")) {
                str2 = new JSONObject(str2).toString(4);
            } else if (str2.startsWith("[")) {
                str2 = new JSONArray(str2).toString(4);
            }
        } catch (JSONException unused) {
        }
        pe5.b(str, true);
        StringBuilder sb = new StringBuilder();
        sb.append(str3);
        String str4 = oe5.a;
        sb.append(str4);
        sb.append(str2);
        for (String str5 : sb.toString().split(str4)) {
            Log.d(str, "║ " + str5);
        }
        pe5.b(str, false);
    }
}
