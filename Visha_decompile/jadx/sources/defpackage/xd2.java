package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.DivActionArrayRemoveValueTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class xd2 implements pd9, gfa {
    public final JsonParserComponent a;

    public xd2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionArrayRemoveValueTemplate c(ex7 ex7Var, DivActionArrayRemoveValueTemplate divActionArrayRemoveValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, "index", acb.b, zC, divActionArrayRemoveValueTemplate != null ? divActionArrayRemoveValueTemplate.a : null, ParsingConvertersKt.h);
        y45.i(tp3VarI, "readFieldWithExpression(…nt?.index, NUMBER_TO_INT)");
        tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "variable_name", acb.c, zC, divActionArrayRemoveValueTemplate != null ? divActionArrayRemoveValueTemplate.b : null);
        y45.i(tp3VarH, "readFieldWithExpression(…de, parent?.variableName)");
        return new DivActionArrayRemoveValueTemplate(tp3VarI, tp3VarH);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionArrayRemoveValueTemplate divActionArrayRemoveValueTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divActionArrayRemoveValueTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.D(ex7Var, jSONObject, "index", divActionArrayRemoveValueTemplate.a);
        tb5.v(ex7Var, jSONObject, "type", "array_remove_value");
        ra5.D(ex7Var, jSONObject, "variable_name", divActionArrayRemoveValueTemplate.b);
        return jSONObject;
    }
}
