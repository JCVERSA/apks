package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import defpackage.y45;
import java.util.concurrent.TimeUnit;

public final class m5 {
    private final j80 a;
    private final me2 b;
    private final r9 c;
    private final p5 d;

    public m5(p9 p9Var, j80 j80Var, me2 me2Var, r9 r9Var, p5 p5Var) {
        y45.j(p9Var, "adStateDataController");
        y45.j(j80Var, "fakePositionConfigurator");
        y45.j(me2Var, "videoCompletedNotifier");
        y45.j(r9Var, "adStateHolder");
        y45.j(p5Var, "adPlaybackStateController");
        this.a = j80Var;
        this.b = me2Var;
        this.c = r9Var;
        this.d = p5Var;
    }

    public final void a(com.google.android.exoplayer2.t tVar, boolean z) {
        y45.j(tVar, "player");
        boolean zB = this.b.b();
        int currentAdGroupIndex = tVar.getCurrentAdGroupIndex();
        if (currentAdGroupIndex == -1) {
            com.google.android.exoplayer2.source.ads.a aVarA = this.d.a();
            long contentPosition = tVar.getContentPosition();
            long contentDuration = tVar.getContentDuration();
            if (contentDuration == C.TIME_UNSET || contentPosition == C.TIME_UNSET) {
                currentAdGroupIndex = -1;
            } else {
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                currentAdGroupIndex = aVarA.f(timeUnit.toMicros(contentPosition), timeUnit.toMicros(contentDuration));
            }
        }
        boolean zB2 = this.c.b();
        if (zB || z || currentAdGroupIndex == -1 || zB2) {
            return;
        }
        com.google.android.exoplayer2.source.ads.a aVarA2 = this.d.a();
        if (aVarA2.d(currentAdGroupIndex).b == Long.MIN_VALUE) {
            this.b.a();
        } else {
            this.a.a(aVarA2, currentAdGroupIndex);
        }
    }
}
