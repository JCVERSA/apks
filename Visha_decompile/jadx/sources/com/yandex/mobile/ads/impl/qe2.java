package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import com.yandex.mobile.ads.impl.qe2;
import defpackage.y45;

public final class qe2 implements ve2 {
    private final Handler a = new Handler(Looper.getMainLooper());
    private lu b;

    public static final void a(qe2 qe2Var) {
        y45.j(qe2Var, "this$0");
        lu luVar = qe2Var.b;
        if (luVar != null) {
            luVar.onVideoComplete();
        }
    }

    @Override
    public final void onVideoComplete() {
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                qe2.a(this.b);
            }
        });
    }

    public final void a(sn2 sn2Var) {
        this.b = sn2Var;
    }
}
