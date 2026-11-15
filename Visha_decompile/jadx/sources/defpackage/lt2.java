package defpackage;

import com.yandex.div2.DivTooltipModeModalTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class lt2 implements pd9, gfa {
    public final JsonParserComponent a;

    public lt2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTooltipModeModalTemplate c(ex7 ex7Var, DivTooltipModeModalTemplate divTooltipModeModalTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        return new DivTooltipModeModalTemplate();
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivTooltipModeModalTemplate divTooltipModeModalTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divTooltipModeModalTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "modal");
        return jSONObject;
    }
}
