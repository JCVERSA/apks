package defpackage;

import com.yandex.div2.DivActionAnimatorStop;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class qd2 implements pd9, w92 {
    public final JsonParserComponent a;

    public qd2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionAnimatorStop a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Object objD = tb5.d(ex7Var, jSONObject, "animator_id");
        y45.i(objD, "read(context, data, \"animator_id\")");
        return new DivActionAnimatorStop((String) objD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionAnimatorStop divActionAnimatorStop) {
        y45.j(ex7Var, "context");
        y45.j(divActionAnimatorStop, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "animator_id", divActionAnimatorStop.a);
        tb5.v(ex7Var, jSONObject, "type", "animator_stop");
        return jSONObject;
    }
}
