package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.ContentUrl;
import com.yandex.div2.ContentUrlTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ih1 implements lga {
    public final JsonParserComponent a;

    public ih1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public ContentUrl a(ex7 ex7Var, ContentUrlTemplate contentUrlTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(contentUrlTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionH = sa5.h(ex7Var, contentUrlTemplate.a, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.e, ParsingConvertersKt.e);
        y45.i(expressionH, "resolveExpression(contex…E_HELPER_URI, ANY_TO_URI)");
        return new ContentUrl(expressionH);
    }
}
