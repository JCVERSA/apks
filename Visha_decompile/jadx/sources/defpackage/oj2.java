package defpackage;

import com.yandex.div2.DivEvaluableType;
import com.yandex.div2.DivFunctionArgumentTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class oj2 implements pd9, gfa {
    public final JsonParserComponent a;

    public oj2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivFunctionArgumentTemplate c(ex7 ex7Var, DivFunctionArgumentTemplate divFunctionArgumentTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, "name", zC, divFunctionArgumentTemplate != null ? divFunctionArgumentTemplate.a : null);
        y45.i(tp3VarC, "readField(context, data,…owOverride, parent?.name)");
        tp3 tp3VarD = ra5.d(ex7VarC, jSONObject, "type", zC, divFunctionArgumentTemplate != null ? divFunctionArgumentTemplate.b : null, DivEvaluableType.FROM_STRING);
        y45.i(tp3VarD, "readField(context, data,…valuableType.FROM_STRING)");
        return new DivFunctionArgumentTemplate(tp3VarC, tp3VarD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivFunctionArgumentTemplate divFunctionArgumentTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divFunctionArgumentTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.G(ex7Var, jSONObject, "name", divFunctionArgumentTemplate.a);
        ra5.H(ex7Var, jSONObject, "type", divFunctionArgumentTemplate.b, DivEvaluableType.TO_STRING);
        return jSONObject;
    }
}
