package defpackage;

import com.yandex.div2.DivStrokeStyleSolidTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ir2 implements pd9, gfa {
    public final JsonParserComponent a;

    public ir2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivStrokeStyleSolidTemplate c(ex7 ex7Var, DivStrokeStyleSolidTemplate divStrokeStyleSolidTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new DivStrokeStyleSolidTemplate();
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivStrokeStyleSolidTemplate divStrokeStyleSolidTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divStrokeStyleSolidTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "solid");
        return jSONObject;
    }
}
