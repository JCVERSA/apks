package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionSetVariable;
import com.yandex.div2.DivTypedValue;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class jf2 implements pd9, w92 {
    public final JsonParserComponent a;

    public jf2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionSetVariable a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Object objG = tb5.g(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, this.a.b9());
        y45.i(objG, "read(context, data, \"val…pedValueJsonEntityParser)");
        Expression expressionD = pa5.d(ex7Var, jSONObject, "variable_name", acb.c);
        y45.i(expressionD, "readExpression(context, …ame\", TYPE_HELPER_STRING)");
        return new DivActionSetVariable((DivTypedValue) objG, expressionD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionSetVariable divActionSetVariable) {
        y45.j(ex7Var, "context");
        y45.j(divActionSetVariable, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "set_variable");
        tb5.x(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, divActionSetVariable.a, this.a.b9());
        pa5.p(ex7Var, jSONObject, "variable_name", divActionSetVariable.b);
        return jSONObject;
    }
}
