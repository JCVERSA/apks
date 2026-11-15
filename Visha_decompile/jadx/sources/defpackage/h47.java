package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.JsonParserComponent;
import com.yandex.div2.NumberVariableTemplate;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class h47 implements pd9, gfa {
    public final JsonParserComponent a;

    public h47(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public NumberVariableTemplate c(ex7 ex7Var, NumberVariableTemplate numberVariableTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, "name", zC, numberVariableTemplate != null ? numberVariableTemplate.a : null);
        y45.i(tp3VarC, "readField(context, data,…owOverride, parent?.name)");
        tp3 tp3VarD = ra5.d(ex7VarC, jSONObject, ES6Iterator.VALUE_PROPERTY, zC, numberVariableTemplate != null ? numberVariableTemplate.b : null, ParsingConvertersKt.g);
        y45.i(tp3VarD, "readField(context, data,….value, NUMBER_TO_DOUBLE)");
        return new NumberVariableTemplate(tp3VarC, tp3VarD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, NumberVariableTemplate numberVariableTemplate) {
        y45.j(ex7Var, "context");
        y45.j(numberVariableTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.G(ex7Var, jSONObject, "name", numberVariableTemplate.a);
        tb5.v(ex7Var, jSONObject, "type", "number");
        ra5.G(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, numberVariableTemplate.b);
        return jSONObject;
    }
}
