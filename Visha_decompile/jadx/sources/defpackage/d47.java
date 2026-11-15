package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.JsonParserComponent;
import com.yandex.div2.NumberValueTemplate;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class d47 implements pd9, gfa {
    public final JsonParserComponent a;

    public d47(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public NumberValueTemplate c(ex7 ex7Var, NumberValueTemplate numberValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarI = ra5.i(fx7.c(ex7Var), jSONObject, ES6Iterator.VALUE_PROPERTY, acb.d, ex7Var.c(), numberValueTemplate != null ? numberValueTemplate.a : null, ParsingConvertersKt.g);
        y45.i(tp3VarI, "readFieldWithExpression(….value, NUMBER_TO_DOUBLE)");
        return new NumberValueTemplate(tp3VarI);
    }

    @Override
    public JSONObject b(ex7 ex7Var, NumberValueTemplate numberValueTemplate) {
        y45.j(ex7Var, "context");
        y45.j(numberValueTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "number");
        ra5.D(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, numberValueTemplate.a);
        return jSONObject;
    }
}
