package defpackage;

import com.yandex.div2.DivActionClearFocus;
import com.yandex.div2.DivActionClearFocusTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class pe2 implements lga {
    public final JsonParserComponent a;

    public pe2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionClearFocus a(ex7 ex7Var, DivActionClearFocusTemplate divActionClearFocusTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divActionClearFocusTemplate, "template");
        y45.j(jSONObject, "data");
        return new DivActionClearFocus();
    }
}
