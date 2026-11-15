package defpackage;

import com.yandex.div2.DivActionAnimatorStop;
import com.yandex.div2.DivActionAnimatorStopTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class sd2 implements lga {
    public final JsonParserComponent a;

    public sd2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionAnimatorStop a(ex7 ex7Var, DivActionAnimatorStopTemplate divActionAnimatorStopTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divActionAnimatorStopTemplate, "template");
        y45.j(jSONObject, "data");
        Object objA = sa5.a(ex7Var, divActionAnimatorStopTemplate.a, jSONObject, "animator_id");
        y45.i(objA, "resolve(context, templat…rId, data, \"animator_id\")");
        return new DivActionAnimatorStop((String) objA);
    }
}
