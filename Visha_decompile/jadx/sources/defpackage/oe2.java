package defpackage;

import com.yandex.div2.DivActionClearFocusTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class oe2 implements pd9, gfa {
    public final JsonParserComponent a;

    public oe2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionClearFocusTemplate c(ex7 ex7Var, DivActionClearFocusTemplate divActionClearFocusTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new DivActionClearFocusTemplate();
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionClearFocusTemplate divActionClearFocusTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divActionClearFocusTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "clear_focus");
        return jSONObject;
    }
}
