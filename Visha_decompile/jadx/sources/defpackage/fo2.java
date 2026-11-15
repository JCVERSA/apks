package defpackage;

import com.yandex.div2.DivPhoneInputMask;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class fo2 implements pd9, w92 {
    public final JsonParserComponent a;

    public fo2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPhoneInputMask a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Object objD = tb5.d(ex7Var, jSONObject, "raw_text_variable");
        y45.i(objD, "read(context, data, \"raw_text_variable\")");
        return new DivPhoneInputMask((String) objD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivPhoneInputMask divPhoneInputMask) {
        y45.j(ex7Var, "context");
        y45.j(divPhoneInputMask, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.v(ex7Var, jSONObject, "raw_text_variable", divPhoneInputMask.a());
        tb5.v(ex7Var, jSONObject, "type", "phone");
        return jSONObject;
    }
}
