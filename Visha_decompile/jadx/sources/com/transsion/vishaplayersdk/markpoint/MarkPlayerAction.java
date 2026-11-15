package com.transsion.vishaplayersdk.markpoint;

import defpackage.hb0;

public class MarkPlayerAction extends hb0 {
    private static final String EVENT_NAME_VD_OTT_VIDEOVIEW = "vd_ott_videoview";
    private static final String KEY_NAME_VIDEO_SOURCE = "source";

    public static void markPlayerFirstFrameShow(String str) {
        hb0.markTrackSingle(EVENT_NAME_VD_OTT_VIDEOVIEW, "source", str);
    }
}
