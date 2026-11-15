package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.Progress;
import defpackage.y45;
import java.io.IOException;
import java.net.URL;
import java.util.Map;

public final class ke1 {
    private final t82 a;

    public ke1(t82 t82Var) {
        this.a = t82Var;
    }

    public final vp1 a(up1<?> up1Var, Map<String, String> map) throws IOException, ai {
        r01 r01Var;
        y45.j(up1Var, Progress.REQUEST);
        y45.j(map, "additionalHeaders");
        URL urlA = gd1.a(up1Var, this.a);
        Map<String, String> mapE = up1Var.e();
        y45.i(mapE, "getHeaders(...)");
        Map mapC = kotlin.collections.a.C(kotlin.collections.a.s(map, mapE));
        if (!mapC.containsKey("Content-Type")) {
            mapC.put("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
        }
        qf0 qf0VarA = qf0.b.a(mapC);
        r01.c.getClass();
        y45.j(up1Var, Progress.REQUEST);
        if (up1Var.f() == -1) {
            r01Var = r01.d;
        } else {
            switch (up1Var.f()) {
                case 0:
                    r01Var = r01.d;
                    break;
                case 1:
                    r01Var = r01.e;
                    break;
                case 2:
                    r01Var = r01.f;
                    break;
                case 3:
                    r01Var = r01.g;
                    break;
                case 4:
                    r01Var = r01.h;
                    break;
                case 5:
                    r01Var = r01.i;
                    break;
                case 6:
                    r01Var = r01.j;
                    break;
                case 7:
                    r01Var = r01.k;
                    break;
                default:
                    throw new IllegalStateException("Unknown method type.");
            }
        }
        byte[] bArrB = up1Var.b();
        return new vp1.a().a(urlA).a(qf0VarA).a(r01Var.a(), bArrB != null ? yp1.a.a(bArrB) : null).a();
    }
}
