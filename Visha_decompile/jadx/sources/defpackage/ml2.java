package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivInputFilterRegex;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ml2 implements pd9, w92 {
    public final JsonParserComponent a;

    public ml2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivInputFilterRegex a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionD = pa5.d(ex7Var, jSONObject, "pattern", acb.c);
        y45.i(expressionD, "readExpression(context, …ern\", TYPE_HELPER_STRING)");
        return new DivInputFilterRegex(expressionD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivInputFilterRegex divInputFilterRegex) {
        y45.j(ex7Var, "context");
        y45.j(divInputFilterRegex, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        pa5.p(ex7Var, jSONObject, "pattern", divInputFilterRegex.a);
        tb5.v(ex7Var, jSONObject, "type", "regex");
        return jSONObject;
    }
}
