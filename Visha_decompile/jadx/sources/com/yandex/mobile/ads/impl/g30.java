package com.yandex.mobile.ads.impl;

import com.yandex.div2.DivData;
import defpackage.y45;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class g30 {
    private final sp1 a;
    private final f20 b;
    private final h20 c;
    private final d30 d;
    private final sj e;

    public g30(sp1 sp1Var) {
        this(sp1Var, new f20(sp1Var), new h20(), new d30(), new sj());
    }

    public final b30 a(a10 a10Var, boolean z) {
        y45.j(a10Var, "design");
        if (y45.e(g10.DIV_KIT.a(), a10Var.d())) {
            try {
                String strC = a10Var.c();
                String strB = a10Var.b();
                if (z) {
                    this.e.getClass();
                    strB = sj.a(strB);
                }
                JSONObject jSONObject = new JSONObject(strB);
                JSONObject jSONObject2 = jSONObject.getJSONObject("card");
                JSONObject jSONObject3 = jSONObject.has("templates") ? jSONObject.getJSONObject("templates") : null;
                List<xj0> listA = a10Var.a();
                f20 f20Var = this.b;
                y45.g(jSONObject2);
                DivData divDataA = f20Var.a(jSONObject2, jSONObject3);
                this.c.getClass();
                String string = UUID.randomUUID().toString();
                y45.i(string, "toString(...)");
                defpackage.ei2 ei2Var = new defpackage.ei2(string);
                Set<s20> setA = this.d.a(jSONObject2);
                if (divDataA != null) {
                    return new b30(strC, jSONObject2, jSONObject3, listA, divDataA, ei2Var, setA);
                }
            } catch (Throwable th) {
                this.a.reportError("Failed to parse DivKit design", th);
            }
        }
        return null;
    }

    public g30(sp1 sp1Var, f20 f20Var, h20 h20Var, d30 d30Var, sj sjVar) {
        y45.j(sp1Var, "reporter");
        y45.j(f20Var, "divDataCreator");
        y45.j(h20Var, "divDataTagCreator");
        y45.j(d30Var, "assetsProvider");
        y45.j(sjVar, StringLookupFactory.KEY_BASE64_DECODER);
        this.a = sp1Var;
        this.b = f20Var;
        this.c = h20Var;
        this.d = d30Var;
        this.e = sjVar;
    }
}
