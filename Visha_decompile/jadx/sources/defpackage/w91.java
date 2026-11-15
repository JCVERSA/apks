package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.ColorVariableTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class w91 implements pd9, gfa {
    public final JsonParserComponent a;

    public w91(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public ColorVariableTemplate c(ex7 ex7Var, ColorVariableTemplate colorVariableTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, "name", zC, colorVariableTemplate != null ? colorVariableTemplate.a : null);
        y45.i(tp3VarC, "readField(context, data,…owOverride, parent?.name)");
        tp3 tp3VarD = ra5.d(ex7VarC, jSONObject, ES6Iterator.VALUE_PROPERTY, zC, colorVariableTemplate != null ? colorVariableTemplate.b : null, ParsingConvertersKt.b);
        y45.i(tp3VarD, "readField(context, data,…lue, STRING_TO_COLOR_INT)");
        return new ColorVariableTemplate(tp3VarC, tp3VarD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, ColorVariableTemplate colorVariableTemplate) {
        y45.j(ex7Var, "context");
        y45.j(colorVariableTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.G(ex7Var, jSONObject, "name", colorVariableTemplate.a);
        tb5.v(ex7Var, jSONObject, "type", "color");
        ra5.H(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, colorVariableTemplate.b, ParsingConvertersKt.a);
        return jSONObject;
    }
}
