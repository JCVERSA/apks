package com.yandex.div2;

import com.transsion.tools.fragments.SettingFragment;
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

public final class z implements pd9, w92 {
    public final JsonParserComponent a;

    public z(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    public DivAppearanceTransitionTemplate a(ex7 ex7Var, JSONObject jSONObject) {
        String strA;
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        za3 za3Var = ex7Var.a().get(strU);
        DivAppearanceTransitionTemplate divAppearanceTransitionTemplate = za3Var instanceof DivAppearanceTransitionTemplate ? (DivAppearanceTransitionTemplate) za3Var : null;
        if (divAppearanceTransitionTemplate != null && (strA = divAppearanceTransitionTemplate.a()) != null) {
            strU = strA;
        }
        switch (strU.hashCode()) {
            case 113762:
                if (strU.equals("set")) {
                    return new DivAppearanceTransitionTemplate.d(((x.c) this.a.u1().getValue()).c(ex7Var, (DivAppearanceSetTransitionTemplate) (divAppearanceTransitionTemplate != null ? divAppearanceTransitionTemplate.b() : null), jSONObject));
                }
                break;
            case 3135100:
                if (strU.equals(SettingFragment.SHAKE_ITEM_MUSIC_FADE)) {
                    return new DivAppearanceTransitionTemplate.b(((DivFadeTransitionJsonParser.c) this.a.c3().getValue()).c(ex7Var, (DivFadeTransitionTemplate) (divAppearanceTransitionTemplate != null ? divAppearanceTransitionTemplate.b() : null), jSONObject));
                }
                break;
            case 109250890:
                if (strU.equals("scale")) {
                    return new DivAppearanceTransitionTemplate.c(((DivScaleTransitionJsonParser.c) this.a.y6().getValue()).c(ex7Var, (DivScaleTransitionTemplate) (divAppearanceTransitionTemplate != null ? divAppearanceTransitionTemplate.b() : null), jSONObject));
                }
                break;
            case 109526449:
                if (strU.equals("slide")) {
                    return new DivAppearanceTransitionTemplate.e(((DivSlideTransitionJsonParser.c) this.a.Z6().getValue()).c(ex7Var, (DivSlideTransitionTemplate) (divAppearanceTransitionTemplate != null ? divAppearanceTransitionTemplate.b() : null), jSONObject));
                }
                break;
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivAppearanceTransitionTemplate divAppearanceTransitionTemplate) {
        y45.j(ex7Var, "context");
        y45.j(divAppearanceTransitionTemplate, ES6Iterator.VALUE_PROPERTY);
        if (divAppearanceTransitionTemplate instanceof DivAppearanceTransitionTemplate.d) {
            return ((x.c) this.a.u1().getValue()).b(ex7Var, ((DivAppearanceTransitionTemplate.d) divAppearanceTransitionTemplate).c());
        }
        if (divAppearanceTransitionTemplate instanceof DivAppearanceTransitionTemplate.b) {
            return ((DivFadeTransitionJsonParser.c) this.a.c3().getValue()).b(ex7Var, ((DivAppearanceTransitionTemplate.b) divAppearanceTransitionTemplate).c());
        }
        if (divAppearanceTransitionTemplate instanceof DivAppearanceTransitionTemplate.c) {
            return ((DivScaleTransitionJsonParser.c) this.a.y6().getValue()).b(ex7Var, ((DivAppearanceTransitionTemplate.c) divAppearanceTransitionTemplate).c());
        }
        if (divAppearanceTransitionTemplate instanceof DivAppearanceTransitionTemplate.e) {
            return ((DivSlideTransitionJsonParser.c) this.a.Z6().getValue()).b(ex7Var, ((DivAppearanceTransitionTemplate.e) divAppearanceTransitionTemplate).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
