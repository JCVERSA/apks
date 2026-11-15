package defpackage;

import com.transsion.livecaption.constant.ICode;
import com.yandex.div2.DivActionCopyToClipboardTemplate;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class re2 implements pd9, gfa {
    public final JsonParserComponent a;

    public re2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionCopyToClipboardTemplate c(ex7 ex7Var, DivActionCopyToClipboardTemplate divActionCopyToClipboardTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        tp3 tp3VarF = ra5.f(fx7.c(ex7Var), jSONObject, ICode.CALL.CALL_KEY_CONTENT, ex7Var.c(), divActionCopyToClipboardTemplate != null ? divActionCopyToClipboardTemplate.a : null, this.a.d0());
        y45.i(tp3VarF, "readField(context, data,…ontentJsonTemplateParser)");
        return new DivActionCopyToClipboardTemplate(tp3VarF);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionCopyToClipboardTemplate divActionCopyToClipboardTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divActionCopyToClipboardTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.I(ex7Var, jSONObject, ICode.CALL.CALL_KEY_CONTENT, divActionCopyToClipboardTemplate.a, this.a.d0());
        tb5.v(ex7Var, jSONObject, "type", "copy_to_clipboard");
        return jSONObject;
    }
}
