package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.BoolValue;
import com.yandex.div2.BoolValueTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class qh0 implements lga {
    public final JsonParserComponent a;

    public qh0(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public BoolValue a(ex7 ex7Var, BoolValueTemplate boolValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(boolValueTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionH = sa5.h(ex7Var, boolValueTemplate.a, jSONObject, ES6Iterator.VALUE_PROPERTY, acb.a, ParsingConvertersKt.f);
        y45.i(expressionH, "resolveExpression(contex…_BOOLEAN, ANY_TO_BOOLEAN)");
        return new BoolValue(expressionH);
    }
}
