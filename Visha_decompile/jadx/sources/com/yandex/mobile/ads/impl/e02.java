package com.yandex.mobile.ads.impl;

import android.view.View;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivData;
import com.yandex.div2.DivExtension;
import defpackage.oj3;
import defpackage.y45;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public final class e02 implements defpackage.wi2 {
    private final sp1 a;
    private final i20 b;
    private final w70 c;
    private final x70 d;
    private final ConcurrentHashMap<DivData, g02> e;

    public e02(sp1 sp1Var) {
        this(sp1Var, new i20(), new w70(), new x70());
    }

    public final void a(DivData divData, b02 b02Var) {
        y45.j(divData, "divData");
        y45.j(b02Var, "sliderAdPrivate");
        this.e.put(divData, new g02(b02Var, this.a, new i20(), new w70(), new r61(), new eh(r61.c(b02Var))));
    }

    @Override
    public void beforeBindView(Div2View div2View, oj3 oj3Var, View view, defpackage.og2 og2Var) {
        super.beforeBindView(div2View, oj3Var, view, og2Var);
    }

    @Override
    public final void bindView(Div2View div2View, oj3 oj3Var, View view, defpackage.og2 og2Var) {
        y45.j(div2View, "div2View");
        y45.j(oj3Var, "expressionResolver");
        y45.j(view, "view");
        y45.j(og2Var, "divBase");
        g02 g02Var = this.e.get(div2View.getDivData());
        if (g02Var != null) {
            g02Var.a(div2View, view, og2Var);
        }
    }

    @Override
    public final boolean matches(defpackage.og2 og2Var) {
        Integer numValueOf;
        y45.j(og2Var, "divBase");
        this.b.getClass();
        DivExtension divExtensionA = i20.a(og2Var, "view");
        if (divExtensionA == null) {
            return false;
        }
        this.c.getClass();
        y45.j(divExtensionA, "divExtension");
        JSONObject jSONObject = divExtensionA.b;
        String string = null;
        if (jSONObject != null) {
            try {
                numValueOf = Integer.valueOf(jSONObject.getInt("position"));
            } catch (JSONException unused) {
                numValueOf = null;
            }
        } else {
            numValueOf = null;
        }
        this.d.getClass();
        y45.j(divExtensionA, "divExtension");
        JSONObject jSONObject2 = divExtensionA.b;
        if (jSONObject2 != null) {
            try {
                string = jSONObject2.getString("view_name");
            } catch (JSONException unused2) {
            }
        }
        return numValueOf != null && y45.e("native_ad_view", string);
    }

    @Override
    public void preprocess(defpackage.og2 og2Var, oj3 oj3Var) {
        super.preprocess(og2Var, oj3Var);
    }

    @Override
    public final void unbindView(Div2View div2View, oj3 oj3Var, View view, defpackage.og2 og2Var) {
        y45.j(div2View, "div2View");
        y45.j(oj3Var, "expressionResolver");
        y45.j(view, "view");
        y45.j(og2Var, "divBase");
        if (this.e.get(div2View.getDivData()) != null) {
            y45.j(div2View, "div2View");
            y45.j(view, "view");
            y45.j(og2Var, "divBase");
        }
    }

    public e02(sp1 sp1Var, i20 i20Var, w70 w70Var, x70 x70Var) {
        y45.j(sp1Var, "reporter");
        y45.j(i20Var, "divExtensionProvider");
        y45.j(w70Var, "extensionPositionParser");
        y45.j(x70Var, "extensionViewNameParser");
        this.a = sp1Var;
        this.b = i20Var;
        this.c = w70Var;
        this.d = x70Var;
        this.e = new ConcurrentHashMap<>();
    }
}
