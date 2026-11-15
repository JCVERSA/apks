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

public final class h2 implements pd9, w92 {
    public final JsonParserComponent a;

    public h2(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    public DivTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivTemplate divTemplate = za3Var instanceof DivTemplate ? (DivTemplate) za3Var : null;
        if (divTemplate != null && (strA = divTemplate.a()) != null) {
            strU = strA;
        }
        switch (strU.hashCode()) {
            case -1349088399:
                if (strU.equals("custom")) {
                    return new DivTemplate.c(((DivCustomJsonParser.c) this.a.z2().getValue()).c(ex7Var, (DivCustomTemplate) (divTemplate != null ? divTemplate.b() : null), jSONObject));
                }
                break;
            case -906021636:
                if (strU.equals("select")) {
                    return new DivTemplate.k(((DivSelectJsonParser.c) this.a.B6().getValue()).c(ex7Var, (DivSelectTemplate) (divTemplate != null ? divTemplate.b() : null), jSONObject));
                }
                break;
            case -899647263:
                if (strU.equals("slider")) {
                    return new DivTemplate.m(((DivSliderJsonParser.c) this.a.c7().getValue()).c(ex7Var, (DivSliderTemplate) (divTemplate != null ? divTemplate.b() : null), jSONObject));
                }
                break;
            case -889473228:
                if (strU.equals(ClientABTestDTOKt.SWITCH)) {
                    return new DivTemplate.o(((DivSwitchJsonParser.c) this.a.J7().getValue()).c(ex7Var, (DivSwitchTemplate) (divTemplate != null ? divTemplate.b() : null), jSONObject));
                }
                break;
            case -711999985:
                if (strU.equals("indicator")) {
                    return new DivTemplate.h(((DivIndicatorJsonParser.c) this.a.b4().getValue()).c(ex7Var, (DivIndicatorTemplate) (divTemplate != null ? divTemplate.b() : null), jSONObject));
                }
                break;
            case -410956671:
                if (strU.equals(TtmlNode.RUBY_CONTAINER)) {
                    return new DivTemplate.b(((DivContainerJsonParser.c) this.a.k2().getValue()).c(ex7Var, (DivContainerTemplate) (divTemplate != null ? divTemplate.b() : null), jSONObject));
                }
                break;
            case -196315310:
                if (strU.equals("gallery")) {
                    return new DivTemplate.d(((DivGalleryJsonParser.c) this.a.J3().getValue()).c(ex7Var, (DivGalleryTemplate) (divTemplate != null ? divTemplate.b() : null), jSONObject));
                }
                break;
            case 102340:
                if (strU.equals("gif")) {
                    return new DivTemplate.e(((DivGifImageJsonParser.c) this.a.M3().getValue()).c(ex7Var, (DivGifImageTemplate) (divTemplate != null ? divTemplate.b() : null), jSONObject));
                }
                break;
            case 3181382:
                if (strU.equals("grid")) {
                    return new DivTemplate.f(((DivGridJsonParser.c) this.a.P3().getValue()).c(ex7Var, (DivGridTemplate) (divTemplate != null ? divTemplate.b() : null), jSONObject));
                }
                break;
            case 3552126:
                if (strU.equals("tabs")) {
                    return new DivTemplate.p(((DivTabsJsonParser.c) this.a.P7().getValue()).c(ex7Var, (DivTabsTemplate) (divTemplate != null ? divTemplate.b() : null), jSONObject));
                }
                break;
            case 3556653:
                if (strU.equals("text")) {
                    return new DivTemplate.q(((DivTextJsonParser.c) this.a.k8().getValue()).c(ex7Var, (DivTextTemplate) (divTemplate != null ? divTemplate.b() : null), jSONObject));
                }
                break;
            case 100313435:
                if (strU.equals("image")) {
                    return new DivTemplate.g(((DivImageJsonParser.c) this.a.V3().getValue()).c(ex7Var, (DivImageTemplate) (divTemplate != null ? divTemplate.b() : null), jSONObject));
                }
                break;
            case 100358090:
                if (strU.equals("input")) {
                    return new DivTemplate.i(((DivInputJsonParser.c) this.a.q4().getValue()).c(ex7Var, (DivInputTemplate) (divTemplate != null ? divTemplate.b() : null), jSONObject));
                }
                break;
            case 106426307:
                if (strU.equals("pager")) {
                    return new DivTemplate.j(((DivPagerJsonParser.c) this.a.x5().getValue()).c(ex7Var, (DivPagerTemplate) (divTemplate != null ? divTemplate.b() : null), jSONObject));
                }
                break;
            case 109757585:
                if (strU.equals(ICode.CALL.CALL_KEY_STATE)) {
                    return new DivTemplate.n(((DivStateJsonParser.c) this.a.o7().getValue()).c(ex7Var, (DivStateTemplate) (divTemplate != null ? divTemplate.b() : null), jSONObject));
                }
                break;
            case 112202875:
                if (strU.equals("video")) {
                    return new DivTemplate.r(((DivVideoJsonParser.c) this.a.i9().getValue()).c(ex7Var, (DivVideoTemplate) (divTemplate != null ? divTemplate.b() : null), jSONObject));
                }
                break;
            case 1732829925:
                if (strU.equals("separator")) {
                    return new DivTemplate.l(((DivSeparatorJsonParser.c) this.a.K6().getValue()).c(ex7Var, (DivSeparatorTemplate) (divTemplate != null ? divTemplate.b() : null), jSONObject));
                }
                break;
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivTemplate divTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divTemplate instanceof DivTemplate.g) {
            return ((DivImageJsonParser.c) this.a.V3().getValue()).b(ex7Var, ((DivTemplate.g) divTemplate).c());
        }
        if (divTemplate instanceof DivTemplate.e) {
            return ((DivGifImageJsonParser.c) this.a.M3().getValue()).b(ex7Var, ((DivTemplate.e) divTemplate).c());
        }
        if (divTemplate instanceof DivTemplate.q) {
            return ((DivTextJsonParser.c) this.a.k8().getValue()).b(ex7Var, ((DivTemplate.q) divTemplate).c());
        }
        if (divTemplate instanceof DivTemplate.l) {
            return ((DivSeparatorJsonParser.c) this.a.K6().getValue()).b(ex7Var, ((DivTemplate.l) divTemplate).c());
        }
        if (divTemplate instanceof DivTemplate.b) {
            return ((DivContainerJsonParser.c) this.a.k2().getValue()).b(ex7Var, ((DivTemplate.b) divTemplate).c());
        }
        if (divTemplate instanceof DivTemplate.f) {
            return ((DivGridJsonParser.c) this.a.P3().getValue()).b(ex7Var, ((DivTemplate.f) divTemplate).c());
        }
        if (divTemplate instanceof DivTemplate.d) {
            return ((DivGalleryJsonParser.c) this.a.J3().getValue()).b(ex7Var, ((DivTemplate.d) divTemplate).c());
        }
        if (divTemplate instanceof DivTemplate.j) {
            return ((DivPagerJsonParser.c) this.a.x5().getValue()).b(ex7Var, ((DivTemplate.j) divTemplate).c());
        }
        if (divTemplate instanceof DivTemplate.p) {
            return ((DivTabsJsonParser.c) this.a.P7().getValue()).b(ex7Var, ((DivTemplate.p) divTemplate).c());
        }
        if (divTemplate instanceof DivTemplate.n) {
            return ((DivStateJsonParser.c) this.a.o7().getValue()).b(ex7Var, ((DivTemplate.n) divTemplate).c());
        }
        if (divTemplate instanceof DivTemplate.c) {
            return ((DivCustomJsonParser.c) this.a.z2().getValue()).b(ex7Var, ((DivTemplate.c) divTemplate).c());
        }
        if (divTemplate instanceof DivTemplate.h) {
            return ((DivIndicatorJsonParser.c) this.a.b4().getValue()).b(ex7Var, ((DivTemplate.h) divTemplate).c());
        }
        if (divTemplate instanceof DivTemplate.m) {
            return ((DivSliderJsonParser.c) this.a.c7().getValue()).b(ex7Var, ((DivTemplate.m) divTemplate).c());
        }
        if (divTemplate instanceof DivTemplate.o) {
            return ((DivSwitchJsonParser.c) this.a.J7().getValue()).b(ex7Var, ((DivTemplate.o) divTemplate).c());
        }
        if (divTemplate instanceof DivTemplate.i) {
            return ((DivInputJsonParser.c) this.a.q4().getValue()).b(ex7Var, ((DivTemplate.i) divTemplate).c());
        }
        if (divTemplate instanceof DivTemplate.k) {
            return ((DivSelectJsonParser.c) this.a.B6().getValue()).b(ex7Var, ((DivTemplate.k) divTemplate).c());
        }
        if (divTemplate instanceof DivTemplate.r) {
            return ((DivVideoJsonParser.c) this.a.i9().getValue()).b(ex7Var, ((DivTemplate.r) divTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
