package defpackage;

import com.hisavana.common.tracking.TrackingKey;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.DivNinePatchBackgroundTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class vm2 implements pd9, gfa {
    public final JsonParserComponent a;

    public vm2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivNinePatchBackgroundTemplate c(ex7 ex7Var, DivNinePatchBackgroundTemplate divNinePatchBackgroundTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, TrackingKey.IMAGE_URL, acb.e, zC, divNinePatchBackgroundTemplate != null ? divNinePatchBackgroundTemplate.a : null, ParsingConvertersKt.e);
        y45.i(tp3VarI, "readFieldWithExpression(…nt?.imageUrl, ANY_TO_URI)");
        tp3 tp3VarF = ra5.f(ex7VarC, jSONObject, "insets", zC, divNinePatchBackgroundTemplate != null ? divNinePatchBackgroundTemplate.b : null, this.a.F());
        y45.i(tp3VarF, "readField(context, data,…InsetsJsonTemplateParser)");
        return new DivNinePatchBackgroundTemplate(tp3VarI, tp3VarF);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivNinePatchBackgroundTemplate divNinePatchBackgroundTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divNinePatchBackgroundTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.E(ex7Var, jSONObject, TrackingKey.IMAGE_URL, divNinePatchBackgroundTemplate.a, ParsingConvertersKt.c);
        ra5.I(ex7Var, jSONObject, "insets", divNinePatchBackgroundTemplate.b, this.a.F());
        tb5.v(ex7Var, jSONObject, "type", "nine_patch_image");
        return jSONObject;
    }
}
