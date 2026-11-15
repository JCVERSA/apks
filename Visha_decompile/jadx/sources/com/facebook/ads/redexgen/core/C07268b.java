package com.facebook.ads.redexgen.core;

import android.media.AudioTrack;
import android.media.metrics.LogSessionId;

public final class C07268b {
    public static void A00(AudioTrack audioTrack, C07147m c07147m) {
        LogSessionId logSessionIdA00 = c07147m.A00();
        LogSessionId logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
        if (!logSessionIdA00.equals(logSessionId)) {
            audioTrack.setLogSessionId(logSessionIdA00);
        }
    }
}
