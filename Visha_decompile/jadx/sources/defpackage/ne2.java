package defpackage;

import com.yandex.div2.DivActionClearFocus;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ne2 implements pd9, w92 {
    public final JsonParserComponent a;

    public ne2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionClearFocus a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new DivActionClearFocus();
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionClearFocus divActionClearFocus) {
        y45.j(ex7Var, "context");
        y45.j(divActionClearFocus, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "clear_focus");
        return jSONObject;
    }
}
