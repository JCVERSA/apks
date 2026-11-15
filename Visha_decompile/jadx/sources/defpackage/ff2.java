package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionHideTooltip;
import com.yandex.div2.DivActionHideTooltipTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class ff2 implements lga {
    public final JsonParserComponent a;

    public ff2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionHideTooltip a(ex7 ex7Var, DivActionHideTooltipTemplate divActionHideTooltipTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divActionHideTooltipTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionG = sa5.g(ex7Var, divActionHideTooltipTemplate.a, jSONObject, TtmlNode.ATTR_ID, acb.c);
        y45.i(expressionG, "resolveExpression(contex…\"id\", TYPE_HELPER_STRING)");
        return new DivActionHideTooltip(expressionG);
    }
}
