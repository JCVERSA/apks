package com.yandex.div2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.ex7;
import defpackage.iw9;
import defpackage.mx7;
import defpackage.pa3;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class h implements pd9, w92 {
    public final JsonParserComponent a;

    public h(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    public DivActionScrollDestination a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        switch (strU.hashCode()) {
            case -1019779949:
                if (strU.equals(TypedValues.CycleType.S_WAVE_OFFSET)) {
                    return new DivActionScrollDestination.d(((p5.b) this.a.R9().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 100571:
                if (strU.equals(TtmlNode.END)) {
                    return new DivActionScrollDestination.b(((pa3) this.a.z9().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 100346066:
                if (strU.equals("index")) {
                    return new DivActionScrollDestination.c(((o5.b) this.a.C9().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 109757538:
                if (strU.equals(TtmlNode.START)) {
                    return new DivActionScrollDestination.e(((iw9) this.a.U9().getValue()).a(ex7Var, jSONObject));
                }
                break;
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivActionScrollDestinationTemplate divActionScrollDestinationTemplate = za3VarA instanceof DivActionScrollDestinationTemplate ? (DivActionScrollDestinationTemplate) za3VarA : null;
        if (divActionScrollDestinationTemplate != null) {
            return ((j) this.a.F0().getValue()).a(ex7Var, divActionScrollDestinationTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionScrollDestination divActionScrollDestination) {
        y45.j(ex7Var, "context");
        y45.j(divActionScrollDestination, ES6Iterator.VALUE_PROPERTY);
        if (divActionScrollDestination instanceof DivActionScrollDestination.d) {
            return ((p5.b) this.a.R9().getValue()).b(ex7Var, ((DivActionScrollDestination.d) divActionScrollDestination).c());
        }
        if (divActionScrollDestination instanceof DivActionScrollDestination.c) {
            return ((o5.b) this.a.C9().getValue()).b(ex7Var, ((DivActionScrollDestination.c) divActionScrollDestination).c());
        }
        if (divActionScrollDestination instanceof DivActionScrollDestination.e) {
            return ((iw9) this.a.U9().getValue()).b(ex7Var, ((DivActionScrollDestination.e) divActionScrollDestination).c());
        }
        if (divActionScrollDestination instanceof DivActionScrollDestination.b) {
            return ((pa3) this.a.z9().getValue()).b(ex7Var, ((DivActionScrollDestination.b) divActionScrollDestination).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
