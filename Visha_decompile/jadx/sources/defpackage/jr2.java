package defpackage;

import com.yandex.div2.DivStrokeStyleSolid;
import com.yandex.div2.DivStrokeStyleSolidTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class jr2 implements lga {
    public final JsonParserComponent a;

    public jr2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivStrokeStyleSolid a(ex7 ex7Var, DivStrokeStyleSolidTemplate divStrokeStyleSolidTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divStrokeStyleSolidTemplate, "template");
        y45.j(jSONObject, "data");
        return new DivStrokeStyleSolid();
    }
}
