package defpackage;

import com.yandex.div2.DivTooltipModeModal;
import com.yandex.div2.DivTooltipModeModalTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class mt2 implements lga {
    public final JsonParserComponent a;

    public mt2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTooltipModeModal a(ex7 ex7Var, DivTooltipModeModalTemplate divTooltipModeModalTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divTooltipModeModalTemplate, "template");
        y45.j(jSONObject, "data");
        return new DivTooltipModeModal();
    }
}
