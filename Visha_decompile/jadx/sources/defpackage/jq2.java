package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivSolidBackground;
import com.yandex.div2.DivSolidBackgroundTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class jq2 implements lga {
    public final JsonParserComponent a;

    public jq2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivSolidBackground a(ex7 ex7Var, DivSolidBackgroundTemplate divSolidBackgroundTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divSolidBackgroundTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionH = sa5.h(ex7Var, divSolidBackgroundTemplate.a, jSONObject, "color", acb.f, ParsingConvertersKt.b);
        y45.i(expressionH, "resolveExpression(contex…LOR, STRING_TO_COLOR_INT)");
        return new DivSolidBackground(expressionH);
    }
}
