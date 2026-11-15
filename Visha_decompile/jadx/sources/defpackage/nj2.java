package defpackage;

import com.yandex.div2.DivEvaluableType;
import com.yandex.div2.DivFunctionArgument;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class nj2 implements pd9, w92 {
    public final JsonParserComponent a;

    public nj2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivFunctionArgument a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Object objD = tb5.d(ex7Var, jSONObject, "name");
        y45.i(objD, "read(context, data, \"name\")");
        Object objE = tb5.e(ex7Var, jSONObject, "type", DivEvaluableType.FROM_STRING);
        y45.i(objE, "read(context, data, \"typ…valuableType.FROM_STRING)");
        return new DivFunctionArgument((String) objD, (DivEvaluableType) objE);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivFunctionArgument divFunctionArgument) {
        y45.j(ex7Var, "context");
        y45.j(divFunctionArgument, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "name", divFunctionArgument.a);
        tb5.w(ex7Var, jSONObject, "type", divFunctionArgument.b, DivEvaluableType.TO_STRING);
        return jSONObject;
    }
}
