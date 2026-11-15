package defpackage;

import com.yandex.div2.DivTooltipModeModal;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class kt2 implements pd9, w92 {
    public final JsonParserComponent a;

    public kt2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTooltipModeModal a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new DivTooltipModeModal();
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivTooltipModeModal divTooltipModeModal) {
        y45.j(ex7Var, "context");
        y45.j(divTooltipModeModal, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "modal");
        return jSONObject;
    }
}
