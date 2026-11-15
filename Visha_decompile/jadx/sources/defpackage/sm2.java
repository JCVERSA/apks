package defpackage;

import com.yandex.div2.DivNeighbourPageSizeTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class sm2 implements pd9, gfa {
    public final JsonParserComponent a;

    public sm2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivNeighbourPageSizeTemplate c(ex7 ex7Var, DivNeighbourPageSizeTemplate divNeighbourPageSizeTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarF = ra5.f(fx7.c(ex7Var), jSONObject, "neighbour_page_width", ex7Var.c(), divNeighbourPageSizeTemplate != null ? divNeighbourPageSizeTemplate.a : null, this.a.u3());
        y45.i(tp3VarF, "readField(context, data,…edSizeJsonTemplateParser)");
        return new DivNeighbourPageSizeTemplate(tp3VarF);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivNeighbourPageSizeTemplate divNeighbourPageSizeTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divNeighbourPageSizeTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.I(ex7Var, jSONObject, "neighbour_page_width", divNeighbourPageSizeTemplate.a, this.a.u3());
        tb5.v(ex7Var, jSONObject, "type", "fixed");
        return jSONObject;
    }
}
