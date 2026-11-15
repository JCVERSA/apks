package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivInputFilterExpression;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class jl2 implements pd9, w92 {
    public final JsonParserComponent a;

    public jl2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInputFilterExpression a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionE = pa5.e(ex7Var, jSONObject, "condition", acb.a, ParsingConvertersKt.f);
        y45.i(expressionE, "readExpression(context, …_BOOLEAN, ANY_TO_BOOLEAN)");
        return new DivInputFilterExpression(expressionE);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivInputFilterExpression divInputFilterExpression) {
        y45.j(ex7Var, "context");
        y45.j(divInputFilterExpression, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        pa5.p(ex7Var, jSONObject, "condition", divInputFilterExpression.a);
        tb5.v(ex7Var, jSONObject, "type", "expression");
        return jSONObject;
    }
}
