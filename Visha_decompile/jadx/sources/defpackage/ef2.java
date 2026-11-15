package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div2.DivActionHideTooltipTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ef2 implements pd9, gfa {
    public final JsonParserComponent a;

    public ef2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionHideTooltipTemplate c(ex7 ex7Var, DivActionHideTooltipTemplate divActionHideTooltipTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarH = ra5.h(fx7.c(ex7Var), jSONObject, TtmlNode.ATTR_ID, acb.c, ex7Var.c(), divActionHideTooltipTemplate != null ? divActionHideTooltipTemplate.a : null);
        y45.i(tp3VarH, "readFieldWithExpression(…llowOverride, parent?.id)");
        return new DivActionHideTooltipTemplate(tp3VarH);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionHideTooltipTemplate divActionHideTooltipTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divActionHideTooltipTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.D(ex7Var, jSONObject, TtmlNode.ATTR_ID, divActionHideTooltipTemplate.a);
        tb5.v(ex7Var, jSONObject, "type", "hide_tooltip");
        return jSONObject;
    }
}
