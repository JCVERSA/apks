package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionDownload;
import com.yandex.div2.JsonParserComponent;
import java.util.List;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class we2 implements pd9, w92 {
    public final JsonParserComponent a;

    public we2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionDownload a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        List listR = tb5.r(ex7Var, jSONObject, "on_fail_actions", this.a.u0());
        List listR2 = tb5.r(ex7Var, jSONObject, "on_success_actions", this.a.u0());
        Expression expressionE = pa5.e(ex7Var, jSONObject, "url", acb.e, ParsingConvertersKt.e);
        y45.i(expressionE, "readExpression(context, …E_HELPER_URI, ANY_TO_URI)");
        return new DivActionDownload(listR, listR2, expressionE);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionDownload divActionDownload) {
        y45.j(ex7Var, "context");
        y45.j(divActionDownload, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.z(ex7Var, jSONObject, "on_fail_actions", divActionDownload.a, this.a.u0());
        tb5.z(ex7Var, jSONObject, "on_success_actions", divActionDownload.b, this.a.u0());
        tb5.v(ex7Var, jSONObject, "type", "download");
        pa5.q(ex7Var, jSONObject, "url", divActionDownload.c, ParsingConvertersKt.c);
        return jSONObject;
    }
}
