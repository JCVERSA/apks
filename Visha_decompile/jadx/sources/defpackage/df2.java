package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionHideTooltip;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class df2 implements pd9, w92 {
    public final JsonParserComponent a;

    public df2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionHideTooltip a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionD = pa5.d(ex7Var, jSONObject, TtmlNode.ATTR_ID, acb.c);
        y45.i(expressionD, "readExpression(context, …\"id\", TYPE_HELPER_STRING)");
        return new DivActionHideTooltip(expressionD);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionHideTooltip divActionHideTooltip) {
        y45.j(ex7Var, "context");
        y45.j(divActionHideTooltip, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        pa5.p(ex7Var, jSONObject, TtmlNode.ATTR_ID, divActionHideTooltip.a);
        tb5.v(ex7Var, jSONObject, "type", "hide_tooltip");
        return jSONObject;
    }
}
