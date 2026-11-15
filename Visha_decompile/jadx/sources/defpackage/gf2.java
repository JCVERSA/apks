package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionSetStoredValue;
import com.yandex.div2.DivTypedValue;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class gf2 implements pd9, w92 {
    public final JsonParserComponent a;

    public gf2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionSetStoredValue a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionE = pa5.e(ex7Var, jSONObject, "lifetime", acb.b, ParsingConvertersKt.h);
        y45.i(expressionE, "readExpression(context, …ELPER_INT, NUMBER_TO_INT)");
        Expression expressionD = pa5.d(ex7Var, jSONObject, "name", acb.c);
        y45.i(expressionD, "readExpression(context, …ame\", TYPE_HELPER_STRING)");
        Object objG = tb5.g(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, this.a.b9());
        y45.i(objG, "read(context, data, \"val…pedValueJsonEntityParser)");
        return new DivActionSetStoredValue(expressionE, expressionD, (DivTypedValue) objG);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionSetStoredValue divActionSetStoredValue) {
        y45.j(ex7Var, "context");
        y45.j(divActionSetStoredValue, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        pa5.p(ex7Var, jSONObject, "lifetime", divActionSetStoredValue.a);
        pa5.p(ex7Var, jSONObject, "name", divActionSetStoredValue.b);
        tb5.v(ex7Var, jSONObject, "type", "set_stored_value");
        tb5.x(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, divActionSetStoredValue.c, this.a.b9());
        return jSONObject;
    }
}
