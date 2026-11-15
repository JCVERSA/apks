package defpackage;

import com.yandex.div2.DivPhoneInputMask;
import com.yandex.div2.DivPhoneInputMaskTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class ho2 implements lga {
    public final JsonParserComponent a;

    public ho2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPhoneInputMask a(ex7 ex7Var, DivPhoneInputMaskTemplate divPhoneInputMaskTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divPhoneInputMaskTemplate, "template");
        y45.j(jSONObject, "data");
        Object objA = sa5.a(ex7Var, divPhoneInputMaskTemplate.a, jSONObject, "raw_text_variable");
        y45.i(objA, "resolve(context, templat…ata, \"raw_text_variable\")");
        return new DivPhoneInputMask((String) objA);
    }
}
