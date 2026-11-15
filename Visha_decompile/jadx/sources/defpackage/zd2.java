package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionArraySetValue;
import com.yandex.div2.DivTypedValue;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class zd2 implements pd9, w92 {
    public final JsonParserComponent a;

    public zd2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionArraySetValue a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionE = pa5.e(ex7Var, jSONObject, "index", acb.b, ParsingConvertersKt.h);
        y45.i(expressionE, "readExpression(context, …ELPER_INT, NUMBER_TO_INT)");
        Object objG = tb5.g(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, this.a.b9());
        y45.i(objG, "read(context, data, \"val…pedValueJsonEntityParser)");
        Expression expressionD = pa5.d(ex7Var, jSONObject, "variable_name", acb.c);
        y45.i(expressionD, "readExpression(context, …ame\", TYPE_HELPER_STRING)");
        return new DivActionArraySetValue(expressionE, (DivTypedValue) objG, expressionD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionArraySetValue divActionArraySetValue) {
        y45.j(ex7Var, "context");
        y45.j(divActionArraySetValue, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        pa5.p(ex7Var, jSONObject, "index", divActionArraySetValue.a);
        tb5.v(ex7Var, jSONObject, "type", "array_set_value");
        tb5.x(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, divActionArraySetValue.b, this.a.b9());
        pa5.p(ex7Var, jSONObject, "variable_name", divActionArraySetValue.c);
        return jSONObject;
    }
}
