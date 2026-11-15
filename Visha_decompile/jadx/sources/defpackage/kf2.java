package defpackage;

import com.yandex.div2.DivActionSetVariableTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class kf2 implements pd9, gfa {
    public final JsonParserComponent a;

    public kf2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionSetVariableTemplate c(ex7 ex7Var, DivActionSetVariableTemplate divActionSetVariableTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarF = ra5.f(ex7VarC, jSONObject, ES6Iterator.VALUE_PROPERTY, zC, divActionSetVariableTemplate != null ? divActionSetVariableTemplate.a : null, this.a.c9());
        y45.i(tp3VarF, "readField(context, data,…dValueJsonTemplateParser)");
        tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "variable_name", acb.c, zC, divActionSetVariableTemplate != null ? divActionSetVariableTemplate.b : null);
        y45.i(tp3VarH, "readFieldWithExpression(…de, parent?.variableName)");
        return new DivActionSetVariableTemplate(tp3VarF, tp3VarH);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionSetVariableTemplate divActionSetVariableTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divActionSetVariableTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "set_variable");
        ra5.I(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, divActionSetVariableTemplate.a, this.a.c9());
        ra5.D(ex7Var, jSONObject, "variable_name", divActionSetVariableTemplate.b);
        return jSONObject;
    }
}
