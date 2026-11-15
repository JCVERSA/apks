package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionShowTooltip;
import com.yandex.div2.DivActionShowTooltipTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class of2 implements lga {
    public final JsonParserComponent a;

    public of2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionShowTooltip a(ex7 ex7Var, DivActionShowTooltipTemplate divActionShowTooltipTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divActionShowTooltipTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionG = sa5.g(ex7Var, divActionShowTooltipTemplate.a, jSONObject, TtmlNode.ATTR_ID, acb.c);
        y45.i(expressionG, "resolveExpression(contex…\"id\", TYPE_HELPER_STRING)");
        return new DivActionShowTooltip(expressionG, sa5.s(ex7Var, divActionShowTooltipTemplate.b, jSONObject, "multiple", acb.a, ParsingConvertersKt.f));
    }
}
