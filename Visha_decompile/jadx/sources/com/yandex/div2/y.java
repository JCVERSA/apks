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

public final class y implements pd9, w92 {
    public final JsonParserComponent a;

    public y(JsonParserComponent jsonParserComponent) {
        y45.j(jsonParserComponent, "component");
        this.a = jsonParserComponent;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    public DivAppearanceTransition a(ex7 ex7Var, JSONObject jSONObject) {
        y45.j(ex7Var, "context");
        y45.j(jSONObject, "data");
        String strU = tb5.u(ex7Var, jSONObject, "type");
        y45.i(strU, "readString(context, data, \"type\")");
        switch (strU.hashCode()) {
            case 113762:
                if (strU.equals("set")) {
                    return new DivAppearanceTransition.d(((x.b) this.a.t1().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 3135100:
                if (strU.equals(SettingFragment.SHAKE_ITEM_MUSIC_FADE)) {
                    return new DivAppearanceTransition.b(((DivFadeTransitionJsonParser.b) this.a.b3().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 109250890:
                if (strU.equals("scale")) {
                    return new DivAppearanceTransition.c(((DivScaleTransitionJsonParser.b) this.a.x6().getValue()).a(ex7Var, jSONObject));
                }
                break;
            case 109526449:
                if (strU.equals("slide")) {
                    return new DivAppearanceTransition.e(((DivSlideTransitionJsonParser.b) this.a.Y6().getValue()).a(ex7Var, jSONObject));
                }
                break;
        }
        za3 za3VarA = ex7Var.a().a(strU, jSONObject);
        DivAppearanceTransitionTemplate divAppearanceTransitionTemplate = za3VarA instanceof DivAppearanceTransitionTemplate ? (DivAppearanceTransitionTemplate) za3VarA : null;
        if (divAppearanceTransitionTemplate != null) {
            return ((a0) this.a.y1().getValue()).a(ex7Var, divAppearanceTransitionTemplate, jSONObject);
        }
        throw mx7.x(jSONObject, "type", strU);
    }

    @Override
    public JSONObject b(ex7 ex7Var, DivAppearanceTransition divAppearanceTransition) {
        y45.j(ex7Var, "context");
        y45.j(divAppearanceTransition, ES6Iterator.VALUE_PROPERTY);
        if (divAppearanceTransition instanceof DivAppearanceTransition.d) {
            return ((x.b) this.a.t1().getValue()).b(ex7Var, ((DivAppearanceTransition.d) divAppearanceTransition).c());
        }
        if (divAppearanceTransition instanceof DivAppearanceTransition.b) {
            return ((DivFadeTransitionJsonParser.b) this.a.b3().getValue()).b(ex7Var, ((DivAppearanceTransition.b) divAppearanceTransition).c());
        }
        if (divAppearanceTransition instanceof DivAppearanceTransition.c) {
            return ((DivScaleTransitionJsonParser.b) this.a.x6().getValue()).b(ex7Var, ((DivAppearanceTransition.c) divAppearanceTransition).c());
        }
        if (divAppearanceTransition instanceof DivAppearanceTransition.e) {
            return ((DivSlideTransitionJsonParser.b) this.a.Y6().getValue()).b(ex7Var, ((DivAppearanceTransition.e) divAppearanceTransition).c());
        }
        throw new NoWhenBranchMatchedException();
    }
}
