package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.SystemClock;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.C;
import androidx.media3.common.Player;
import com.yandex.mobile.ads.impl.o60;
import defpackage.y45;
import java.io.IOException;

public final class o60 {
    private final pl a;
    private final y5 b;
    private final a70 c;
    private final sp1 d;
    private final q9 e;
    private final z4 f;
    private final o5 g;
    private final db h;
    private final Handler i;

    public o60(pl plVar, o9 o9Var, y5 y5Var, a70 a70Var, sp1 sp1Var, q9 q9Var, z4 z4Var, o5 o5Var, db dbVar, Handler handler) {
        y45.j(plVar, "bindingControllerHolder");
        y45.j(o9Var, "adStateDataController");
        y45.j(y5Var, "adPlayerEventsController");
        y45.j(a70Var, "playerProvider");
        y45.j(sp1Var, "reporter");
        y45.j(q9Var, "adStateHolder");
        y45.j(z4Var, "adInfoStorage");
        y45.j(o5Var, "adPlaybackStateController");
        y45.j(dbVar, "adsLoaderPlaybackErrorConverter");
        y45.j(handler, "prepareCompleteHandler");
        this.a = plVar;
        this.b = y5Var;
        this.c = a70Var;
        this.d = sp1Var;
        this.e = q9Var;
        this.f = z4Var;
        this.g = o5Var;
        this.h = dbVar;
        this.i = handler;
    }

    private final void a(int i, int i2, IOException iOException) {
        AdPlaybackState adPlaybackStateWithAdLoadError = this.g.a().withAdLoadError(i, i2);
        y45.i(adPlaybackStateWithAdLoadError, "withAdLoadError(...)");
        this.g.a(adPlaybackStateWithAdLoadError);
        go0 go0VarA = this.f.a(new u4(i, i2));
        if (go0VarA == null) {
            sp0.b(new Object[0]);
            return;
        }
        this.e.a(go0VarA, vm0.g);
        this.h.getClass();
        this.b.a(go0VarA, db.c(iOException));
    }

    public final void b(int i, int i2, IOException iOException) {
        y45.j(iOException, "exception");
        if (!this.c.b() || !this.a.b()) {
            sp0.f(new Object[0]);
            return;
        }
        try {
            a(i, i2, iOException);
        } catch (RuntimeException e) {
            sp0.b(e);
            this.d.reportError("Unexpected exception while handling prepare error", e);
        }
    }

    public final void a(int i, int i2) {
        a(i, i2, SystemClock.elapsedRealtime());
    }

    public static final void a(o60 o60Var, int i, int i2, long j) {
        y45.j(o60Var, "this$0");
        o60Var.a(i, i2, j);
    }

    private final void a(final int i, final int i2, final long j) {
        if (SystemClock.elapsedRealtime() - j < 200) {
            Player playerA = this.c.a();
            if (playerA != null && playerA.getDuration() != C.TIME_UNSET) {
                go0 go0VarA = this.f.a(new u4(i, i2));
                if (go0VarA != null) {
                    this.e.a(go0VarA, vm0.c);
                    this.b.b(go0VarA);
                    return;
                } else {
                    sp0.b(new Object[0]);
                    return;
                }
            }
            this.i.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    o60.a(this.b, i, i2, j);
                }
            }, 20L);
            return;
        }
        go0 go0VarA2 = this.f.a(new u4(i, i2));
        if (go0VarA2 != null) {
            this.e.a(go0VarA2, vm0.c);
            this.b.b(go0VarA2);
        } else {
            sp0.b(new Object[0]);
        }
    }
}
