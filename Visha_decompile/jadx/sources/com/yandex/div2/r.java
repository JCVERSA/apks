package com.yandex.div2;

import defpackage.df2;
import defpackage.ex7;
import defpackage.gf2;
import defpackage.jf2;
import defpackage.mf2;
import defpackage.mx7;
import defpackage.ne2;
import defpackage.pd9;
import defpackage.qd2;
import defpackage.qe2;
import defpackage.tb5;
import defpackage.td2;
import defpackage.te2;
import defpackage.w92;
import defpackage.wd2;
import defpackage.we2;
import defpackage.y45;
import defpackage.za3;
import defpackage.zd2;
import defpackage.ze2;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class r implements pd9, w92 {
    public final JsonParserComponent a;

    public r(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    public DivActionTyped a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        switch (strU.hashCode()) {
            case -1623648839:
                if (strU.equals("set_variable")) {
                    return new DivActionTyped.q(((jf2) this.a.P0().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case -1623635702:
                if (strU.equals("animator_start")) {
                    return new DivActionTyped.a(((DivActionAnimatorStartJsonParser.b) this.a.K().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case -1254965146:
                if (strU.equals("clear_focus")) {
                    return new DivActionTyped.f(((ne2) this.a.Z().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case -1160753574:
                if (strU.equals("animator_stop")) {
                    return new DivActionTyped.b(((qd2) this.a.N().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case -891535336:
                if (strU.equals("submit")) {
                    return new DivActionTyped.s(((m) this.a.V0().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case -796594542:
                if (strU.equals("set_stored_value")) {
                    return new DivActionTyped.p(((gf2) this.a.M0().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case -404256420:
                if (strU.equals("copy_to_clipboard")) {
                    return new DivActionTyped.h(((qe2) this.a.f0().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 10055918:
                if (strU.equals("array_set_value")) {
                    return new DivActionTyped.e(((zd2) this.a.W().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 110364485:
                if (strU.equals("timer")) {
                    return new DivActionTyped.t(((DivActionTimerJsonParser.b) this.a.e1().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 112202875:
                if (strU.equals("video")) {
                    return new DivActionTyped.u(((DivActionVideoJsonParser.b) this.a.k1().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 203934236:
                if (strU.equals("array_remove_value")) {
                    return new DivActionTyped.d(((wd2) this.a.T().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 301532353:
                if (strU.equals("show_tooltip")) {
                    return new DivActionTyped.r(((mf2) this.a.S0().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 417790729:
                if (strU.equals("scroll_by")) {
                    return new DivActionTyped.m(((DivActionScrollByJsonParser.b) this.a.A0().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 417791277:
                if (strU.equals("scroll_to")) {
                    return new DivActionTyped.n(((k.b) this.a.G0().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 932090484:
                if (strU.equals("set_state")) {
                    return new DivActionTyped.o(((l.b) this.a.J0().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 1427818632:
                if (strU.equals("download")) {
                    return new DivActionTyped.j(((we2) this.a.l0().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 1550697109:
                if (strU.equals("focus_element")) {
                    return new DivActionTyped.k(((ze2) this.a.o0().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 1587919371:
                if (strU.equals("dict_set_value")) {
                    return new DivActionTyped.i(((te2) this.a.i0().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 1715728902:
                if (strU.equals("hide_tooltip")) {
                    return new DivActionTyped.l(((df2) this.a.r0().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 1811437713:
                if (strU.equals("array_insert_value")) {
                    return new DivActionTyped.c(((td2) this.a.Q().getValue()).a(ex7Var, jSONObject));
                }
                break;
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivActionTypedTemplate divActionTypedTemplate = za3VarA instanceof DivActionTypedTemplate ? (DivActionTypedTemplate) za3VarA : null;
        if (divActionTypedTemplate != null) {
            return ((t) this.a.j1().getValue()).a(ex7Var, divActionTypedTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionTyped divActionTyped) {
        y45.j(ex7Var, "context");
        y45.j(divActionTyped, ES6Iterator.VALUE_PROPERTY);
        if (divActionTyped instanceof DivActionTyped.a) {
            return ((DivActionAnimatorStartJsonParser.b) this.a.K().getValue()).b(ex7Var, ((DivActionTyped.a) divActionTyped).c());
        }
        if (divActionTyped instanceof DivActionTyped.b) {
            return ((qd2) this.a.N().getValue()).b(ex7Var, ((DivActionTyped.b) divActionTyped).c());
        }
        if (divActionTyped instanceof DivActionTyped.c) {
            return ((td2) this.a.Q().getValue()).b(ex7Var, ((DivActionTyped.c) divActionTyped).c());
        }
        if (divActionTyped instanceof DivActionTyped.d) {
            return ((wd2) this.a.T().getValue()).b(ex7Var, ((DivActionTyped.d) divActionTyped).c());
        }
        if (divActionTyped instanceof DivActionTyped.e) {
            return ((zd2) this.a.W().getValue()).b(ex7Var, ((DivActionTyped.e) divActionTyped).c());
        }
        if (divActionTyped instanceof DivActionTyped.f) {
            return ((ne2) this.a.Z().getValue()).b(ex7Var, ((DivActionTyped.f) divActionTyped).c());
        }
        if (divActionTyped instanceof DivActionTyped.h) {
            return ((qe2) this.a.f0().getValue()).b(ex7Var, ((DivActionTyped.h) divActionTyped).c());
        }
        if (divActionTyped instanceof DivActionTyped.i) {
            return ((te2) this.a.i0().getValue()).b(ex7Var, ((DivActionTyped.i) divActionTyped).c());
        }
        if (divActionTyped instanceof DivActionTyped.j) {
            return ((we2) this.a.l0().getValue()).b(ex7Var, ((DivActionTyped.j) divActionTyped).c());
        }
        if (divActionTyped instanceof DivActionTyped.k) {
            return ((ze2) this.a.o0().getValue()).b(ex7Var, ((DivActionTyped.k) divActionTyped).c());
        }
        if (divActionTyped instanceof DivActionTyped.l) {
            return ((df2) this.a.r0().getValue()).b(ex7Var, ((DivActionTyped.l) divActionTyped).c());
        }
        if (divActionTyped instanceof DivActionTyped.m) {
            return ((DivActionScrollByJsonParser.b) this.a.A0().getValue()).b(ex7Var, ((DivActionTyped.m) divActionTyped).c());
        }
        if (divActionTyped instanceof DivActionTyped.n) {
            return ((k.b) this.a.G0().getValue()).b(ex7Var, ((DivActionTyped.n) divActionTyped).c());
        }
        if (divActionTyped instanceof DivActionTyped.o) {
            return ((l.b) this.a.J0().getValue()).b(ex7Var, ((DivActionTyped.o) divActionTyped).c());
        }
        if (divActionTyped instanceof DivActionTyped.p) {
            return ((gf2) this.a.M0().getValue()).b(ex7Var, ((DivActionTyped.p) divActionTyped).c());
        }
        if (divActionTyped instanceof DivActionTyped.q) {
            return ((jf2) this.a.P0().getValue()).b(ex7Var, ((DivActionTyped.q) divActionTyped).c());
        }
        if (divActionTyped instanceof DivActionTyped.r) {
            return ((mf2) this.a.S0().getValue()).b(ex7Var, ((DivActionTyped.r) divActionTyped).c());
        }
        if (divActionTyped instanceof DivActionTyped.s) {
            return ((m) this.a.V0().getValue()).b(ex7Var, ((DivActionTyped.s) divActionTyped).c());
        }
        if (divActionTyped instanceof DivActionTyped.t) {
            return ((DivActionTimerJsonParser.b) this.a.e1().getValue()).b(ex7Var, ((DivActionTyped.t) divActionTyped).c());
        }
        if (divActionTyped instanceof DivActionTyped.u) {
            return ((DivActionVideoJsonParser.b) this.a.k1().getValue()).b(ex7Var, ((DivActionTyped.u) divActionTyped).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
