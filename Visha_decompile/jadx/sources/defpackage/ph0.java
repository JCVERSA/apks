package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.BoolValueTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ph0 implements pd9, gfa {
    public final JsonParserComponent a;

    public ph0(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public BoolValueTemplate c(ex7 ex7Var, BoolValueTemplate boolValueTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarI = ra5.i(fx7.c(ex7Var), jSONObject, ES6Iterator.VALUE_PROPERTY, acb.a, ex7Var.c(), boolValueTemplate != null ? boolValueTemplate.a : null, ParsingConvertersKt.f);
        y45.i(tp3VarI, "readFieldWithExpression(…t?.value, ANY_TO_BOOLEAN)");
        return new BoolValueTemplate(tp3VarI);
    }

    @Override
    public JSONObject b(ex7 ex7Var, BoolValueTemplate boolValueTemplate) {
        y45.j(ex7Var, "context");
        y45.j(boolValueTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "type", TypedValues.Custom.S_BOOLEAN);
        ra5.D(ex7Var, jSONObject, ES6Iterator.VALUE_PROPERTY, boolValueTemplate.a);
        return jSONObject;
    }
}
