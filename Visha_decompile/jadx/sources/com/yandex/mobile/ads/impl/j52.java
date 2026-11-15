package com.yandex.mobile.ads.impl;

import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.C;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Util;
import defpackage.y45;

public final class j52 {
    private final o5 a;
    private final fb b;
    private final th1 c;
    private final ui1 d;
    private final oe2 e;
    private final m82 f;

    public j52(o5 o5Var, si1 si1Var, fb fbVar, th1 th1Var, ui1 ui1Var, oe2 oe2Var, m82 m82Var) {
        y45.j(o5Var, "adPlaybackStateController");
        y45.j(si1Var, "playerStateController");
        y45.j(fbVar, "adsPlaybackInitializer");
        y45.j(th1Var, "playbackChangesHandler");
        y45.j(ui1Var, "playerStateHolder");
        y45.j(oe2Var, "videoDurationHolder");
        y45.j(m82Var, "updatedDurationAdPlaybackProvider");
        this.a = o5Var;
        this.b = fbVar;
        this.c = th1Var;
        this.d = ui1Var;
        this.e = oe2Var;
        this.f = m82Var;
    }

    public final void a(Timeline timeline) {
        y45.j(timeline, "timeline");
        if (timeline.isEmpty()) {
            return;
        }
        if (timeline.getPeriodCount() != 1) {
            sp0.b(new Object[0]);
        }
        this.d.a(timeline);
        Timeline.Period period = timeline.getPeriod(0, this.d.a());
        y45.i(period, "getPeriod(...)");
        long j = period.durationUs;
        this.e.a(Util.usToMs(j));
        if (j != C.TIME_UNSET) {
            AdPlaybackState adPlaybackStateA = this.a.a();
            this.f.getClass();
            y45.j(adPlaybackStateA, "adPlaybackState");
            AdPlaybackState adPlaybackStateWithContentDurationUs = adPlaybackStateA.withContentDurationUs(j);
            y45.i(adPlaybackStateWithContentDurationUs, "withContentDurationUs(...)");
            int i = adPlaybackStateWithContentDurationUs.adGroupCount;
            for (int i2 = 0; i2 < i; i2++) {
                if (adPlaybackStateWithContentDurationUs.getAdGroup(i2).timeUs > j) {
                    adPlaybackStateWithContentDurationUs = adPlaybackStateWithContentDurationUs.withSkippedAdGroup(i2);
                    y45.i(adPlaybackStateWithContentDurationUs, "withSkippedAdGroup(...)");
                }
            }
            this.a.a(adPlaybackStateWithContentDurationUs);
        }
        if (!this.b.a()) {
            this.b.b();
        }
        this.c.a();
    }
}
