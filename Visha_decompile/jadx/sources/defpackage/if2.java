package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionSetStoredValue;
import com.yandex.div2.DivActionSetStoredValueTemplate;
import com.yandex.div2.DivTypedValue;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class if2 implements lga {
    public final JsonParserComponent a;

    public if2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionSetStoredValue a(ex7 ex7Var, DivActionSetStoredValueTemplate divActionSetStoredValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divActionSetStoredValueTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionH = sa5.h(ex7Var, divActionSetStoredValueTemplate.a, jSONObject, "lifetime", acb.b, ParsingConvertersKt.h);
        y45.i(expressionH, "resolveExpression(contex…ELPER_INT, NUMBER_TO_INT)");
        Expression expressionG = sa5.g(ex7Var, divActionSetStoredValueTemplate.b, jSONObject, "name", acb.c);
        y45.i(expressionG, "resolveExpression(contex…ame\", TYPE_HELPER_STRING)");
        Object objD = sa5.d(ex7Var, divActionSetStoredValueTemplate.c, jSONObject, ES6Iterator.VALUE_PROPERTY, this.a.d9(), this.a.b9());
        y45.i(objD, "resolve(context, templat…pedValueJsonEntityParser)");
        return new DivActionSetStoredValue(expressionH, expressionG, (DivTypedValue) objD);
    }
}
