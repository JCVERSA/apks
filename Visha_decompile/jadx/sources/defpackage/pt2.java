package defpackage;

import com.yandex.div2.DivTooltipModeNonModal;
import com.yandex.div2.DivTooltipModeNonModalTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class pt2 implements lga {
    public final JsonParserComponent a;

    public pt2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivTooltipModeNonModal a(ex7 ex7Var, DivTooltipModeNonModalTemplate divTooltipModeNonModalTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divTooltipModeNonModalTemplate, "template");
        y45.j(jSONObject, "data");
        return new DivTooltipModeNonModal();
    }
}
