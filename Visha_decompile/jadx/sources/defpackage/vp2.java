package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivShape;
import com.yandex.div2.DivShapeDrawable;
import com.yandex.div2.DivShapeDrawableTemplate;
import com.yandex.div2.DivStroke;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class vp2 implements lga {
    public final JsonParserComponent a;

    public vp2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivShapeDrawable a(ex7 ex7Var, DivShapeDrawableTemplate divShapeDrawableTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divShapeDrawableTemplate, "template");
        y45.j(jSONObject, "data");
        Expression expressionH = sa5.h(ex7Var, divShapeDrawableTemplate.a, jSONObject, "color", acb.f, ParsingConvertersKt.b);
        y45.i(expressionH, "resolveExpression(contex…LOR, STRING_TO_COLOR_INT)");
        Object objD = sa5.d(ex7Var, divShapeDrawableTemplate.b, jSONObject, "shape", this.a.U6(), this.a.S6());
        y45.i(objD, "resolve(context, templat…divShapeJsonEntityParser)");
        return new DivShapeDrawable(expressionH, (DivShape) objD, (DivStroke) sa5.p(ex7Var, divShapeDrawableTemplate.c, jSONObject, "stroke", this.a.y7(), this.a.w7()));
    }
}
