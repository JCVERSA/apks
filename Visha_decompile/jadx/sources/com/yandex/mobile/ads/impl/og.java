package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.abb;
import defpackage.ky5;
import defpackage.wn8;
import defpackage.y45;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Pair;

public final class og {
    private final LinkedHashMap a;

    public og(dp dpVar, List<? extends ig<?>> list, i3 i3Var, g71 g71Var, wo1 wo1Var, pk0 pk0Var, vr0 vr0Var) {
        y45.j(dpVar, "clickListenerFactory");
        y45.j(list, "assets");
        y45.j(i3Var, "adClickHandler");
        y45.j(g71Var, "viewAdapter");
        y45.j(wo1Var, "renderedTimer");
        y45.j(pk0Var, "impressionEventsObservable");
        LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(defpackage.z71.v(list, 10)), 16));
        for (ig<?> igVar : list) {
            String strB = igVar.b();
            vr0 vr0VarA = igVar.a();
            Pair pairA = abb.a(strB, dpVar.a(igVar, vr0VarA == null ? vr0Var : vr0VarA, i3Var, g71Var, wo1Var, pk0Var));
            linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
        }
        this.a = linkedHashMap;
    }

    public final void a(View view, String str) {
        y45.j(view, "view");
        y45.j(str, "assetName");
        View.OnClickListener onClickListener = (View.OnClickListener) this.a.get(str);
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }
}
