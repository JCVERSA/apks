package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.IntegerValueTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class w25 implements pd9, gfa {
    public final JsonParserComponent a;

    public w25(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public IntegerValueTemplate c(ex7 ex7Var, IntegerValueTemplate integerValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarI = ra5.i(fx7.c(ex7Var), jSONObject, ES6Iterator.VALUE_PROPERTY, acb.b, ex7Var.c(), integerValueTemplate != null ? integerValueTemplate.a : null, ParsingConvertersKt.h);
        y45.i(tp3VarI, "readFieldWithExpression(…nt?.value, NUMBER_TO_INT)");
        return new IntegerValueTemplate(tp3VarI);
    }

    @Override
    public JSONObject b(ex7 ex7Var, IntegerValueTemplate integerValueTemplate) {
        y45.j(ex7Var, "context");
        y45.j(integerValueTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", TypedValues.Custom.S_INT);
        ra5.D(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, integerValueTemplate.a);
        return jSONObject;
    }
}
