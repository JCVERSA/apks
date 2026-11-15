package com.yandex.div2;

import defpackage.ex7;
import defpackage.lga;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class i2 implements lga {
    public final JsonParserComponent a;

    public i2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    @Override
    public Div a(ex7 ex7Var, DivTemplate divTemplate, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(divTemplate, "template");
        y45.j(jSONObject, "data");
        if (divTemplate instanceof DivTemplate.g) {
            return new Div.g(((DivImageJsonParser.d) this.a.W3().getValue()).a(ex7Var, ((DivTemplate.g) divTemplate).c(), jSONObject));
        }
        if (divTemplate instanceof DivTemplate.e) {
            return new Div.e(((DivGifImageJsonParser.d) this.a.N3().getValue()).a(ex7Var, ((DivTemplate.e) divTemplate).c(), jSONObject));
        }
        if (divTemplate instanceof DivTemplate.q) {
            return new Div.q(((DivTextJsonParser.d) this.a.l8().getValue()).a(ex7Var, ((DivTemplate.q) divTemplate).c(), jSONObject));
        }
        if (divTemplate instanceof DivTemplate.l) {
            return new Div.l(((DivSeparatorJsonParser.d) this.a.L6().getValue()).a(ex7Var, ((DivTemplate.l) divTemplate).c(), jSONObject));
        }
        if (divTemplate instanceof DivTemplate.b) {
            return new Div.b(((DivContainerJsonParser.d) this.a.l2().getValue()).a(ex7Var, ((DivTemplate.b) divTemplate).c(), jSONObject));
        }
        if (divTemplate instanceof DivTemplate.f) {
            return new Div.f(((DivGridJsonParser.d) this.a.Q3().getValue()).a(ex7Var, ((DivTemplate.f) divTemplate).c(), jSONObject));
        }
        if (divTemplate instanceof DivTemplate.d) {
            return new Div.d(((DivGalleryJsonParser.d) this.a.K3().getValue()).a(ex7Var, ((DivTemplate.d) divTemplate).c(), jSONObject));
        }
        if (divTemplate instanceof DivTemplate.j) {
            return new Div.j(((DivPagerJsonParser.d) this.a.y5().getValue()).a(ex7Var, ((DivTemplate.j) divTemplate).c(), jSONObject));
        }
        if (divTemplate instanceof DivTemplate.p) {
            return new Div.p(((DivTabsJsonParser.d) this.a.Q7().getValue()).a(ex7Var, ((DivTemplate.p) divTemplate).c(), jSONObject));
        }
        if (divTemplate instanceof DivTemplate.n) {
            return new Div.n(((DivStateJsonParser.d) this.a.p7().getValue()).a(ex7Var, ((DivTemplate.n) divTemplate).c(), jSONObject));
        }
        if (divTemplate instanceof DivTemplate.c) {
            return new Div.c(((DivCustomJsonParser.d) this.a.A2().getValue()).a(ex7Var, ((DivTemplate.c) divTemplate).c(), jSONObject));
        }
        if (divTemplate instanceof DivTemplate.h) {
            return new Div.h(((DivIndicatorJsonParser.d) this.a.c4().getValue()).a(ex7Var, ((DivTemplate.h) divTemplate).c(), jSONObject));
        }
        if (divTemplate instanceof DivTemplate.m) {
            return new Div.m(((DivSliderJsonParser.d) this.a.d7().getValue()).a(ex7Var, ((DivTemplate.m) divTemplate).c(), jSONObject));
        }
        if (divTemplate instanceof DivTemplate.o) {
            return new Div.o(((DivSwitchJsonParser.d) this.a.K7().getValue()).a(ex7Var, ((DivTemplate.o) divTemplate).c(), jSONObject));
        }
        if (divTemplate instanceof DivTemplate.i) {
            return new Div.i(((DivInputJsonParser.d) this.a.r4().getValue()).a(ex7Var, ((DivTemplate.i) divTemplate).c(), jSONObject));
        }
        if (divTemplate instanceof DivTemplate.k) {
            return new Div.k(((DivSelectJsonParser.d) this.a.C6().getValue()).a(ex7Var, ((DivTemplate.k) divTemplate).c(), jSONObject));
        }
        if (divTemplate instanceof DivTemplate.r) {
            return new Div.r(((DivVideoJsonParser.d) this.a.j9().getValue()).a(ex7Var, ((DivTemplate.r) divTemplate).c(), jSONObject));
        }
        throw new NoWhenBranchMatchedException();
    }
}
