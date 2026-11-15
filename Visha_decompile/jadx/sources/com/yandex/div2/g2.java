package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.transsion.livecaption.constant.ICode;
import defpackage.ex7;
import defpackage.mx7;
import defpackage.pd9;
import defpackage.tb5;
import defpackage.w92;
import defpackage.y45;
import defpackage.za3;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class g2 implements pd9, w92 {
    public final JsonParserComponent a;

    public g2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    public Div a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        switch (strU.hashCode()) {
            case -1349088399:
                if (strU.equals("custom")) {
                    return new Div.c(((DivCustomJsonParser.b) this.a.y2().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case -906021636:
                if (strU.equals("select")) {
                    return new Div.k(((DivSelectJsonParser.b) this.a.A6().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case -899647263:
                if (strU.equals("slider")) {
                    return new Div.m(((DivSliderJsonParser.b) this.a.b7().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case -889473228:
                if (strU.equals(ClientABTestDTOKt.SWITCH)) {
                    return new Div.o(((DivSwitchJsonParser.b) this.a.I7().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case -711999985:
                if (strU.equals("indicator")) {
                    return new Div.h(((DivIndicatorJsonParser.b) this.a.a4().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case -410956671:
                if (strU.equals(TtmlNode.RUBY_CONTAINER)) {
                    return new Div.b(((DivContainerJsonParser.b) this.a.j2().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case -196315310:
                if (strU.equals("gallery")) {
                    return new Div.d(((DivGalleryJsonParser.b) this.a.I3().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 102340:
                if (strU.equals("gif")) {
                    return new Div.e(((DivGifImageJsonParser.b) this.a.L3().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 3181382:
                if (strU.equals("grid")) {
                    return new Div.f(((DivGridJsonParser.b) this.a.O3().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 3552126:
                if (strU.equals("tabs")) {
                    return new Div.p(((DivTabsJsonParser.b) this.a.O7().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 3556653:
                if (strU.equals("text")) {
                    return new Div.q(((DivTextJsonParser.b) this.a.j8().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 100313435:
                if (strU.equals("image")) {
                    return new Div.g(((DivImageJsonParser.b) this.a.U3().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 100358090:
                if (strU.equals("input")) {
                    return new Div.i(((DivInputJsonParser.b) this.a.p4().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 106426307:
                if (strU.equals("pager")) {
                    return new Div.j(((DivPagerJsonParser.b) this.a.w5().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 109757585:
                if (strU.equals(ICode.CALL.CALL_KEY_STATE)) {
                    return new Div.n(((DivStateJsonParser.b) this.a.n7().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 112202875:
                if (strU.equals("video")) {
                    return new Div.r(((DivVideoJsonParser.b) this.a.h9().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 1732829925:
                if (strU.equals("separator")) {
                    return new Div.l(((DivSeparatorJsonParser.b) this.a.J6().getValue()).a(ex7Var, jSONObject));
                }
                break;
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivTemplate divTemplate = za3VarA instanceof DivTemplate ? (DivTemplate) za3VarA : null;
        if (divTemplate != null) {
            return ((i2) this.a.L4().getValue()).a(ex7Var, divTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, Div div) {
        y45.j(ex7Var, "context");
        y45.j(div, ES6Iterator.VALUE_PROPERTY);
        if (div instanceof Div.g) {
            return ((DivImageJsonParser.b) this.a.U3().getValue()).b(ex7Var, ((Div.g) div).c());
        }
        if (div instanceof Div.e) {
            return ((DivGifImageJsonParser.b) this.a.L3().getValue()).b(ex7Var, ((Div.e) div).c());
        }
        if (div instanceof Div.q) {
            return ((DivTextJsonParser.b) this.a.j8().getValue()).b(ex7Var, ((Div.q) div).c());
        }
        if (div instanceof Div.l) {
            return ((DivSeparatorJsonParser.b) this.a.J6().getValue()).b(ex7Var, ((Div.l) div).c());
        }
        if (div instanceof Div.b) {
            return ((DivContainerJsonParser.b) this.a.j2().getValue()).b(ex7Var, ((Div.b) div).c());
        }
        if (div instanceof Div.f) {
            return ((DivGridJsonParser.b) this.a.O3().getValue()).b(ex7Var, ((Div.f) div).c());
        }
        if (div instanceof Div.d) {
            return ((DivGalleryJsonParser.b) this.a.I3().getValue()).b(ex7Var, ((Div.d) div).c());
        }
        if (div instanceof Div.j) {
            return ((DivPagerJsonParser.b) this.a.w5().getValue()).b(ex7Var, ((Div.j) div).c());
        }
        if (div instanceof Div.p) {
            return ((DivTabsJsonParser.b) this.a.O7().getValue()).b(ex7Var, ((Div.p) div).c());
        }
        if (div instanceof Div.n) {
            return ((DivStateJsonParser.b) this.a.n7().getValue()).b(ex7Var, ((Div.n) div).c());
        }
        if (div instanceof Div.c) {
            return ((DivCustomJsonParser.b) this.a.y2().getValue()).b(ex7Var, ((Div.c) div).c());
        }
        if (div instanceof Div.h) {
            return ((DivIndicatorJsonParser.b) this.a.a4().getValue()).b(ex7Var, ((Div.h) div).c());
        }
        if (div instanceof Div.m) {
            return ((DivSliderJsonParser.b) this.a.b7().getValue()).b(ex7Var, ((Div.m) div).c());
        }
        if (div instanceof Div.o) {
            return ((DivSwitchJsonParser.b) this.a.I7().getValue()).b(ex7Var, ((Div.o) div).c());
        }
        if (div instanceof Div.i) {
            return ((DivInputJsonParser.b) this.a.p4().getValue()).b(ex7Var, ((Div.i) div).c());
        }
        if (div instanceof Div.k) {
            return ((DivSelectJsonParser.b) this.a.A6().getValue()).b(ex7Var, ((Div.k) div).c());
        }
        if (div instanceof Div.r) {
            return ((DivVideoJsonParser.b) this.a.h9().getValue()).b(ex7Var, ((Div.r) div).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
