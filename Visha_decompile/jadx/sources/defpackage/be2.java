package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionArraySetValue;
import com.yandex.div2.DivActionArraySetValueTemplate;
import com.yandex.div2.DivTypedValue;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class be2 implements lga {
    public final JsonParserComponent a;

    public be2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionArraySetValue a(ex7 ex7Var, DivActionArraySetValueTemplate divActionArraySetValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divActionArraySetValueTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionH = sa5.h(ex7Var, divActionArraySetValueTemplate.a, jSONObject, "index", acb.b, ParsingConvertersKt.h);
        y45.i(expressionH, "resolveExpression(contex…ELPER_INT, NUMBER_TO_INT)");
        Object objD = sa5.d(ex7Var, divActionArraySetValueTemplate.b, jSONObject, ES6Iterator.VALUE_PROPERTY, this.a.d9(), this.a.b9());
        y45.i(objD, "resolve(context, templat…pedValueJsonEntityParser)");
        Expression expressionG = sa5.g(ex7Var, divActionArraySetValueTemplate.c, jSONObject, "variable_name", acb.c);
        y45.i(expressionG, "resolveExpression(contex…ame\", TYPE_HELPER_STRING)");
        return new DivActionArraySetValue(expressionH, (DivTypedValue) objD, expressionG);
    }
}
