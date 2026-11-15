package defpackage;

import com.yandex.div2.DivInputFilterRegexTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class nl2 implements pd9, gfa {
    public final JsonParserComponent a;

    public nl2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInputFilterRegexTemplate c(ex7 ex7Var, DivInputFilterRegexTemplate divInputFilterRegexTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarH = ra5.h(fx7.c(ex7Var), jSONObject, "pattern", acb.c, ex7Var.c(), divInputFilterRegexTemplate != null ? divInputFilterRegexTemplate.a : null);
        y45.i(tp3VarH, "readFieldWithExpression(…verride, parent?.pattern)");
        return new DivInputFilterRegexTemplate(tp3VarH);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivInputFilterRegexTemplate divInputFilterRegexTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divInputFilterRegexTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.D(ex7Var, jSONObject, "pattern", divInputFilterRegexTemplate.a);
        tb5.v(ex7Var, jSONObject, "type", "regex");
        return jSONObject;
    }
}
