package com.bytedance.sdk.component.Sj;

import java.lang.reflect.Type;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class Dq {
    private aa Sj;

    private Dq(aa aaVar) {
        this.Sj = aaVar;
    }

    static Dq Sj(aa aaVar) {
        return new Dq(aaVar);
    }

    <T> T Sj(String str, Type type) throws JSONException {
        Sj(str);
        return (type.equals(JSONObject.class) || ((type instanceof Class) && JSONObject.class.isAssignableFrom((Class) type))) ? (T) new JSONObject(str) : (T) this.Sj.Sj(str, type);
    }

    <T> String Sj(T t10) {
        String string;
        if (t10 == null) {
            return "{}";
        }
        if (!(t10 instanceof JSONObject) && !(t10 instanceof JSONArray)) {
            string = this.Sj.Sj(t10);
        } else {
            string = t10.toString();
        }
        Sj(string);
        return string;
    }

    private static void Sj(String str) {
        if (str.startsWith("{") && str.endsWith("}")) {
            return;
        }
        uA.Sj(new IllegalArgumentException("Param is not allowed to be List or JSONArray, rawString:\n ".concat(str)));
    }
}
