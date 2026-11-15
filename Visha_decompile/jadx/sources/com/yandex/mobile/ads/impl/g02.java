package com.yandex.mobile.ads.impl;

import android.view.View;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivExtension;
import defpackage.y45;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public final class g02 {
    private final b02 a;
    private final sp1 b;
    private final i20 c;
    private final w70 d;
    private final eh e;

    public g02(b02 b02Var, sp1 sp1Var, i20 i20Var, w70 w70Var, r61 r61Var, eh ehVar) {
        y45.j(b02Var, "sliderAdPrivate");
        y45.j(sp1Var, "reporter");
        y45.j(i20Var, "divExtensionProvider");
        y45.j(w70Var, "extensionPositionParser");
        y45.j(r61Var, "assetNamesProvider");
        y45.j(ehVar, "assetsNativeAdViewProviderCreator");
        this.a = b02Var;
        this.b = sp1Var;
        this.c = i20Var;
        this.d = w70Var;
        this.e = ehVar;
    }

    public final void a(Div2View div2View, View view, defpackage.og2 og2Var) {
        Integer numValueOf;
        y45.j(div2View, "div2View");
        y45.j(view, "view");
        y45.j(og2Var, "divBase");
        view.setVisibility(8);
        this.c.getClass();
        DivExtension divExtensionA = i20.a(og2Var, "view");
        if (divExtensionA != null) {
            this.d.getClass();
            y45.j(divExtensionA, "divExtension");
            JSONObject jSONObject = divExtensionA.b;
            if (jSONObject != null) {
                try {
                    numValueOf = Integer.valueOf(jSONObject.getInt("position"));
                } catch (JSONException unused) {
                    numValueOf = null;
                }
            } else {
                numValueOf = null;
            }
            if (numValueOf != null) {
                ArrayList arrayListD = this.a.d();
                if (numValueOf.intValue() < 0 || numValueOf.intValue() >= arrayListD.size()) {
                    return;
                }
                try {
                    ((q61) arrayListD.get(numValueOf.intValue())).b(this.e.a(view, new yd1(numValueOf.intValue())), u10.a(div2View).a(numValueOf.intValue()));
                    view.setVisibility(0);
                } catch (e61 e) {
                    this.b.reportError("Failed to bind DivKit Slider Inner Ad", e);
                }
            }
        }
    }
}
