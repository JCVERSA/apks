package defpackage;

import com.transsion.livecaption.constant.ICode;
import com.yandex.div2.DivActionCopyToClipboard;
import com.yandex.div2.DivActionCopyToClipboardContent;
import com.yandex.div2.JsonParserComponent;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class qe2 implements pd9, w92 {
    public final JsonParserComponent a;

    public qe2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionCopyToClipboard a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        Object objG = tb5.g(ex7Var, jSONObject, ICode.CALL.CALL_KEY_CONTENT, this.a.c0());
        y45.i(objG, "read(context, data, \"con…dContentJsonEntityParser)");
        return new DivActionCopyToClipboard((DivActionCopyToClipboardContent) objG);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionCopyToClipboard divActionCopyToClipboard) {
        y45.j(ex7Var, "context");
        y45.j(divActionCopyToClipboard, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        tb5.x(ex7Var, jSONObject, ICode.CALL.CALL_KEY_CONTENT, divActionCopyToClipboard.a, this.a.c0());
        tb5.v(ex7Var, jSONObject, "type", "copy_to_clipboard");
        return jSONObject;
    }
}
