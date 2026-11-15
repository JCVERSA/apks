package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.DivActionArraySetValueTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ae2 implements pd9, gfa {
    public final JsonParserComponent a;

    public ae2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionArraySetValueTemplate c(ex7 ex7Var, DivActionArraySetValueTemplate divActionArraySetValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "index", acb.b, zC, divActionArraySetValueTemplate != null ? divActionArraySetValueTemplate.a : null, ParsingConvertersKt.h);
        y45.i(tp3VarI, "readFieldWithExpression(…nt?.index, NUMBER_TO_INT)");
        tp3 tp3VarF = ra5.f(ex7VarC, jSONObject, ES6Iterator.VALUE_PROPERTY, zC, divActionArraySetValueTemplate != null ? divActionArraySetValueTemplate.b : null, this.a.c9());
        y45.i(tp3VarF, "readField(context, data,…dValueJsonTemplateParser)");
        tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "variable_name", acb.c, zC, divActionArraySetValueTemplate != null ? divActionArraySetValueTemplate.c : null);
        y45.i(tp3VarH, "readFieldWithExpression(…de, parent?.variableName)");
        return new DivActionArraySetValueTemplate(tp3VarI, tp3VarF, tp3VarH);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionArraySetValueTemplate divActionArraySetValueTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divActionArraySetValueTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.D(ex7Var, jSONObject, "index", divActionArraySetValueTemplate.a);
        tb5.v(ex7Var, jSONObject, "type", "array_set_value");
        ra5.I(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, divActionArraySetValueTemplate.b, this.a.c9());
        ra5.D(ex7Var, jSONObject, "variable_name", divActionArraySetValueTemplate.c);
        return jSONObject;
    }
}
