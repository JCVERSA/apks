package defpackage;

import com.yandex.div2.DivActionAnimatorStopTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class rd2 implements pd9, gfa {
    public final JsonParserComponent a;

    public rd2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionAnimatorStopTemplate c(ex7 ex7Var, DivActionAnimatorStopTemplate divActionAnimatorStopTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarC = ra5.c(fx7.c(ex7Var), jSONObject, "animator_id", ex7Var.c(), divActionAnimatorStopTemplate != null ? divActionAnimatorStopTemplate.a : null);
        y45.i(tp3VarC, "readField(context, data,…ride, parent?.animatorId)");
        return new DivActionAnimatorStopTemplate(tp3VarC);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionAnimatorStopTemplate divActionAnimatorStopTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divActionAnimatorStopTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.G(ex7Var, jSONObject, "animator_id", divActionAnimatorStopTemplate.a);
        tb5.v(ex7Var, jSONObject, "type", "animator_stop");
        return jSONObject;
    }
}
