package com.hunantv.media.global;

public class Constants {
    public static final String APHONE = "1";
    public static final boolean DISABLE_NET_GET = false;
    public static final String EXTRA_REPORT_PARAMS = "EXTRA_REPORT_PARAMS";
    public static final boolean FOR_OTT = false;
    public static final boolean IS_CORE2 = true;
    public static final boolean IS_DAMANG = false;
    public static final boolean IS_EXTERN_SDK = true;
    public static final boolean IS_OPEN_FUNC_HEADSET_LISTEN = false;
    public static final boolean IS_OPEN_IMGOVSR = false;
    public static final boolean IS_OPEN_MARLINDRM = false;
    public static final boolean IS_OPEN_MGTVDRM = false;
    public static final boolean IS_OPEN_MULTI_CHANNEL = false;
    public static final boolean IS_OPEN_P2P = false;
    public static final boolean IS_OPEN_WANOS2 = false;
    public static final boolean IS_OVERSEA = false;
    public static final boolean IS_USE_SHARED_SSL = true;
    public static final boolean IS_VIDEO_UNION_SDK = true;
    public static final String OTT = "3";
    public static final String PLANTFORM = "1";
    public static final String REPORT_BROADCAST_ACTION = "mgtv.player.action.PLAYER_REPORT_EVENT";
    public static final String REPORT_VERSION = "v1.0.0";
    public static final ReportWay REPORT_WAY = ReportWay.LOCAL_BROADCAST;
    public static final String THREAD_NAME_TAG = "mgtvmp_";
    public static final int USE_OPENSSL_1_0 = 1;
    public static final int USE_OPENSSL_1_1 = 2;
    public static final int USE_OPENSSL_VERSION = 2;

    public enum ReportWay {
        HTTP,
        BROADCAST,
        LOCAL_BROADCAST
    }
}
