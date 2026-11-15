package defpackage;

import com.yandex.div2.DivPhoneInputMaskTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class go2 implements pd9, gfa {
    public final JsonParserComponent a;

    public go2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPhoneInputMaskTemplate c(ex7 ex7Var, DivPhoneInputMaskTemplate divPhoneInputMaskTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarC = ra5.c(fx7.c(ex7Var), jSONObject, "raw_text_variable", ex7Var.c(), divPhoneInputMaskTemplate != null ? divPhoneInputMaskTemplate.a : null);
        y45.i(tp3VarC, "readField(context, data,… parent?.rawTextVariable)");
        return new DivPhoneInputMaskTemplate(tp3VarC);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivPhoneInputMaskTemplate divPhoneInputMaskTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divPhoneInputMaskTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.G(ex7Var, jSONObject, "raw_text_variable", divPhoneInputMaskTemplate.a);
        tb5.v(ex7Var, jSONObject, "type", "phone");
        return jSONObject;
    }
}
