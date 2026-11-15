package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.ColorValue;
import com.yandex.div2.ColorValueTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class u91 implements lga {
    public final JsonParserComponent a;

    public u91(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public ColorValue a(ex7 ex7Var, ColorValueTemplate colorValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(colorValueTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionH = sa5.h(ex7Var, colorValueTemplate.a, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.f, ParsingConvertersKt.b);
        y45.i(expressionH, "resolveExpression(contex…LOR, STRING_TO_COLOR_INT)");
        return new ColorValue(expressionH);
    }
}
