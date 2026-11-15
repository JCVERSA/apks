package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.DivInputFilterExpressionTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class kl2 implements pd9, gfa {
    public final JsonParserComponent a;

    public kl2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInputFilterExpressionTemplate c(ex7 ex7Var, DivInputFilterExpressionTemplate divInputFilterExpressionTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarI = ra5.i(fx7.c(ex7Var), jSONObject, "condition", acb.a, ex7Var.c(), divInputFilterExpressionTemplate != null ? divInputFilterExpressionTemplate.a : null, ParsingConvertersKt.f);
        y45.i(tp3VarI, "readFieldWithExpression(…ondition, ANY_TO_BOOLEAN)");
        return new DivInputFilterExpressionTemplate(tp3VarI);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivInputFilterExpressionTemplate divInputFilterExpressionTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divInputFilterExpressionTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.D(ex7Var, jSONObject, "condition", divInputFilterExpressionTemplate.a);
        tb5.v(ex7Var, jSONObject, "type", "expression");
        return jSONObject;
    }
}
