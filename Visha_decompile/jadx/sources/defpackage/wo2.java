package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.DivRadialGradientRelativeCenterTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class wo2 implements pd9, gfa {
    public final JsonParserComponent a;

    public wo2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivRadialGradientRelativeCenterTemplate c(ex7 ex7Var, DivRadialGradientRelativeCenterTemplate divRadialGradientRelativeCenterTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarI = ra5.i(fx7.c(ex7Var), jSONObject, ES6Iterator.VALUE_PROPERTY, acb.d, ex7Var.c(), divRadialGradientRelativeCenterTemplate != null ? divRadialGradientRelativeCenterTemplate.a : null, ParsingConvertersKt.g);
        y45.i(tp3VarI, "readFieldWithExpression(….value, NUMBER_TO_DOUBLE)");
        return new DivRadialGradientRelativeCenterTemplate(tp3VarI);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivRadialGradientRelativeCenterTemplate divRadialGradientRelativeCenterTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divRadialGradientRelativeCenterTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "relative");
        ra5.D(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, divRadialGradientRelativeCenterTemplate.a);
        return jSONObject;
    }
}
