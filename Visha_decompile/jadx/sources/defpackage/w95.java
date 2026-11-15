package defpackage;

import org.json.JSONArray;
import org.mozilla.javascript.ES6Iterator;

public final class w95 extends bb5 {
    public final JSONArray a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w95(JSONArray jSONArray) {
        super(null);
        y45.j(jSONArray, ES6Iterator.VALUE_PROPERTY);
        this.a = jSONArray;
    }

    @Override
    public String a() {
        String string = this.a.toString();
        y45.i(string, "value.toString()");
        return string;
    }
}
