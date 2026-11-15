package com.mgmi.ssp;

public class AdError {
    public static final int ERROR_REASON_ANDROID_SDK_NOT_SUPPORT = 4013;
    public static final int ERROR_REASON_DATA_ERROR = 3003;
    public static final int ERROR_REASON_DOWNLOAD_VIDEO_ERROR = 5002;
    public static final int ERROR_REASON_MID_BLACKLIST = 5008;
    public static final int ERROR_REASON_NATIVE_PERMISION = 4018;
    public static final int ERROR_REASON_NET_ERROR = 3002;
    public static final int ERROR_REASON_NOAD_C2S_ERROR = 2001;
    public static final int ERROR_REASON_NOAD_ERROR = 2002;
    public static final int ERROR_REASON_NOAD_VIP_ERROR = 2003;
    public static final int ERROR_REASON_NO_EXPOSE_ERROR = 4006;
    public static final int ERROR_REASON_NO_NET_ERROR = 3001;
    public static final int ERROR_REASON_OUT_AD_REQUEST = 5005;
    public static final int ERROR_REASON_PACKAGE_ERROR = 5006;
    public static final int ERROR_REASON_PID_BLACKLIST = 5007;
    public static final int ERROR_REASON_PID_ERROR = 4003;
    public static final int ERROR_REASON_PID_STYLE_ERROR = 4004;
    public static final int ERROR_REASON_PLAY_VIDEO_ERROR = 5003;
    public static final int ERROR_REASON_RETRY_FORBIDE = 5004;
    public static final int ERROR_REASON_TIME_OUT = 4011;
    private int errorCode;
    private String errorMsg;

    public AdError(int i, String str) {
        this.errorCode = i;
        this.errorMsg = str;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMsg() {
        return this.errorMsg;
    }

    public void setErrorCode(int i) {
        this.errorCode = i;
    }

    public void setErrorMsg(String str) {
        this.errorMsg = str;
    }
}
