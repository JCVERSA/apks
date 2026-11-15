package defpackage;

import com.yandex.div2.DivEvaluableType;
import com.yandex.div2.DivFunctionArgument;
import com.yandex.div2.DivFunctionArgumentTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class pj2 implements lga {
    public final JsonParserComponent a;

    public pj2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivFunctionArgument a(ex7 ex7Var, DivFunctionArgumentTemplate divFunctionArgumentTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divFunctionArgumentTemplate, "template");
        y45.j(jSONObject, "data");
        Object objA = sa5.a(ex7Var, divFunctionArgumentTemplate.a, jSONObject, "name");
        y45.i(objA, "resolve(context, template.name, data, \"name\")");
        Object objB = sa5.b(ex7Var, divFunctionArgumentTemplate.b, jSONObject, "type", DivEvaluableType.FROM_STRING);
        y45.i(objB, "resolve(context, templat…valuableType.FROM_STRING)");
        return new DivFunctionArgument((String) objA, (DivEvaluableType) objB);
    }
}
