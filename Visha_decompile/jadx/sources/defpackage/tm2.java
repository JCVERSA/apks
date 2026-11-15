package defpackage;

import com.yandex.div2.DivFixedSize;
import com.yandex.div2.DivNeighbourPageSize;
import com.yandex.div2.DivNeighbourPageSizeTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class tm2 implements lga {
    public final JsonParserComponent a;

    public tm2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivNeighbourPageSize a(ex7 ex7Var, DivNeighbourPageSizeTemplate divNeighbourPageSizeTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divNeighbourPageSizeTemplate, "template");
        y45.j(jSONObject, "data");
        Object objD = sa5.d(ex7Var, divNeighbourPageSizeTemplate.a, jSONObject, "neighbour_page_width", this.a.v3(), this.a.t3());
        y45.i(objD, "resolve(context, templat…ixedSizeJsonEntityParser)");
        return new DivNeighbourPageSize((DivFixedSize) objD);
    }
}
