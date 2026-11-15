package defpackage;

import com.yandex.div2.DivPointTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class oo2 implements pd9, gfa {
    public final JsonParserComponent a;

    public oo2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPointTemplate c(ex7 ex7Var, DivPointTemplate divPointTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarF = ra5.f(ex7VarC, jSONObject, "x", zC, divPointTemplate != null ? divPointTemplate.a : null, this.a.K2());
        y45.i(tp3VarF, "readField(context, data,…ensionJsonTemplateParser)");
        tp3 tp3VarF2 = ra5.f(ex7VarC, jSONObject, "y", zC, divPointTemplate != null ? divPointTemplate.b : null, this.a.K2());
        y45.i(tp3VarF2, "readField(context, data,…ensionJsonTemplateParser)");
        return new DivPointTemplate(tp3VarF, tp3VarF2);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivPointTemplate divPointTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divPointTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.I(ex7Var, jSONObject, "x", divPointTemplate.a, this.a.K2());
        ra5.I(ex7Var, jSONObject, "y", divPointTemplate.b, this.a.K2());
        return jSONObject;
    }
}
