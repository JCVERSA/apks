package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class tk2 {
    private final pk2 a;
    private final ArrayList b;
    private dq1<List<mb2>> c;
    private int d;

    public tk2(Context context, o3 o3Var, nd2 nd2Var, ia2 ia2Var, pk2 pk2Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(nd2Var, "reportParametersProvider");
        y45.j(ia2Var, "requestConfigurationParametersProvider");
        y45.j(pk2Var, "loader");
        this.a = pk2Var;
        this.b = new ArrayList();
    }

    public final class a implements dq1<List<? extends mb2>> {
        public a() {
        }

        private final void a() {
            dq1 dq1Var = tk2.this.c;
            if (tk2.this.d != 0 || dq1Var == null) {
                return;
            }
            dq1Var.a(tk2.this.b);
        }

        @Override
        public final void a(sb2 sb2Var) {
            y45.j(sb2Var, "error");
            tk2.this.d--;
            a();
        }

        @Override
        public final void a(List<? extends mb2> list) {
            List<? extends mb2> list2 = list;
            y45.j(list2, "wrapperAds");
            tk2.this.d--;
            tk2.this.b.addAll(list2);
            a();
        }
    }

    public final void a(Context context, List<mb2> list, dq1<List<mb2>> dq1Var) {
        y45.j(context, "context");
        y45.j(list, "wrapperAds");
        y45.j(dq1Var, "listener");
        if (list.isEmpty()) {
            dq1Var.a(this.b);
            return;
        }
        this.c = dq1Var;
        for (mb2 mb2Var : list) {
            this.d++;
            this.a.a(context, mb2Var, new a());
        }
    }
}
