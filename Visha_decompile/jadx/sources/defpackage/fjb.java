package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.JsonParserComponent;
import com.yandex.div2.UrlValue;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class fjb implements pd9, w92 {
    public final JsonParserComponent a;

    public fjb(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public UrlValue a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionE = pa5.e(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.e, ParsingConvertersKt.e);
        y45.i(expressionE, "readExpression(context, …E_HELPER_URI, ANY_TO_URI)");
        return new UrlValue(expressionE);
    }

    @Override
    public JSONObject b(ex7 ex7Var, UrlValue urlValue) {
        y45.j(ex7Var, "context");
        y45.j(urlValue, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "url");
        pa5.q(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, urlValue.a, ParsingConvertersKt.c);
        return jSONObject;
    }
}
