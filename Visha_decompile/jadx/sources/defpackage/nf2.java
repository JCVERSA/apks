package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.DivActionShowTooltipTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class nf2 implements pd9, gfa {
    public final JsonParserComponent a;

    public nf2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionShowTooltipTemplate c(ex7 ex7Var, DivActionShowTooltipTemplate divActionShowTooltipTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, TtmlNode.ATTR_ID, acb.c, zC, divActionShowTooltipTemplate != null ? divActionShowTooltipTemplate.a : null);
        y45.i(tp3VarH, "readFieldWithExpression(…llowOverride, parent?.id)");
        tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "multiple", acb.a, zC, divActionShowTooltipTemplate != null ? divActionShowTooltipTemplate.b : null, ParsingConvertersKt.f);
        y45.i(tp3VarU, "readOptionalFieldWithExp…multiple, ANY_TO_BOOLEAN)");
        return new DivActionShowTooltipTemplate(tp3VarH, tp3VarU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionShowTooltipTemplate divActionShowTooltipTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divActionShowTooltipTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.D(ex7Var, jSONObject, TtmlNode.ATTR_ID, divActionShowTooltipTemplate.a);
        ra5.D(ex7Var, jSONObject, "multiple", divActionShowTooltipTemplate.b);
        tb5.v(ex7Var, jSONObject, "type", "show_tooltip");
        return jSONObject;
    }
}
