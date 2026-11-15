package defpackage;

import com.yandex.div2.DivPageSize;
import com.yandex.div2.DivPageSizeTemplate;
import com.yandex.div2.DivPercentageSize;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class en2 implements lga {
    public final JsonParserComponent a;

    public en2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivPageSize a(ex7 ex7Var, DivPageSizeTemplate divPageSizeTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divPageSizeTemplate, "template");
        y45.j(jSONObject, "data");
        Object objD = sa5.d(ex7Var, divPageSizeTemplate.a, jSONObject, "page_width", this.a.J5(), this.a.H5());
        y45.i(objD, "resolve(context, templat…tageSizeJsonEntityParser)");
        return new DivPageSize((DivPercentageSize) objD);
    }
}
