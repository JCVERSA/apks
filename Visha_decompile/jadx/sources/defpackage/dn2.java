package defpackage;

import com.yandex.div2.DivPageSizeTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class dn2 implements pd9, gfa {
    public final JsonParserComponent a;

    public dn2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPageSizeTemplate c(ex7 ex7Var, DivPageSizeTemplate divPageSizeTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarF = ra5.f(fx7.c(ex7Var), jSONObject, "page_width", ex7Var.c(), divPageSizeTemplate != null ? divPageSizeTemplate.a : null, this.a.I5());
        y45.i(tp3VarF, "readField(context, data,…geSizeJsonTemplateParser)");
        return new DivPageSizeTemplate(tp3VarF);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivPageSizeTemplate divPageSizeTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divPageSizeTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.I(ex7Var, jSONObject, "page_width", divPageSizeTemplate.a, this.a.I5());
        tb5.v(ex7Var, jSONObject, "type", "percentage");
        return jSONObject;
    }
}
