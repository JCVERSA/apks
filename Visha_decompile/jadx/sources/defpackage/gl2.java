package defpackage;

import com.yandex.div2.DivInfinityCount;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class gl2 implements pd9, w92 {
    public final JsonParserComponent a;

    public gl2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInfinityCount a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new DivInfinityCount();
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivInfinityCount divInfinityCount) {
        y45.j(ex7Var, "context");
        y45.j(divInfinityCount, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "infinity");
        return jSONObject;
    }
}
