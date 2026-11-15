package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.DivPivotPercentageTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class jo2 implements pd9, gfa {
    public final JsonParserComponent a;

    public jo2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPivotPercentageTemplate c(ex7 ex7Var, DivPivotPercentageTemplate divPivotPercentageTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarI = ra5.i(fx7.c(ex7Var), jSONObject, ES6Iterator.VALUE_PROPERTY, acb.d, ex7Var.c(), divPivotPercentageTemplate != null ? divPivotPercentageTemplate.a : null, ParsingConvertersKt.g);
        y45.i(tp3VarI, "readFieldWithExpression(….value, NUMBER_TO_DOUBLE)");
        return new DivPivotPercentageTemplate(tp3VarI);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivPivotPercentageTemplate divPivotPercentageTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divPivotPercentageTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", "pivot-percentage");
        ra5.D(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, divPivotPercentageTemplate.a);
        return jSONObject;
    }
}
