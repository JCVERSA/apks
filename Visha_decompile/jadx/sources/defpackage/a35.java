package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.IntegerVariableTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class a35 implements pd9, gfa {
    public final JsonParserComponent a;

    public a35(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public IntegerVariableTemplate c(ex7 ex7Var, IntegerVariableTemplate integerVariableTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, "name", zC, integerVariableTemplate != null ? integerVariableTemplate.a : null);
        y45.i(tp3VarC, "readField(context, data,…owOverride, parent?.name)");
        tp3 tp3VarD = ra5.d(ex7VarC, jSONObject, ES6Iterator.VALUE_PROPERTY, zC, integerVariableTemplate != null ? integerVariableTemplate.b : null, ParsingConvertersKt.h);
        y45.i(tp3VarD, "readField(context, data,…nt?.value, NUMBER_TO_INT)");
        return new IntegerVariableTemplate(tp3VarC, tp3VarD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, IntegerVariableTemplate integerVariableTemplate) {
        y45.j(ex7Var, "context");
        y45.j(integerVariableTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.G(ex7Var, jSONObject, "name", integerVariableTemplate.a);
        tb5.v(ex7Var, jSONObject, "type", TypedValues.Custom.S_INT);
        ra5.G(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, integerVariableTemplate.b);
        return jSONObject;
    }
}
