package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.JsonParserComponent;
import com.yandex.div2.UrlValue;
import com.yandex.div2.UrlValueTemplate;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class hjb implements lga {
    public final JsonParserComponent a;

    public hjb(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public UrlValue a(ex7 ex7Var, UrlValueTemplate urlValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(urlValueTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionH = sa5.h(ex7Var, urlValueTemplate.a, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.e, ParsingConvertersKt.e);
        y45.i(expressionH, "resolveExpression(contex…E_HELPER_URI, ANY_TO_URI)");
        return new UrlValue(expressionH);
    }
}
