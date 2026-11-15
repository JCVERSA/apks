package defpackage;

import com.yandex.div2.DivStrokeStyleDashed;
import com.yandex.div2.DivStrokeStyleDashedTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class gr2 implements lga {
    public final JsonParserComponent a;

    public gr2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivStrokeStyleDashed a(ex7 ex7Var, DivStrokeStyleDashedTemplate divStrokeStyleDashedTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divStrokeStyleDashedTemplate, "template");
        y45.j(jSONObject, "data");
        return new DivStrokeStyleDashed();
    }
}
