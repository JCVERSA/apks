package com.transsion.playercommon.vishaapis;

import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.b;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.utils.deviceinfo.a;
import defpackage.zdc;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public class APIServiceConfig {
    public static final String APP_SECRET_ONLINE = "kkLCdl3*p9mQPkZtOy";
    public static final String BASE_HOST_ONLINE = "https://visha.shalltry.com";
    public static final String BASE_HOST_TEST = "https://test-visha.transsion-os.com";
    public static final String SUBTITLE_BASE_HOST_ONLINE = "https://api.vishavideo.com/";
    public static final String SUBTITLE_BASE_HOST_TEST = "https://test-visha.transsion-os.com/";
    public static boolean bTestMode;

    public static final class API {
        public static final String API_GET_SNIFF_SCRIPT = "/visha/sniffer/get-script";
        public static final String API_SNIFFER_GET_RESULT = "/visha/sniffer/get-result";
        public static final String VISHA_SNIFFER_SUBMIT = "/visha/sniffer/submit";
    }

    public static String getReferer() {
        StringBuilder sb = new StringBuilder();
        String strJ = a.j();
        if (TextUtils.isEmpty(strJ)) {
            strJ = "";
        }
        sb.append(strJ);
        sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
        String strF = AthenaAnalytics.F(Utils.a());
        sb.append(TextUtils.isEmpty(strF) ? "" : strF);
        sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
        sb.append(zdc.c());
        return sb.toString();
    }

    public static String getUserAgent() {
        StringBuilder sb = new StringBuilder("visha ");
        if (bTestMode) {
            sb.append("test");
        } else {
            sb.append(b.d());
        }
        return sb.toString();
    }
}
