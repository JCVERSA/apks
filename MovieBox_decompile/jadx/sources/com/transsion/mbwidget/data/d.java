package com.transsion.mbwidget.data;

import kotlin.jvm.internal.Intrinsics;

public final class d {

    public static final d f44901a = new d();

    private d() {
    }

    public final boolean a(SportMatch match) {
        Intrinsics.h(match, "match");
        return match.getStatus() == MatchStatus.UNKNOWN || match.getStatus() == MatchStatus.ENDED;
    }

    public final boolean b(SportMatch match) {
        Intrinsics.h(match, "match");
        if (match.getStatus() != MatchStatus.UNKNOWN) {
            return match.getStatus() == MatchStatus.ING;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        return jCurrentTimeMillis >= match.getMatchTime() && jCurrentTimeMillis <= match.getMatchTime() + 7200000;
    }
}
