package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.SystemClock;
import androidx.media3.common.C;
import com.yandex.mobile.ads.impl.p60;
import defpackage.y45;
import java.io.IOException;

public final class p60 {
    private final ql a;
    private final z5 b;
    private final b70 c;
    private final sp1 d;
    private final r9 e;
    private final a5 f;
    private final p5 g;
    private final eb h;
    private final Handler i;

    public p60(ql qlVar, p9 p9Var, z5 z5Var, b70 b70Var, sp1 sp1Var, r9 r9Var, a5 a5Var, p5 p5Var, eb ebVar, Handler handler) {
        y45.j(qlVar, "bindingControllerHolder");
        y45.j(p9Var, "adStateDataController");
        y45.j(z5Var, "adPlayerEventsController");
        y45.j(b70Var, "playerProvider");
        y45.j(sp1Var, "reporter");
        y45.j(r9Var, "adStateHolder");
        y45.j(a5Var, "adInfoStorage");
        y45.j(p5Var, "adPlaybackStateController");
        y45.j(ebVar, "adsLoaderPlaybackErrorConverter");
        y45.j(handler, "prepareCompleteHandler");
        this.a = qlVar;
        this.b = z5Var;
        this.c = b70Var;
        this.d = sp1Var;
        this.e = r9Var;
        this.f = a5Var;
        this.g = p5Var;
        this.h = ebVar;
        this.i = handler;
    }

    private final void a(int i, int i2, IOException iOException) {
        com.google.android.exoplayer2.source.ads.a aVarK = this.g.a().k(i, i2);
        y45.i(aVarK, "withAdLoadError(...)");
        this.g.a(aVarK);
        go0 go0VarA = this.f.a(new v4(i, i2));
        if (go0VarA == null) {
            sp0.b(new Object[0]);
            return;
        }
        this.e.a(go0VarA, wm0.g);
        this.h.getClass();
        this.b.a(go0VarA, eb.c(iOException));
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

    public static final void a(p60 p60Var, int i, int i2, long j) {
        y45.j(p60Var, "this$0");
        p60Var.a(i, i2, j);
    }

    private final void a(final int i, final int i2, final long j) {
        if (SystemClock.elapsedRealtime() - j < 200) {
            com.google.android.exoplayer2.t tVarA = this.c.a();
            if (tVarA != null && tVarA.getDuration() != C.TIME_UNSET) {
                go0 go0VarA = this.f.a(new v4(i, i2));
                if (go0VarA != null) {
                    this.e.a(go0VarA, wm0.c);
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
                    p60.a(this.b, i, i2, j);
                }
            }, 20L);
            return;
        }
        go0 go0VarA2 = this.f.a(new v4(i, i2));
        if (go0VarA2 != null) {
            this.e.a(go0VarA2, wm0.c);
            this.b.b(go0VarA2);
        } else {
            sp0.b(new Object[0]);
        }
    }
}
