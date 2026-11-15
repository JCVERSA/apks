package defpackage;

import com.yandex.div2.DivTooltipModeNonModal;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class nt2 implements pd9, w92 {
    public final JsonParserComponent a;

    public nt2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTooltipModeNonModal a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new DivTooltipModeNonModal();
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivTooltipModeNonModal divTooltipModeNonModal) {
        y45.j(ex7Var, "context");
        y45.j(divTooltipModeNonModal, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "non_modal");
        return jSONObject;
    }
}
