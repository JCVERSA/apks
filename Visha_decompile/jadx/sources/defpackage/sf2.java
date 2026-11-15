package defpackage;

import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class sf2 {
    public static final JSONObject b(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> itKeys = jSONObject.keys();
        y45.i(itKeys, "keys()");
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            jSONObject2.put(next, jSONObject.get(next));
        }
        return jSONObject2;
    }
}
