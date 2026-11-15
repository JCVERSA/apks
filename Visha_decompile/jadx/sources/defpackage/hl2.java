package defpackage;

import com.yandex.div2.DivInfinityCountTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class hl2 implements pd9, gfa {
    public final JsonParserComponent a;

    public hl2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInfinityCountTemplate c(ex7 ex7Var, DivInfinityCountTemplate divInfinityCountTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new DivInfinityCountTemplate();
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivInfinityCountTemplate divInfinityCountTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divInfinityCountTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "infinity");
        return jSONObject;
    }
}
