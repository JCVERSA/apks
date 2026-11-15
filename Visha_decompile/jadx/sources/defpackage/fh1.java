package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.ContentText;
import com.yandex.div2.ContentTextTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class fh1 implements lga {
    public final JsonParserComponent a;

    public fh1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public ContentText a(ex7 ex7Var, ContentTextTemplate contentTextTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(contentTextTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionG = sa5.g(ex7Var, contentTextTemplate.a, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.c);
        y45.i(expressionG, "resolveExpression(contex…lue\", TYPE_HELPER_STRING)");
        return new ContentText(expressionG);
    }
}
