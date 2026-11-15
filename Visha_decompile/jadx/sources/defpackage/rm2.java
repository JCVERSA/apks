package defpackage;

import com.yandex.div2.DivFixedSize;
import com.yandex.div2.DivNeighbourPageSize;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class rm2 implements pd9, w92 {
    public final JsonParserComponent a;

    public rm2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivNeighbourPageSize a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Object objG = tb5.g(ex7Var, jSONObject, "neighbour_page_width", this.a.t3());
        y45.i(objG, "read(context, data, \"nei…ixedSizeJsonEntityParser)");
        return new DivNeighbourPageSize((DivFixedSize) objG);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivNeighbourPageSize divNeighbourPageSize) {
        y45.j(ex7Var, "context");
        y45.j(divNeighbourPageSize, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.x(ex7Var, jSONObject, "neighbour_page_width", divNeighbourPageSize.a, this.a.t3());
        tb5.v(ex7Var, jSONObject, "type", "fixed");
        return jSONObject;
    }
}
