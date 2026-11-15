package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.cookie.SerializableCookie;
import defpackage.abb;
import defpackage.ky5;
import defpackage.wn8;
import defpackage.y45;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;

public final class n41 {
    private final sj0 a;
    private final b61 b;
    private final n61 c;
    private final y71 d;
    private final h81 e;

    public n41(sj0 sj0Var) {
        this(sj0Var, new b61(), new n61(), new y71(), new h81());
    }

    public final rt a(g41 g41Var) {
        tp.a aVarB;
        cu.a aVar;
        List<xj0> listA;
        y45.j(g41Var, "nativeAd");
        List<ig<?>> listB = g41Var.b();
        LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(defpackage.z71.v(listB, 10)), 16));
        Iterator<T> it = listB.iterator();
        while (it.hasNext()) {
            ig igVar = (ig) it.next();
            Pair pairA = abb.a(igVar.b(), igVar.d());
            linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
        }
        Object obj = linkedHashMap.get("media");
        cu cuVar = null;
        ex0 ex0Var = obj instanceof ex0 ? (ex0) obj : null;
        Object obj2 = linkedHashMap.get("favicon");
        xj0 xj0Var = obj2 instanceof xj0 ? (xj0) obj2 : null;
        Object obj3 = linkedHashMap.get("icon");
        xj0 xj0Var2 = obj3 instanceof xj0 ? (xj0) obj3 : null;
        Object obj4 = linkedHashMap.get("close_button");
        tp tpVar = obj4 instanceof tp ? (tp) obj4 : null;
        Object obj5 = linkedHashMap.get("age");
        String str = obj5 instanceof String ? (String) obj5 : null;
        Object obj6 = linkedHashMap.get(TtmlNode.TAG_BODY);
        String str2 = obj6 instanceof String ? (String) obj6 : null;
        Object obj7 = linkedHashMap.get("call_to_action");
        String str3 = obj7 instanceof String ? (String) obj7 : null;
        Object obj8 = linkedHashMap.get(SerializableCookie.DOMAIN);
        String str4 = obj8 instanceof String ? (String) obj8 : null;
        Object obj9 = linkedHashMap.get("price");
        String str5 = obj9 instanceof String ? (String) obj9 : null;
        Object obj10 = linkedHashMap.get("rating");
        String str6 = obj10 instanceof String ? (String) obj10 : null;
        Object obj11 = linkedHashMap.get("review_count");
        String str7 = obj11 instanceof String ? (String) obj11 : null;
        Object obj12 = linkedHashMap.get("sponsored");
        String str8 = obj12 instanceof String ? (String) obj12 : null;
        Object obj13 = linkedHashMap.get("title");
        String str9 = obj13 instanceof String ? (String) obj13 : null;
        Object obj14 = linkedHashMap.get("warning");
        String str10 = obj14 instanceof String ? (String) obj14 : null;
        boolean z = linkedHashMap.get("feedback") != null;
        xj0 xj0Var3 = (ex0Var == null || (listA = ex0Var.a()) == null) ? null : (xj0) defpackage.i81.q0(listA);
        b61 b61Var = this.b;
        sj0 sj0Var = this.a;
        b61Var.getClass();
        y45.j(sj0Var, "imageProvider");
        tt ttVar = xj0Var3 != null ? new tt(new a61(sj0Var, xj0Var3), xj0Var3.d(), xj0Var3.g(), xj0Var3.a()) : null;
        b61 b61Var2 = this.b;
        sj0 sj0Var2 = this.a;
        b61Var2.getClass();
        y45.j(sj0Var2, "imageProvider");
        tt ttVar2 = xj0Var != null ? new tt(new a61(sj0Var2, xj0Var), xj0Var.d(), xj0Var.g(), xj0Var.a()) : null;
        b61 b61Var3 = this.b;
        sj0 sj0Var3 = this.a;
        b61Var3.getClass();
        y45.j(sj0Var3, "imageProvider");
        tt ttVar3 = xj0Var2 != null ? new tt(new a61(sj0Var3, xj0Var2), xj0Var2.d(), xj0Var2.g(), xj0Var2.a()) : null;
        xt xtVarA = this.c.a(ex0Var);
        this.e.getClass();
        if (tpVar != null && (aVarB = tpVar.b()) != null) {
            int iOrdinal = aVarB.ordinal();
            if (iOrdinal == 0) {
                aVar = cu.a.b;
            } else {
                if (iOrdinal != 1) {
                    throw new NoWhenBranchMatchedException();
                }
                aVar = cu.a.c;
            }
            cuVar = new cu(aVar, tpVar.a());
        }
        this.d.getClass();
        return new rt(xtVarA, ttVar2, ttVar3, ttVar, cuVar, str, str2, str3, str4, str5, y71.a(str6), str7, str8, str9, str10, z);
    }

    public n41(sj0 sj0Var, b61 b61Var, n61 n61Var, y71 y71Var, h81 h81Var) {
        y45.j(sj0Var, "imageProvider");
        y45.j(b61Var, "imageCreator");
        y45.j(n61Var, "mediaCreator");
        y45.j(y71Var, "assetRatingProvider");
        y45.j(h81Var, "closeButtonCreator");
        this.a = sj0Var;
        this.b = b61Var;
        this.c = n61Var;
        this.d = y71Var;
        this.e = h81Var;
    }
}
