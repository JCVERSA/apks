package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.DivSolidBackgroundTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class iq2 implements pd9, gfa {
    public final JsonParserComponent a;

    public iq2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivSolidBackgroundTemplate c(ex7 ex7Var, DivSolidBackgroundTemplate divSolidBackgroundTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarI = ra5.i(fx7.c(ex7Var), jSONObject, "color", acb.f, ex7Var.c(), divSolidBackgroundTemplate != null ? divSolidBackgroundTemplate.a : null, ParsingConvertersKt.b);
        y45.i(tp3VarI, "readFieldWithExpression(…lor, STRING_TO_COLOR_INT)");
        return new DivSolidBackgroundTemplate(tp3VarI);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivSolidBackgroundTemplate divSolidBackgroundTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divSolidBackgroundTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.E(ex7Var, jSONObject, "color", divSolidBackgroundTemplate.a, ParsingConvertersKt.a);
        tb5.v(ex7Var, jSONObject, "type", "solid");
        return jSONObject;
    }
}
