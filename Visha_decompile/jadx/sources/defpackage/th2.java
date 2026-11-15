package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivCurrencyInputMask;
import com.yandex.div2.JsonParserComponent;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class th2 implements pd9, w92 {
    public final JsonParserComponent a;

    public th2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivCurrencyInputMask a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionH = pa5.h(ex7Var, jSONObject, CommonUrlParts.LOCALE, acb.c);
        Object objD = tb5.d(ex7Var, jSONObject, "raw_text_variable");
        y45.i(objD, "read(context, data, \"raw_text_variable\")");
        return new DivCurrencyInputMask(expressionH, (String) objD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivCurrencyInputMask divCurrencyInputMask) {
        y45.j(ex7Var, "context");
        y45.j(divCurrencyInputMask, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        pa5.p(ex7Var, jSONObject, CommonUrlParts.LOCALE, divCurrencyInputMask.a);
        tb5.v(ex7Var, jSONObject, "raw_text_variable", divCurrencyInputMask.a());
        tb5.v(ex7Var, jSONObject, "type", "currency");
        return jSONObject;
    }
}
