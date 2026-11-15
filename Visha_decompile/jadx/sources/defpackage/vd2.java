package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionArrayInsertValue;
import com.yandex.div2.DivActionArrayInsertValueTemplate;
import com.yandex.div2.DivTypedValue;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class vd2 implements lga {
    public final JsonParserComponent a;

    public vd2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionArrayInsertValue a(ex7 ex7Var, DivActionArrayInsertValueTemplate divActionArrayInsertValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divActionArrayInsertValueTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionS = sa5.s(ex7Var, divActionArrayInsertValueTemplate.a, jSONObject, "index", acb.b, ParsingConvertersKt.h);
        Object objD = sa5.d(ex7Var, divActionArrayInsertValueTemplate.b, jSONObject, ES6Iterator.VALUE_PROPERTY, this.a.d9(), this.a.b9());
        y45.i(objD, "resolve(context, templat…pedValueJsonEntityParser)");
        Expression expressionG = sa5.g(ex7Var, divActionArrayInsertValueTemplate.c, jSONObject, "variable_name", acb.c);
        y45.i(expressionG, "resolveExpression(contex…ame\", TYPE_HELPER_STRING)");
        return new DivActionArrayInsertValue(expressionS, (DivTypedValue) objD, expressionG);
    }
}
