package defpackage;

import com.yandex.div2.DivTooltipModeNonModalTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ot2 implements pd9, gfa {
    public final JsonParserComponent a;

    public ot2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTooltipModeNonModalTemplate c(ex7 ex7Var, DivTooltipModeNonModalTemplate divTooltipModeNonModalTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new DivTooltipModeNonModalTemplate();
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivTooltipModeNonModalTemplate divTooltipModeNonModalTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divTooltipModeNonModalTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "non_modal");
        return jSONObject;
    }
}
