package defpackage;

import com.yandex.div2.DivDimension;
import com.yandex.div2.DivPoint;
import com.yandex.div2.DivPointTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class po2 implements lga {
    public final JsonParserComponent a;

    public po2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPoint a(ex7 ex7Var, DivPointTemplate divPointTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divPointTemplate, "template");
        y45.j(jSONObject, "data");
        Object objD = sa5.d(ex7Var, divPointTemplate.a, jSONObject, "x", this.a.L2(), this.a.J2());
        y45.i(objD, "resolve(context, templat…imensionJsonEntityParser)");
        Object objD2 = sa5.d(ex7Var, divPointTemplate.b, jSONObject, "y", this.a.L2(), this.a.J2());
        y45.i(objD2, "resolve(context, templat…imensionJsonEntityParser)");
        return new DivPoint((DivDimension) objD, (DivDimension) objD2);
    }
}
