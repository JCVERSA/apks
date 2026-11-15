package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionArrayRemoveValue;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class wd2 implements pd9, w92 {
    public final JsonParserComponent a;

    public wd2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionArrayRemoveValue a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionE = pa5.e(ex7Var, jSONObject, "index", acb.b, ParsingConvertersKt.h);
        y45.i(expressionE, "readExpression(context, …ELPER_INT, NUMBER_TO_INT)");
        Expression expressionD = pa5.d(ex7Var, jSONObject, "variable_name", acb.c);
        y45.i(expressionD, "readExpression(context, …ame\", TYPE_HELPER_STRING)");
        return new DivActionArrayRemoveValue(expressionE, expressionD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionArrayRemoveValue divActionArrayRemoveValue) {
        y45.j(ex7Var, "context");
        y45.j(divActionArrayRemoveValue, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        pa5.p(ex7Var, jSONObject, "index", divActionArrayRemoveValue.a);
        tb5.v(ex7Var, jSONObject, "type", "array_remove_value");
        pa5.p(ex7Var, jSONObject, "variable_name", divActionArrayRemoveValue.b);
        return jSONObject;
    }
}
