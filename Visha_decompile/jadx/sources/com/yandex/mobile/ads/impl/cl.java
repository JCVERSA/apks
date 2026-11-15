package com.yandex.mobile.ads.impl;

import com.hisavana.common.tracking.TrackingKey;
import java.util.Map;

public final class cl {
    public static pp1 a(dl dlVar) {
        ts tsVarA;
        pp1 pp1Var = new pp1((Map) null, 3);
        pp1Var.a((dlVar == null || (tsVarA = dlVar.a()) == null) ? null : tsVarA.a(), TrackingKey.AD_TYPE);
        pp1Var.a(dlVar != null ? dlVar.b() : null, "parameters");
        gz1 gz1VarC = dlVar != null ? dlVar.c() : null;
        if (gz1VarC != null) {
            pp1Var.b(gz1VarC.a().a(), "size_type");
            pp1Var.b(Integer.valueOf(gz1VarC.getWidth()), "width");
            pp1Var.b(Integer.valueOf(gz1VarC.getHeight()), "height");
        }
        return pp1Var;
    }
}
