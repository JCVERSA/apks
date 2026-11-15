package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class m4 {
    private final l4 a;

    public m4(Context context, gt gtVar, jm0 jm0Var, sj0 sj0Var, cn0 cn0Var, pc2<go0> pc2Var) {
        y45.j(context, "context");
        y45.j(gtVar, "adBreak");
        y45.j(jm0Var, "adPlayerController");
        y45.j(sj0Var, "imageProvider");
        y45.j(cn0Var, "adViewsHolderManager");
        y45.j(pc2Var, "playbackEventsListener");
        this.a = new l4(context, gtVar, q2.a(gtVar.a().c()), sj0Var, jm0Var, cn0Var, pc2Var);
    }

    public final ArrayList a(List list) {
        y45.j(list, "videoAdInfoList");
        ArrayList arrayList = new ArrayList(defpackage.z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(this.a.a((zb2) it.next()));
        }
        return arrayList;
    }
}
