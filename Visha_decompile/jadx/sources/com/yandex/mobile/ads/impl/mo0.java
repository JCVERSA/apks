package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public final class mo0 implements sc2<go0> {
    private final ht a;
    private final long b;
    private final rz1 c;
    private final p10 d;
    private final yb2 e;
    private final em0 f;

    public mo0(p2 p2Var, ht htVar, long j, rz1 rz1Var, p10 p10Var, yb2 yb2Var, em0 em0Var) {
        y45.j(p2Var, "adBreak");
        y45.j(htVar, "adBreakPosition");
        y45.j(rz1Var, "skipInfoParser");
        y45.j(p10Var, "disableSkipChecker");
        y45.j(yb2Var, "videoAdIdProvider");
        y45.j(em0Var, "instreamAdInfoProvider");
        this.a = htVar;
        this.b = j;
        this.c = rz1Var;
        this.d = p10Var;
        this.e = yb2Var;
        this.f = em0Var;
    }

    @Override
    public final go0 a(mb2 mb2Var, uu uuVar, ew0 ew0Var, zc2 zc2Var, String str, String str2, JSONObject jSONObject) {
        Object next;
        y45.j(mb2Var, "videoAd");
        y45.j(uuVar, "creative");
        y45.j(ew0Var, "vastMediaFile");
        y45.j(zc2Var, "adPodInfo");
        rz1 rz1Var = this.c;
        if (this.d.a()) {
            rz1Var = null;
        }
        od2 od2VarA = rz1Var != null ? rz1Var.a(uuVar) : null;
        xn0 xn0Var = new xn0(this.a, ew0Var.f(), ew0Var.h(), ew0Var.d(), ew0Var.e(), Integer.valueOf(ew0Var.b()), ew0Var.a());
        List<ew0> listH = uuVar.h();
        ArrayList arrayList = new ArrayList(defpackage.z71.v(listH, 10));
        for (ew0 ew0Var2 : listH) {
            arrayList.add(new xn0(this.a, ew0Var2.f(), ew0Var2.h(), ew0Var2.d(), ew0Var2.e(), Integer.valueOf(ew0Var2.b()), ew0Var2.a()));
        }
        long jE = uuVar.e();
        yb2 yb2Var = this.e;
        long j = this.b;
        yb2Var.getClass();
        String strA = yb2.a(j, zc2Var, mb2Var);
        this.f.getClass();
        y45.j(mb2Var, "videoAd");
        y45.j(uuVar, "creative");
        Iterator<T> it = mb2Var.l().a().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!y45.e(((u70) next).a(), "bannerId"));
        u70 u70Var = (u70) next;
        return new go0(strA, xn0Var, arrayList, zc2Var, od2VarA, new cm0(mb2Var.g(), uuVar.g(), u70Var != null ? u70Var.b() : null, str, str2, uuVar.b()), jSONObject, jE, mb2Var.l().a());
    }
}
