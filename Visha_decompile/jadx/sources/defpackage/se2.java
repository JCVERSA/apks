package defpackage;

import com.transsion.livecaption.constant.ICode;
import com.yandex.div2.DivActionCopyToClipboard;
import com.yandex.div2.DivActionCopyToClipboardContent;
import com.yandex.div2.DivActionCopyToClipboardTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;

public final class se2 implements lga {
    public final JsonParserComponent a;

    public se2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionCopyToClipboard a(ex7 ex7Var, DivActionCopyToClipboardTemplate divActionCopyToClipboardTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divActionCopyToClipboardTemplate, "template");
        y45.j(jSONObject, "data");
        Object objD = sa5.d(ex7Var, divActionCopyToClipboardTemplate.a, jSONObject, ICode.CALL.CALL_KEY_CONTENT, this.a.e0(), this.a.c0());
        y45.i(objD, "resolve(context, templat…dContentJsonEntityParser)");
        return new DivActionCopyToClipboard((DivActionCopyToClipboardContent) objD);
    }
}
