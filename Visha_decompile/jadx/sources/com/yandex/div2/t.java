package com.yandex.div2;

import defpackage.be2;
import defpackage.bf2;
import defpackage.ex7;
import defpackage.ff2;
import defpackage.if2;
import defpackage.lf2;
import defpackage.lga;
import defpackage.of2;
import defpackage.pe2;
import defpackage.sd2;
import defpackage.se2;
import defpackage.vd2;
import defpackage.ve2;
import defpackage.y45;
import defpackage.yd2;
import defpackage.ye2;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class t implements lga {
    public final JsonParserComponent a;

    public t(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public DivActionTyped a(ex7 ex7Var, DivActionTypedTemplate divActionTypedTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divActionTypedTemplate, "template");
        y45.j(jSONObject, "data");
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.a) {
            return new DivActionTyped.a(((DivActionAnimatorStartJsonParser.d) this.a.M().getValue()).a(ex7Var, ((DivActionTypedTemplate.a) divActionTypedTemplate).c(), jSONObject));
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.b) {
            return new DivActionTyped.b(((sd2) this.a.P().getValue()).a(ex7Var, ((DivActionTypedTemplate.b) divActionTypedTemplate).c(), jSONObject));
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.c) {
            return new DivActionTyped.c(((vd2) this.a.S().getValue()).a(ex7Var, ((DivActionTypedTemplate.c) divActionTypedTemplate).c(), jSONObject));
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.d) {
            return new DivActionTyped.d(((yd2) this.a.V().getValue()).a(ex7Var, ((DivActionTypedTemplate.d) divActionTypedTemplate).c(), jSONObject));
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.e) {
            return new DivActionTyped.e(((be2) this.a.Y().getValue()).a(ex7Var, ((DivActionTypedTemplate.e) divActionTypedTemplate).c(), jSONObject));
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.f) {
            return new DivActionTyped.f(((pe2) this.a.b0().getValue()).a(ex7Var, ((DivActionTypedTemplate.f) divActionTypedTemplate).c(), jSONObject));
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.h) {
            return new DivActionTyped.h(((se2) this.a.h0().getValue()).a(ex7Var, ((DivActionTypedTemplate.h) divActionTypedTemplate).c(), jSONObject));
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.i) {
            return new DivActionTyped.i(((ve2) this.a.k0().getValue()).a(ex7Var, ((DivActionTypedTemplate.i) divActionTypedTemplate).c(), jSONObject));
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.j) {
            return new DivActionTyped.j(((ye2) this.a.n0().getValue()).a(ex7Var, ((DivActionTypedTemplate.j) divActionTypedTemplate).c(), jSONObject));
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.k) {
            return new DivActionTyped.k(((bf2) this.a.q0().getValue()).a(ex7Var, ((DivActionTypedTemplate.k) divActionTypedTemplate).c(), jSONObject));
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.l) {
            return new DivActionTyped.l(((ff2) this.a.t0().getValue()).a(ex7Var, ((DivActionTypedTemplate.l) divActionTypedTemplate).c(), jSONObject));
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.m) {
            return new DivActionTyped.m(((DivActionScrollByJsonParser.d) this.a.C0().getValue()).a(ex7Var, ((DivActionTypedTemplate.m) divActionTypedTemplate).c(), jSONObject));
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.n) {
            return new DivActionTyped.n(((k.d) this.a.I0().getValue()).a(ex7Var, ((DivActionTypedTemplate.n) divActionTypedTemplate).c(), jSONObject));
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.o) {
            return new DivActionTyped.o(((l.d) this.a.L0().getValue()).a(ex7Var, ((DivActionTypedTemplate.o) divActionTypedTemplate).c(), jSONObject));
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.p) {
            return new DivActionTyped.p(((if2) this.a.O0().getValue()).a(ex7Var, ((DivActionTypedTemplate.p) divActionTypedTemplate).c(), jSONObject));
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.q) {
            return new DivActionTyped.q(((lf2) this.a.R0().getValue()).a(ex7Var, ((DivActionTypedTemplate.q) divActionTypedTemplate).c(), jSONObject));
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.r) {
            return new DivActionTyped.r(((of2) this.a.U0().getValue()).a(ex7Var, ((DivActionTypedTemplate.r) divActionTypedTemplate).c(), jSONObject));
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.s) {
            return new DivActionTyped.s(((n) this.a.X0().getValue()).a(ex7Var, ((DivActionTypedTemplate.s) divActionTypedTemplate).c(), jSONObject));
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.t) {
            return new DivActionTyped.t(((DivActionTimerJsonParser.d) this.a.g1().getValue()).a(ex7Var, ((DivActionTypedTemplate.t) divActionTypedTemplate).c(), jSONObject));
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.u) {
            return new DivActionTyped.u(((DivActionVideoJsonParser.d) this.a.m1().getValue()).a(ex7Var, ((DivActionTypedTemplate.u) divActionTypedTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
