package defpackage;

import com.yandex.div2.DivActionDictSetValueTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ue2 implements pd9, gfa {
    public final JsonParserComponent a;

    public ue2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionDictSetValueTemplate c(ex7 ex7Var, DivActionDictSetValueTemplate divActionDictSetValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        zbb zbbVar = acb.c;
        tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "key", zbbVar, zC, divActionDictSetValueTemplate != null ? divActionDictSetValueTemplate.a : null);
        y45.i(tp3VarH, "readFieldWithExpression(…lowOverride, parent?.key)");
        tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, ES6Iterator.VALUE_PROPERTY, zC, divActionDictSetValueTemplate != null ? divActionDictSetValueTemplate.b : null, this.a.c9());
        y45.i(tp3VarS, "readOptionalField(contex…dValueJsonTemplateParser)");
        tp3 tp3VarH2 = ra5.h(ex7VarC, jSONObject, "variable_name", zbbVar, zC, divActionDictSetValueTemplate != null ? divActionDictSetValueTemplate.c : null);
        y45.i(tp3VarH2, "readFieldWithExpression(…de, parent?.variableName)");
        return new DivActionDictSetValueTemplate(tp3VarH, tp3VarS, tp3VarH2);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionDictSetValueTemplate divActionDictSetValueTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divActionDictSetValueTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.D(ex7Var, jSONObject, "key", divActionDictSetValueTemplate.a);
        tb5.v(ex7Var, jSONObject, "type", "dict_set_value");
        ra5.I(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, divActionDictSetValueTemplate.b, this.a.c9());
        ra5.D(ex7Var, jSONObject, "variable_name", divActionDictSetValueTemplate.c);
        return jSONObject;
    }
}
