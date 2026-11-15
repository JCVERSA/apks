package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.DivActionArrayInsertValueTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ud2 implements pd9, gfa {
    public final JsonParserComponent a;

    public ud2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionArrayInsertValueTemplate c(ex7 ex7Var, DivActionArrayInsertValueTemplate divActionArrayInsertValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "index", acb.b, zC, divActionArrayInsertValueTemplate != null ? divActionArrayInsertValueTemplate.a : null, ParsingConvertersKt.h);
        y45.i(tp3VarU, "readOptionalFieldWithExp…nt?.index, NUMBER_TO_INT)");
        tp3 tp3VarF = ra5.f(ex7VarC, jSONObject, ES6Iterator.VALUE_PROPERTY, zC, divActionArrayInsertValueTemplate != null ? divActionArrayInsertValueTemplate.b : null, this.a.c9());
        y45.i(tp3VarF, "readField(context, data,…dValueJsonTemplateParser)");
        tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "variable_name", acb.c, zC, divActionArrayInsertValueTemplate != null ? divActionArrayInsertValueTemplate.c : null);
        y45.i(tp3VarH, "readFieldWithExpression(…de, parent?.variableName)");
        return new DivActionArrayInsertValueTemplate(tp3VarU, tp3VarF, tp3VarH);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionArrayInsertValueTemplate divActionArrayInsertValueTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divActionArrayInsertValueTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.D(ex7Var, jSONObject, "index", divActionArrayInsertValueTemplate.a);
        tb5.v(ex7Var, jSONObject, "type", "array_insert_value");
        ra5.I(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, divActionArrayInsertValueTemplate.b, this.a.c9());
        ra5.D(ex7Var, jSONObject, "variable_name", divActionArrayInsertValueTemplate.c);
        return jSONObject;
    }
}
