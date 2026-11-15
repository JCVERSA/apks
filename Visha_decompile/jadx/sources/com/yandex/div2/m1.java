package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.livecaption.constant.ICode;
import defpackage.acb;
import defpackage.ex7;
import defpackage.lga;
import defpackage.sa5;
import defpackage.tp3;
import defpackage.y45;
import defpackage.zbb;
import org.json.JSONObject;

public final class m1 implements lga {
    public final JsonParserComponent a;

    public m1(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivFocus.NextFocusIds a(ex7 ex7Var, DivFocusTemplate.NextFocusIdsTemplate nextFocusIdsTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(nextFocusIdsTemplate, "template");
        y45.j(jSONObject, "data");
        tp3 tp3Var = nextFocusIdsTemplate.a;
        zbb zbbVar = acb.c;
        return new DivFocus.NextFocusIds(sa5.r(ex7Var, tp3Var, jSONObject, ICode.CALL.CALL_DATA_DIRECTION_DOWN, zbbVar), sa5.r(ex7Var, nextFocusIdsTemplate.b, jSONObject, "forward", zbbVar), sa5.r(ex7Var, nextFocusIdsTemplate.c, jSONObject, TtmlNode.LEFT, zbbVar), sa5.r(ex7Var, nextFocusIdsTemplate.d, jSONObject, TtmlNode.RIGHT, zbbVar), sa5.r(ex7Var, nextFocusIdsTemplate.e, jSONObject, ICode.CALL.CALL_DATA_DIRECTION_UP, zbbVar));
    }
}
