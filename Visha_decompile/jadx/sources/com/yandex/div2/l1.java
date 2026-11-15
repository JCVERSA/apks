package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.livecaption.constant.ICode;
import defpackage.acb;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.pd9;
import defpackage.ra5;
import defpackage.tp3;
import defpackage.y45;
import defpackage.zbb;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class l1 implements pd9, gfa {
    public final JsonParserComponent a;

    public l1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivFocusTemplate.NextFocusIdsTemplate c(ex7 ex7Var, DivFocusTemplate.NextFocusIdsTemplate nextFocusIdsTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        boolean zC = ex7Var.c();
        ex7 ex7VarC = fx7.c(ex7Var);
        zbb zbbVar = acb.c;
        tp3 tp3VarT = ra5.t(ex7VarC, jSONObject, ICode.CALL.CALL_DATA_DIRECTION_DOWN, zbbVar, zC, nextFocusIdsTemplate != null ? nextFocusIdsTemplate.a : null);
        y45.i(tp3VarT, "readOptionalFieldWithExp…owOverride, parent?.down)");
        tp3 tp3VarT2 = ra5.t(ex7VarC, jSONObject, "forward", zbbVar, zC, nextFocusIdsTemplate != null ? nextFocusIdsTemplate.b : null);
        y45.i(tp3VarT2, "readOptionalFieldWithExp…verride, parent?.forward)");
        tp3 tp3VarT3 = ra5.t(ex7VarC, jSONObject, TtmlNode.LEFT, zbbVar, zC, nextFocusIdsTemplate != null ? nextFocusIdsTemplate.c : null);
        y45.i(tp3VarT3, "readOptionalFieldWithExp…owOverride, parent?.left)");
        tp3 tp3VarT4 = ra5.t(ex7VarC, jSONObject, TtmlNode.RIGHT, zbbVar, zC, nextFocusIdsTemplate != null ? nextFocusIdsTemplate.d : null);
        y45.i(tp3VarT4, "readOptionalFieldWithExp…wOverride, parent?.right)");
        tp3 tp3VarT5 = ra5.t(ex7VarC, jSONObject, ICode.CALL.CALL_DATA_DIRECTION_UP, zbbVar, zC, nextFocusIdsTemplate != null ? nextFocusIdsTemplate.e : null);
        y45.i(tp3VarT5, "readOptionalFieldWithExp…llowOverride, parent?.up)");
        return new DivFocusTemplate.NextFocusIdsTemplate(tp3VarT, tp3VarT2, tp3VarT3, tp3VarT4, tp3VarT5);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivFocusTemplate.NextFocusIdsTemplate nextFocusIdsTemplate) {
        y45.j(ex7Var, "context");
        y45.j(nextFocusIdsTemplate, ES6Iterator.VALUE_PROPERTY);
        JSONObject jSONObject = new JSONObject();
        ra5.D(ex7Var, jSONObject, ICode.CALL.CALL_DATA_DIRECTION_DOWN, nextFocusIdsTemplate.a);
        ra5.D(ex7Var, jSONObject, "forward", nextFocusIdsTemplate.b);
        ra5.D(ex7Var, jSONObject, TtmlNode.LEFT, nextFocusIdsTemplate.c);
        ra5.D(ex7Var, jSONObject, TtmlNode.RIGHT, nextFocusIdsTemplate.d);
        ra5.D(ex7Var, jSONObject, ICode.CALL.CALL_DATA_DIRECTION_UP, nextFocusIdsTemplate.e);
        return jSONObject;
    }
}
