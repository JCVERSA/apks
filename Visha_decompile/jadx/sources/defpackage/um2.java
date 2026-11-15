package defpackage;

import com.hisavana.common.tracking.TrackingKey;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAbsoluteEdgeInsets;
import com.yandex.div2.DivNinePatchBackground;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class um2 implements pd9, w92 {
    public final JsonParserComponent a;

    public um2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivNinePatchBackground a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Expression expressionE = pa5.e(ex7Var, jSONObject, TrackingKey.IMAGE_URL, acb.e, ParsingConvertersKt.e);
        y45.i(expressionE, "readExpression(context, …E_HELPER_URI, ANY_TO_URI)");
        Object objG = tb5.g(ex7Var, jSONObject, "insets", this.a.E());
        y45.i(objG, "read(context, data, \"ins…geInsetsJsonEntityParser)");
        return new DivNinePatchBackground(expressionE, (DivAbsoluteEdgeInsets) objG);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivNinePatchBackground divNinePatchBackground) {
        y45.j(ex7Var, "context");
        y45.j(divNinePatchBackground, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        pa5.q(ex7Var, jSONObject, TrackingKey.IMAGE_URL, divNinePatchBackground.a, ParsingConvertersKt.c);
        tb5.x(ex7Var, jSONObject, "insets", divNinePatchBackground.b, this.a.E());
        tb5.v(ex7Var, jSONObject, "type", "nine_patch_image");
        return jSONObject;
    }
}
