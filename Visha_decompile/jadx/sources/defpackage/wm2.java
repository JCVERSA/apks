package defpackage;

import com.hisavana.common.tracking.TrackingKey;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAbsoluteEdgeInsets;
import com.yandex.div2.DivNinePatchBackground;
import com.yandex.div2.DivNinePatchBackgroundTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class wm2 implements lga {
    public final JsonParserComponent a;

    public wm2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivNinePatchBackground a(ex7 ex7Var, DivNinePatchBackgroundTemplate divNinePatchBackgroundTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divNinePatchBackgroundTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionH = sa5.h(ex7Var, divNinePatchBackgroundTemplate.a, jSONObject, TrackingKey.IMAGE_URL, acb.e, ParsingConvertersKt.e);
        y45.i(expressionH, "resolveExpression(contex…E_HELPER_URI, ANY_TO_URI)");
        Object objD = sa5.d(ex7Var, divNinePatchBackgroundTemplate.b, jSONObject, "insets", this.a.G(), this.a.E());
        y45.i(objD, "resolve(context, templat…geInsetsJsonEntityParser)");
        return new DivNinePatchBackground(expressionH, (DivAbsoluteEdgeInsets) objD);
    }
}
