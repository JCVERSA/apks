package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivCurrencyInputMask;
import com.yandex.div2.DivCurrencyInputMaskTemplate;
import com.yandex.div2.JsonParserComponent;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import org.json.JSONObject;

public final class vh2 implements lga {
    public final JsonParserComponent a;

    public vh2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivCurrencyInputMask a(ex7 ex7Var, DivCurrencyInputMaskTemplate divCurrencyInputMaskTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divCurrencyInputMaskTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionR = sa5.r(ex7Var, divCurrencyInputMaskTemplate.a, jSONObject, CommonUrlParts.LOCALE, acb.c);
        Object objA = sa5.a(ex7Var, divCurrencyInputMaskTemplate.b, jSONObject, "raw_text_variable");
        y45.i(objA, "resolve(context, templat…ata, \"raw_text_variable\")");
        return new DivCurrencyInputMask(expressionR, (String) objA);
    }
}
