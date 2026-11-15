package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionDictSetValue;
import com.yandex.div2.DivTypedValue;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class te2 implements pd9, w92 {
    public final JsonParserComponent a;

    public te2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionDictSetValue a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        zbb zbbVar = acb.c;
        Expression expressionD = pa5.d(ex7Var, jSONObject, "key", zbbVar);
        y45.i(expressionD, "readExpression(context, …key\", TYPE_HELPER_STRING)");
        DivTypedValue divTypedValue = (DivTypedValue) tb5.n(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, this.a.b9());
        Expression expressionD2 = pa5.d(ex7Var, jSONObject, "variable_name", zbbVar);
        y45.i(expressionD2, "readExpression(context, …ame\", TYPE_HELPER_STRING)");
        return new DivActionDictSetValue(expressionD, divTypedValue, expressionD2);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionDictSetValue divActionDictSetValue) {
        y45.j(ex7Var, "context");
        y45.j(divActionDictSetValue, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        pa5.p(ex7Var, jSONObject, "key", divActionDictSetValue.a);
        tb5.v(ex7Var, jSONObject, "type", "dict_set_value");
        tb5.x(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, divActionDictSetValue.b, this.a.b9());
        pa5.p(ex7Var, jSONObject, "variable_name", divActionDictSetValue.c);
        return jSONObject;
    }
}
