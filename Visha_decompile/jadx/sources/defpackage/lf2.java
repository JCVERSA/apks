package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionSetVariable;
import com.yandex.div2.DivActionSetVariableTemplate;
import com.yandex.div2.DivTypedValue;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class lf2 implements lga {
    public final JsonParserComponent a;

    public lf2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionSetVariable a(ex7 ex7Var, DivActionSetVariableTemplate divActionSetVariableTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divActionSetVariableTemplate, "template");
        y45.j(jSONObject, "data");
        Object objD = sa5.d(ex7Var, divActionSetVariableTemplate.a, jSONObject, ES6Iterator.VALUE_PROPERTY, this.a.d9(), this.a.b9());
        y45.i(objD, "resolve(context, templat…pedValueJsonEntityParser)");
        Expression expressionG = sa5.g(ex7Var, divActionSetVariableTemplate.b, jSONObject, "variable_name", acb.c);
        y45.i(expressionG, "resolveExpression(contex…ame\", TYPE_HELPER_STRING)");
        return new DivActionSetVariable((DivTypedValue) objD, expressionG);
    }
}
