package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivRadialGradientRelativeCenter;
import com.yandex.div2.DivRadialGradientRelativeCenterTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class xo2 implements lga {
    public final JsonParserComponent a;

    public xo2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivRadialGradientRelativeCenter a(ex7 ex7Var, DivRadialGradientRelativeCenterTemplate divRadialGradientRelativeCenterTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divRadialGradientRelativeCenterTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionH = sa5.h(ex7Var, divRadialGradientRelativeCenterTemplate.a, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.d, ParsingConvertersKt.g);
        y45.i(expressionH, "resolveExpression(contex…DOUBLE, NUMBER_TO_DOUBLE)");
        return new DivRadialGradientRelativeCenter(expressionH);
    }
}
