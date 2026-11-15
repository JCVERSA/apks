package defpackage;

import com.yandex.div2.DivDimension;
import com.yandex.div2.DivPoint;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class no2 implements pd9, w92 {
    public final JsonParserComponent a;

    public no2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPoint a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Object objG = tb5.g(ex7Var, jSONObject, "x", this.a.J2());
        y45.i(objG, "read(context, data, \"x\",…imensionJsonEntityParser)");
        Object objG2 = tb5.g(ex7Var, jSONObject, "y", this.a.J2());
        y45.i(objG2, "read(context, data, \"y\",…imensionJsonEntityParser)");
        return new DivPoint((DivDimension) objG, (DivDimension) objG2);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivPoint divPoint) {
        y45.j(ex7Var, "context");
        y45.j(divPoint, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.x(ex7Var, jSONObject, "x", divPoint.a, this.a.J2());
        tb5.x(ex7Var, jSONObject, "y", divPoint.b, this.a.J2());
        return jSONObject;
    }
}
