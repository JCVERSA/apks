package defpackage;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionDownload;
import com.yandex.div2.DivActionDownloadTemplate;
import com.yandex.div2.JsonParserComponent;
import java.util.List;
import org.json.JSONObject;

public final class ye2 implements lga {
    public final JsonParserComponent a;

    public ye2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionDownload a(ex7 ex7Var, DivActionDownloadTemplate divActionDownloadTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divActionDownloadTemplate, "template");
        y45.j(jSONObject, "data");
        List listB = sa5.B(ex7Var, divActionDownloadTemplate.a, jSONObject, "on_fail_actions", this.a.w0(), this.a.u0());
        List listB2 = sa5.B(ex7Var, divActionDownloadTemplate.b, jSONObject, "on_success_actions", this.a.w0(), this.a.u0());
        Expression expressionH = sa5.h(ex7Var, divActionDownloadTemplate.c, jSONObject, "url", acb.e, ParsingConvertersKt.e);
        y45.i(expressionH, "resolveExpression(contex…E_HELPER_URI, ANY_TO_URI)");
        return new DivActionDownload(listB, listB2, expressionH);
    }
}
