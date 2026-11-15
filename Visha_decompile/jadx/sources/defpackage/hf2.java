package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.DivActionSetStoredValueTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class hf2 implements pd9, gfa {
    public final JsonParserComponent a;

    public hf2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionSetStoredValueTemplate c(ex7 ex7Var, DivActionSetStoredValueTemplate divActionSetStoredValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "lifetime", acb.b, zC, divActionSetStoredValueTemplate != null ? divActionSetStoredValueTemplate.a : null, ParsingConvertersKt.h);
        y45.i(tp3VarI, "readFieldWithExpression(….lifetime, NUMBER_TO_INT)");
        tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "name", acb.c, zC, divActionSetStoredValueTemplate != null ? divActionSetStoredValueTemplate.b : null);
        y45.i(tp3VarH, "readFieldWithExpression(…owOverride, parent?.name)");
        tp3 tp3VarF = ra5.f(ex7VarC, jSONObject, ES6Iterator.VALUE_PROPERTY, zC, divActionSetStoredValueTemplate != null ? divActionSetStoredValueTemplate.c : null, this.a.c9());
        y45.i(tp3VarF, "readField(context, data,…dValueJsonTemplateParser)");
        return new DivActionSetStoredValueTemplate(tp3VarI, tp3VarH, tp3VarF);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionSetStoredValueTemplate divActionSetStoredValueTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divActionSetStoredValueTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.D(ex7Var, jSONObject, "lifetime", divActionSetStoredValueTemplate.a);
        ra5.D(ex7Var, jSONObject, "name", divActionSetStoredValueTemplate.b);
        tb5.v(ex7Var, jSONObject, "type", "set_stored_value");
        ra5.I(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, divActionSetStoredValueTemplate.c, this.a.c9());
        return jSONObject;
    }
}
