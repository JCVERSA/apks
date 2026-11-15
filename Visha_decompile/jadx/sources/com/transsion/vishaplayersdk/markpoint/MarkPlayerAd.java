package com.transsion.vishaplayersdk.markpoint;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;
import defpackage.hb0;
import defpackage.p06;

public class MarkPlayerAd extends hb0 {
    public static final String EVENT_NAME_VD_OTT_AD_MONITOR = "vd_ott_ad_monitor";
    public static final String KEY_NAME_ADBUTTONNAME = "adButtonName";
    public static final String KEY_NAME_ADDURATION = "adDuration";
    public static final String KEY_NAME_ADTAG = "adTag";
    public static final String KEY_NAME_ADVIDEOHEIGHT = "adVideoHeight";
    public static final String KEY_NAME_ADVIDEOWIDTH = "adVideoWidth";
    public static final String KEY_NAME_CANPAUSE = "canPause";
    public static final String KEY_NAME_STRUEVIEWAD = "sTrueViewAd";
    public static final String KEY_NAME_TRUEVIEWDURATION = "trueViewDuration";
    public static final String KEY_NAME_URL = "url";
    public static final String KEY_NAME_VIPTEXT = "vipText";
    public static String adButtonName;
    public static int adDuration;
    public static String adTag;
    public static int adVideoHeight;
    public static int adVideoWidth;
    public static boolean canPause;
    public static boolean isTrueViewAd;
    public static int trueViewDuration;
    public static String url;
    public static String vipText;

    public static void markAdPlay() {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt(KEY_NAME_TRUEVIEWDURATION, trueViewDuration);
        bundle.putInt(KEY_NAME_ADDURATION, adDuration);
        bundle.putInt(KEY_NAME_ADVIDEOHEIGHT, adVideoHeight);
        bundle.putInt(KEY_NAME_ADVIDEOWIDTH, adVideoWidth);
        bundle.putBoolean(KEY_NAME_STRUEVIEWAD, isTrueViewAd);
        bundle.putBoolean(KEY_NAME_CANPAUSE, canPause);
        bundle.putString(KEY_NAME_ADTAG, adTag);
        bundle.putString("url", url);
        bundle.putString(KEY_NAME_VIPTEXT, vipText);
        bundle.putString(KEY_NAME_ADBUTTONNAME, adButtonName);
        trackData.add(KEY_NAME_TRUEVIEWDURATION, trueViewDuration);
        trackData.add(KEY_NAME_ADDURATION, adDuration);
        trackData.add(KEY_NAME_ADVIDEOHEIGHT, adVideoHeight);
        trackData.add(KEY_NAME_ADVIDEOWIDTH, adVideoWidth);
        trackData.add(KEY_NAME_STRUEVIEWAD, isTrueViewAd);
        trackData.add(KEY_NAME_CANPAUSE, canPause);
        trackData.add(KEY_NAME_ADTAG, adTag);
        trackData.add("url", url);
        trackData.add(KEY_NAME_VIPTEXT, vipText);
        trackData.add(KEY_NAME_ADBUTTONNAME, adButtonName);
        p06.q0(trackData, bundle, EVENT_NAME_VD_OTT_AD_MONITOR, 9324L);
    }
}
