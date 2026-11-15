package com.yandex.mobile.ads.impl;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.common.Timeline;
import defpackage.y45;

public final class ui1 {
    private final Timeline.Period a;
    private Timeline b;
    private boolean c;

    public ui1() {
        Timeline.Period period = new Timeline.Period();
        Timeline timeline = Timeline.EMPTY;
        y45.i(timeline, "EMPTY");
        this(period, timeline, false);
    }

    public final Timeline.Period a() {
        return this.a;
    }

    public final Timeline b() {
        return this.b;
    }

    public final boolean c() {
        return this.c;
    }

    public final void a(boolean z) {
        this.c = z;
    }

    public final void a(Timeline timeline) {
        y45.j(timeline, "<set-?>");
        this.b = timeline;
    }

    public ui1(Timeline.Period period, Timeline timeline, boolean z) {
        y45.j(period, TypedValues.CycleType.S_WAVE_PERIOD);
        y45.j(timeline, "timeline");
        this.a = period;
        this.b = timeline;
        this.c = z;
    }
}
