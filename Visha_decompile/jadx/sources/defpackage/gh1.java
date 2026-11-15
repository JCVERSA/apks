package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.ContentUrl;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class gh1 implements pd9, w92 {
    public final JsonParserComponent a;

    public gh1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public ContentUrl a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionE = pa5.e(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.e, ParsingConvertersKt.e);
        y45.i(expressionE, "readExpression(context, …E_HELPER_URI, ANY_TO_URI)");
        return new ContentUrl(expressionE);
    }

    @Override
    public JSONObject b(ex7 ex7Var, ContentUrl contentUrl) {
        y45.j(ex7Var, "context");
        y45.j(contentUrl, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "url");
        pa5.q(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, contentUrl.a, ParsingConvertersKt.c);
        return jSONObject;
    }
}
