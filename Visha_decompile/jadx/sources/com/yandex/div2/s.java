package com.yandex.div2;

import defpackage.ae2;
import defpackage.af2;
import defpackage.ef2;
import defpackage.ex7;
import defpackage.hf2;
import defpackage.kf2;
import defpackage.mx7;
import defpackage.nf2;
import defpackage.oe2;
import defpackage.pd9;
import defpackage.pf2;
import defpackage.rd2;
import defpackage.re2;
import defpackage.tb5;
import defpackage.ud2;
import defpackage.ue2;
import defpackage.w92;
import defpackage.xd2;
import defpackage.xe2;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class s implements pd9, w92 {
    public final JsonParserComponent a;

    public s(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    public DivActionTypedTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivActionTypedTemplate divActionTypedTemplate = za3Var instanceof DivActionTypedTemplate ? (DivActionTypedTemplate) za3Var : null;
        if (divActionTypedTemplate != null && (strA = divActionTypedTemplate.a()) != null) {
            strU = strA;
        }
        switch (strU.hashCode()) {
            case -1623648839:
                if (strU.equals("set_variable")) {
                    return new DivActionTypedTemplate.q(((kf2) this.a.Q0().getValue()).c(ex7Var, (DivActionSetVariableTemplate) (divActionTypedTemplate != null ? divActionTypedTemplate.b() : null), jSONObject));
                }
                break;
            case -1623635702:
                if (strU.equals("animator_start")) {
                    return new DivActionTypedTemplate.a(((DivActionAnimatorStartJsonParser.c) this.a.L().getValue()).c(ex7Var, (DivActionAnimatorStartTemplate) (divActionTypedTemplate != null ? divActionTypedTemplate.b() : null), jSONObject));
                }
                break;
            case -1254965146:
                if (strU.equals("clear_focus")) {
                    return new DivActionTypedTemplate.f(((oe2) this.a.a0().getValue()).c(ex7Var, (DivActionClearFocusTemplate) (divActionTypedTemplate != null ? divActionTypedTemplate.b() : null), jSONObject));
                }
                break;
            case -1160753574:
                if (strU.equals("animator_stop")) {
                    return new DivActionTypedTemplate.b(((rd2) this.a.O().getValue()).c(ex7Var, (DivActionAnimatorStopTemplate) (divActionTypedTemplate != null ? divActionTypedTemplate.b() : null), jSONObject));
                }
                break;
            case -891535336:
                if (strU.equals("submit")) {
                    return new DivActionTypedTemplate.s(((pf2) this.a.W0().getValue()).c(ex7Var, (DivActionSubmitTemplate) (divActionTypedTemplate != null ? divActionTypedTemplate.b() : null), jSONObject));
                }
                break;
            case -796594542:
                if (strU.equals("set_stored_value")) {
                    return new DivActionTypedTemplate.p(((hf2) this.a.N0().getValue()).c(ex7Var, (DivActionSetStoredValueTemplate) (divActionTypedTemplate != null ? divActionTypedTemplate.b() : null), jSONObject));
                }
                break;
            case -404256420:
                if (strU.equals("copy_to_clipboard")) {
                    return new DivActionTypedTemplate.h(((re2) this.a.g0().getValue()).c(ex7Var, (DivActionCopyToClipboardTemplate) (divActionTypedTemplate != null ? divActionTypedTemplate.b() : null), jSONObject));
                }
                break;
            case 10055918:
                if (strU.equals("array_set_value")) {
                    return new DivActionTypedTemplate.e(((ae2) this.a.X().getValue()).c(ex7Var, (DivActionArraySetValueTemplate) (divActionTypedTemplate != null ? divActionTypedTemplate.b() : null), jSONObject));
                }
                break;
            case 110364485:
                if (strU.equals("timer")) {
                    return new DivActionTypedTemplate.t(((DivActionTimerJsonParser.c) this.a.f1().getValue()).c(ex7Var, (DivActionTimerTemplate) (divActionTypedTemplate != null ? divActionTypedTemplate.b() : null), jSONObject));
                }
                break;
            case 112202875:
                if (strU.equals("video")) {
                    return new DivActionTypedTemplate.u(((DivActionVideoJsonParser.c) this.a.l1().getValue()).c(ex7Var, (DivActionVideoTemplate) (divActionTypedTemplate != null ? divActionTypedTemplate.b() : null), jSONObject));
                }
                break;
            case 203934236:
                if (strU.equals("array_remove_value")) {
                    return new DivActionTypedTemplate.d(((xd2) this.a.U().getValue()).c(ex7Var, (DivActionArrayRemoveValueTemplate) (divActionTypedTemplate != null ? divActionTypedTemplate.b() : null), jSONObject));
                }
                break;
            case 301532353:
                if (strU.equals("show_tooltip")) {
                    return new DivActionTypedTemplate.r(((nf2) this.a.T0().getValue()).c(ex7Var, (DivActionShowTooltipTemplate) (divActionTypedTemplate != null ? divActionTypedTemplate.b() : null), jSONObject));
                }
                break;
            case 417790729:
                if (strU.equals("scroll_by")) {
                    return new DivActionTypedTemplate.m(((DivActionScrollByJsonParser.c) this.a.B0().getValue()).c(ex7Var, (DivActionScrollByTemplate) (divActionTypedTemplate != null ? divActionTypedTemplate.b() : null), jSONObject));
                }
                break;
            case 417791277:
                if (strU.equals("scroll_to")) {
                    return new DivActionTypedTemplate.n(((k.c) this.a.H0().getValue()).c(ex7Var, (DivActionScrollToTemplate) (divActionTypedTemplate != null ? divActionTypedTemplate.b() : null), jSONObject));
                }
                break;
            case 932090484:
                if (strU.equals("set_state")) {
                    return new DivActionTypedTemplate.o(((l.c) this.a.K0().getValue()).c(ex7Var, (DivActionSetStateTemplate) (divActionTypedTemplate != null ? divActionTypedTemplate.b() : null), jSONObject));
                }
                break;
            case 1427818632:
                if (strU.equals("download")) {
                    return new DivActionTypedTemplate.j(((xe2) this.a.m0().getValue()).c(ex7Var, (DivActionDownloadTemplate) (divActionTypedTemplate != null ? divActionTypedTemplate.b() : null), jSONObject));
                }
                break;
            case 1550697109:
                if (strU.equals("focus_element")) {
                    return new DivActionTypedTemplate.k(((af2) this.a.p0().getValue()).c(ex7Var, (DivActionFocusElementTemplate) (divActionTypedTemplate != null ? divActionTypedTemplate.b() : null), jSONObject));
                }
                break;
            case 1587919371:
                if (strU.equals("dict_set_value")) {
                    return new DivActionTypedTemplate.i(((ue2) this.a.j0().getValue()).c(ex7Var, (DivActionDictSetValueTemplate) (divActionTypedTemplate != null ? divActionTypedTemplate.b() : null), jSONObject));
                }
                break;
            case 1715728902:
                if (strU.equals("hide_tooltip")) {
                    return new DivActionTypedTemplate.l(((ef2) this.a.s0().getValue()).c(ex7Var, (DivActionHideTooltipTemplate) (divActionTypedTemplate != null ? divActionTypedTemplate.b() : null), jSONObject));
                }
                break;
            case 1811437713:
                if (strU.equals("array_insert_value")) {
                    return new DivActionTypedTemplate.c(((ud2) this.a.R().getValue()).c(ex7Var, (DivActionArrayInsertValueTemplate) (divActionTypedTemplate != null ? divActionTypedTemplate.b() : null), jSONObject));
                }
                break;
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivActionTypedTemplate divActionTypedTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divActionTypedTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.a) {
            return ((DivActionAnimatorStartJsonParser.c) this.a.L().getValue()).b(ex7Var, ((DivActionTypedTemplate.a) divActionTypedTemplate).c());
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.b) {
            return ((rd2) this.a.O().getValue()).b(ex7Var, ((DivActionTypedTemplate.b) divActionTypedTemplate).c());
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.c) {
            return ((ud2) this.a.R().getValue()).b(ex7Var, ((DivActionTypedTemplate.c) divActionTypedTemplate).c());
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.d) {
            return ((xd2) this.a.U().getValue()).b(ex7Var, ((DivActionTypedTemplate.d) divActionTypedTemplate).c());
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.e) {
            return ((ae2) this.a.X().getValue()).b(ex7Var, ((DivActionTypedTemplate.e) divActionTypedTemplate).c());
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.f) {
            return ((oe2) this.a.a0().getValue()).b(ex7Var, ((DivActionTypedTemplate.f) divActionTypedTemplate).c());
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.h) {
            return ((re2) this.a.g0().getValue()).b(ex7Var, ((DivActionTypedTemplate.h) divActionTypedTemplate).c());
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.i) {
            return ((ue2) this.a.j0().getValue()).b(ex7Var, ((DivActionTypedTemplate.i) divActionTypedTemplate).c());
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.j) {
            return ((xe2) this.a.m0().getValue()).b(ex7Var, ((DivActionTypedTemplate.j) divActionTypedTemplate).c());
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.k) {
            return ((af2) this.a.p0().getValue()).b(ex7Var, ((DivActionTypedTemplate.k) divActionTypedTemplate).c());
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.l) {
            return ((ef2) this.a.s0().getValue()).b(ex7Var, ((DivActionTypedTemplate.l) divActionTypedTemplate).c());
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.m) {
            return ((DivActionScrollByJsonParser.c) this.a.B0().getValue()).b(ex7Var, ((DivActionTypedTemplate.m) divActionTypedTemplate).c());
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.n) {
            return ((k.c) this.a.H0().getValue()).b(ex7Var, ((DivActionTypedTemplate.n) divActionTypedTemplate).c());
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.o) {
            return ((l.c) this.a.K0().getValue()).b(ex7Var, ((DivActionTypedTemplate.o) divActionTypedTemplate).c());
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.p) {
            return ((hf2) this.a.N0().getValue()).b(ex7Var, ((DivActionTypedTemplate.p) divActionTypedTemplate).c());
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.q) {
            return ((kf2) this.a.Q0().getValue()).b(ex7Var, ((DivActionTypedTemplate.q) divActionTypedTemplate).c());
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.r) {
            return ((nf2) this.a.T0().getValue()).b(ex7Var, ((DivActionTypedTemplate.r) divActionTypedTemplate).c());
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.s) {
            return ((pf2) this.a.W0().getValue()).b(ex7Var, ((DivActionTypedTemplate.s) divActionTypedTemplate).c());
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.t) {
            return ((DivActionTimerJsonParser.c) this.a.f1().getValue()).b(ex7Var, ((DivActionTypedTemplate.t) divActionTypedTemplate).c());
        }
        if (divActionTypedTemplate instanceof DivActionTypedTemplate.u) {
            return ((DivActionVideoJsonParser.c) this.a.l1().getValue()).b(ex7Var, ((DivActionTypedTemplate.u) divActionTypedTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
