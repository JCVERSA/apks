package com.yandex.div2;

import defpackage.ex7;
import defpackage.kw9;
import defpackage.lga;
import defpackage.ra3;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class j implements lga {
    public final JsonParserComponent a;

    public j(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionScrollDestination a(ex7 ex7Var, DivActionScrollDestinationTemplate divActionScrollDestinationTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divActionScrollDestinationTemplate, "template");
        y45.j(jSONObject, "data");
        if (divActionScrollDestinationTemplate instanceof DivActionScrollDestinationTemplate.d) {
            return new DivActionScrollDestination.d(((p5.d) this.a.T9().getValue()).a(ex7Var, ((DivActionScrollDestinationTemplate.d) divActionScrollDestinationTemplate).c(), jSONObject));
        }
        if (divActionScrollDestinationTemplate instanceof DivActionScrollDestinationTemplate.c) {
            return new DivActionScrollDestination.c(((o5.d) this.a.E9().getValue()).a(ex7Var, ((DivActionScrollDestinationTemplate.c) divActionScrollDestinationTemplate).c(), jSONObject));
        }
        if (divActionScrollDestinationTemplate instanceof DivActionScrollDestinationTemplate.e) {
            return new DivActionScrollDestination.e(((kw9) this.a.W9().getValue()).a(ex7Var, ((DivActionScrollDestinationTemplate.e) divActionScrollDestinationTemplate).c(), jSONObject));
        }
        if (divActionScrollDestinationTemplate instanceof DivActionScrollDestinationTemplate.b) {
            return new DivActionScrollDestination.b(((ra3) this.a.B9().getValue()).a(ex7Var, ((DivActionScrollDestinationTemplate.b) divActionScrollDestinationTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
