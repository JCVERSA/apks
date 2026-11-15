package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.ColorValueTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class t91 implements pd9, gfa {
    public final JsonParserComponent a;

    public t91(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public ColorValueTemplate c(ex7 ex7Var, ColorValueTemplate colorValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarI = ra5.i(fx7.c(ex7Var), jSONObject, ES6Iterator.VALUE_PROPERTY, acb.f, ex7Var.c(), colorValueTemplate != null ? colorValueTemplate.a : null, ParsingConvertersKt.b);
        y45.i(tp3VarI, "readFieldWithExpression(…lue, STRING_TO_COLOR_INT)");
        return new ColorValueTemplate(tp3VarI);
    }

    @Override
    public JSONObject b(ex7 ex7Var, ColorValueTemplate colorValueTemplate) {
        y45.j(ex7Var, "context");
        y45.j(colorValueTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "color");
        ra5.E(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, colorValueTemplate.a, ParsingConvertersKt.a);
        return jSONObject;
    }
}
