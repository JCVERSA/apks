package defpackage;

import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class sb5 {
    public static final a c = new a(null);
    public final int a;
    public final int b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public sb5(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public final JSONArray a(JSONArray jSONArray, int i) throws JSONException {
        JSONArray jSONArray2 = new JSONArray();
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            Object objOpt = jSONArray.opt(i2);
            if (objOpt instanceof JSONObject) {
                if (i == 0) {
                    objOpt = "...";
                } else {
                    objOpt = b((JSONObject) objOpt, i - 1);
                }
            } else if (objOpt instanceof JSONArray) {
                if (i == 0) {
                    objOpt = "...";
                } else {
                    objOpt = a((JSONArray) objOpt, i - 1);
                }
            }
            jSONArray2.put(objOpt);
        }
        return jSONArray2;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x002b  */
    public final JSONObject b(JSONObject jSONObject, int i) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> itKeys = jSONObject.keys();
        y45.i(itKeys, "keys");
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objOpt = jSONObject.opt(next);
            y45.i(next, "key");
            if (objOpt instanceof JSONObject) {
                if (i == 0) {
                    objOpt = "...";
                } else {
                    objOpt = b((JSONObject) objOpt, i - 1);
                }
            } else if (objOpt instanceof JSONArray) {
                if (i == 0) {
                    objOpt = "...";
                } else {
                    objOpt = a((JSONArray) objOpt, i - 1);
                }
            }
            jSONObject2.put(next, objOpt);
        }
        return jSONObject2;
    }

    public final String c(JSONArray jSONArray) throws JSONException {
        String string;
        String str;
        y45.j(jSONArray, "json");
        JSONArray jSONArrayA = a(jSONArray, this.b);
        int i = this.a;
        if (i == 0) {
            string = jSONArrayA.toString();
            str = "copy.toString()";
        } else {
            string = jSONArrayA.toString(i);
            str = "copy.toString(indentSpaces)";
        }
        y45.i(string, str);
        return string;
    }

    public final String d(JSONObject jSONObject) throws JSONException {
        String string;
        String str;
        y45.j(jSONObject, "json");
        JSONObject jSONObjectB = b(jSONObject, this.b);
        int i = this.a;
        if (i == 0) {
            string = jSONObjectB.toString();
            str = "copy.toString()";
        } else {
            string = jSONObjectB.toString(i);
            str = "copy.toString(indentSpaces)";
        }
        y45.i(string, str);
        return string;
    }
}
