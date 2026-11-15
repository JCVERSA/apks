package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.ex7;
import defpackage.lga;
import defpackage.sa5;
import defpackage.y45;
import java.util.List;
import org.json.JSONObject;

public final class i4 implements lga {
    public final JsonParserComponent a;

    public i4(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivText.Ellipsis a(ex7 ex7Var, DivTextTemplate.EllipsisTemplate ellipsisTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(ellipsisTemplate, "template");
        y45.j(jSONObject, "data");
        List listB = sa5.B(ex7Var, ellipsisTemplate.a, jSONObject, "actions", this.a.w0(), this.a.u0());
        List listB2 = sa5.B(ex7Var, ellipsisTemplate.b, jSONObject, "images", this.a.i8(), this.a.g8());
        List listB3 = sa5.B(ex7Var, ellipsisTemplate.c, jSONObject, "ranges", this.a.u8(), this.a.s8());
        Expression expressionG = sa5.g(ex7Var, ellipsisTemplate.d, jSONObject, "text", acb.c);
        y45.i(expressionG, "resolveExpression(contex…ext\", TYPE_HELPER_STRING)");
        return new DivText.Ellipsis(listB, listB2, listB3, expressionG);
    }
}
