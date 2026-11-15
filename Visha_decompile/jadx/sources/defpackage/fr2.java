package defpackage;

import com.yandex.div2.DivStrokeStyleDashedTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class fr2 implements pd9, gfa {
    public final JsonParserComponent a;

    public fr2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivStrokeStyleDashedTemplate c(ex7 ex7Var, DivStrokeStyleDashedTemplate divStrokeStyleDashedTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new DivStrokeStyleDashedTemplate();
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivStrokeStyleDashedTemplate divStrokeStyleDashedTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divStrokeStyleDashedTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "dashed");
        return jSONObject;
    }
}
