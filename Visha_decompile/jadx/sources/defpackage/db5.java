package defpackage;

import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class db5 extends bb5 {
    public final JSONObject a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public db5(JSONObject jSONObject) {
        super(null);
        y45.j(jSONObject, ES6Iterator.VALUE_PROPERTY);
        this.a = jSONObject;
    }

    @Override
    public String a() {
        String string = this.a.toString();
        y45.i(string, "value.toString()");
        return string;
    }
}
