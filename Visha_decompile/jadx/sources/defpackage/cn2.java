package defpackage;

import com.yandex.div2.DivPageSize;
import com.yandex.div2.DivPercentageSize;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class cn2 implements pd9, w92 {
    public final JsonParserComponent a;

    public cn2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPageSize a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Object objG = tb5.g(ex7Var, jSONObject, "page_width", this.a.H5());
        y45.i(objG, "read(context, data, \"pag…tageSizeJsonEntityParser)");
        return new DivPageSize((DivPercentageSize) objG);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivPageSize divPageSize) {
        y45.j(ex7Var, "context");
        y45.j(divPageSize, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.x(ex7Var, jSONObject, "page_width", divPageSize.a, this.a.H5());
        tb5.v(ex7Var, jSONObject, "type", "percentage");
        return jSONObject;
    }
}
