package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class ly0 implements e80 {
    private final o3 a;
    private final kx1 b;

    public ly0(o3 o3Var) {
        this(o3Var, new kx1());
    }

    @Override
    public Map<String, Object> a(Context context) {
        y45.j(context, "context");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        v7 v7VarA = this.a.a();
        if (v7VarA != null) {
            Map<String, String> mapH = v7VarA.h();
            if (mapH != null) {
                linkedHashMap.putAll(mapH);
            }
            String strB = v7VarA.b();
            if (strB != null) {
                linkedHashMap.put("age", strB);
            }
            List<String> listD = v7VarA.d();
            if (listD != null) {
                linkedHashMap.put("context_tags", listD);
            }
            String strE = v7VarA.e();
            if (strE != null) {
                linkedHashMap.put("gender", strE);
            }
            int i = pw1.l;
            Boolean boolF = pw1.a.a().f();
            if (boolF != null) {
                linkedHashMap.put("age_restricted_user", boolF);
            }
            ju1 ju1VarA = pw1.a.a().a(context);
            Boolean boolO0 = ju1VarA != null ? ju1VarA.o0() : null;
            if (boolO0 != null) {
                linkedHashMap.put("user_consent", boolO0);
            }
        }
        lc lcVarA = this.a.e().a();
        boolean zB = this.b.b(context);
        if (lcVarA != null) {
            boolean zB2 = lcVarA.b();
            String strA = lcVarA.a();
            if (!zB && !zB2 && strA != null) {
                linkedHashMap.put("google_aid", strA);
            }
        }
        linkedHashMap.put("gms_available", Boolean.valueOf(this.a.k().c()));
        return linkedHashMap;
    }

    public ly0(o3 o3Var, kx1 kx1Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(kx1Var, "sensitiveModeChecker");
        this.a = o3Var;
        this.b = kx1Var;
    }

    @Override
    public final Map<String, String> a(lz0 lz0Var) {
        y45.j(lz0Var, "mediationNetwork");
        return lz0Var.i();
    }

    public final o3 a() {
        return this.a;
    }
}
