package defpackage;

import com.yandex.div2.DivCurrencyInputMaskTemplate;
import com.yandex.div2.JsonParserComponent;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class uh2 implements pd9, gfa {
    public final JsonParserComponent a;

    public uh2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivCurrencyInputMaskTemplate c(ex7 ex7Var, DivCurrencyInputMaskTemplate divCurrencyInputMaskTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, CommonUrlParts.LOCALE, acb.c, zC, divCurrencyInputMaskTemplate != null ? divCurrencyInputMaskTemplate.a : null);
        y45.i(tp3VarT, "readOptionalFieldWithExp…Override, parent?.locale)");
        tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, "raw_text_variable", zC, divCurrencyInputMaskTemplate != null ? divCurrencyInputMaskTemplate.b : null);
        y45.i(tp3VarC, "readField(context, data,… parent?.rawTextVariable)");
        return new DivCurrencyInputMaskTemplate(tp3VarT, tp3VarC);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivCurrencyInputMaskTemplate divCurrencyInputMaskTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divCurrencyInputMaskTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.D(ex7Var, jSONObject, CommonUrlParts.LOCALE, divCurrencyInputMaskTemplate.a);
        ra5.G(ex7Var, jSONObject, "raw_text_variable", divCurrencyInputMaskTemplate.b);
        tb5.v(ex7Var, jSONObject, "type", "currency");
        return jSONObject;
    }
}
