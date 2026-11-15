package com.yandex.div2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.ex7;
import defpackage.jw9;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.qa3;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class i implements pd9, w92 {
    public final JsonParserComponent a;

    public i(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    public DivActionScrollDestinationTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivActionScrollDestinationTemplate divActionScrollDestinationTemplate = za3Var instanceof DivActionScrollDestinationTemplate ? (DivActionScrollDestinationTemplate) za3Var : null;
        if (divActionScrollDestinationTemplate != null && (strA = divActionScrollDestinationTemplate.a()) != null) {
            strU = strA;
        }
        switch (strU.hashCode()) {
            case -1019779949:
                if (strU.equals(TypedValues.CycleType.S_WAVE_OFFSET)) {
                    return new DivActionScrollDestinationTemplate.d(((p5.c) this.a.S9().getValue()).c(ex7Var, (OffsetDestinationTemplate) (divActionScrollDestinationTemplate != null ? divActionScrollDestinationTemplate.b() : null), jSONObject));
                }
                break;
            case 100571:
                if (strU.equals(TtmlNode.END)) {
                    return new DivActionScrollDestinationTemplate.b(((qa3) this.a.A9().getValue()).c(ex7Var, (EndDestinationTemplate) (divActionScrollDestinationTemplate != null ? divActionScrollDestinationTemplate.b() : null), jSONObject));
                }
                break;
            case 100346066:
                if (strU.equals("index")) {
                    return new DivActionScrollDestinationTemplate.c(((o5.c) this.a.D9().getValue()).c(ex7Var, (IndexDestinationTemplate) (divActionScrollDestinationTemplate != null ? divActionScrollDestinationTemplate.b() : null), jSONObject));
                }
                break;
            case 109757538:
                if (strU.equals(TtmlNode.START)) {
                    return new DivActionScrollDestinationTemplate.e(((jw9) this.a.V9().getValue()).c(ex7Var, (StartDestinationTemplate) (divActionScrollDestinationTemplate != null ? divActionScrollDestinationTemplate.b() : null), jSONObject));
                }
                break;
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionScrollDestinationTemplate divActionScrollDestinationTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divActionScrollDestinationTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divActionScrollDestinationTemplate instanceof DivActionScrollDestinationTemplate.d) {
            return ((p5.c) this.a.S9().getValue()).b(ex7Var, ((DivActionScrollDestinationTemplate.d) divActionScrollDestinationTemplate).c());
        }
        if (divActionScrollDestinationTemplate instanceof DivActionScrollDestinationTemplate.c) {
            return ((o5.c) this.a.D9().getValue()).b(ex7Var, ((DivActionScrollDestinationTemplate.c) divActionScrollDestinationTemplate).c());
        }
        if (divActionScrollDestinationTemplate instanceof DivActionScrollDestinationTemplate.e) {
            return ((jw9) this.a.V9().getValue()).b(ex7Var, ((DivActionScrollDestinationTemplate.e) divActionScrollDestinationTemplate).c());
        }
        if (divActionScrollDestinationTemplate instanceof DivActionScrollDestinationTemplate.b) {
            return ((qa3) this.a.A9().getValue()).b(ex7Var, ((DivActionScrollDestinationTemplate.b) divActionScrollDestinationTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
