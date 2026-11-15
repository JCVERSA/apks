package com.transsion.vishaplayersdk.netservices;

import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.b;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.utils.deviceinfo.a;
import com.transsion.vishaplayersdk.base.config.PlayerInitConfig;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public class PlayerServiceConfig {
    public static final String APP_SECRET_ONLINE = "kkLCdl3*p9mQPkZtOy";
    public static final String APP_SECRET_TEST = "oN*ix&ASD#z&jsTFZ%(YFy(";
    public static final String BASE_HOST_ONLINE = "https://api.vishavideo.com";
    public static final String BASE_HOST_TEST = "https://test-visha.transsion-os.com";
    public static boolean bTestMode = false;
    public static final String BASE_HOST = "https://api.vishavideo.com";
    public static String mUserToken = "";
    public static String mTokenType = "";
    public static String mCountryCode = "";
    public static String mLanguageCode = "";
    public static String mClientIP = "";
    public static String mGAID = "";
    public static String mOpenid = "";
    public static String mVAID = "";

    public static final class API {
        public static final String API_VISHA_VIDEO_AUTH = "visha/api/video/auth";
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
        sb.append(mOpenid);
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

    public static void initConfigParameter(PlayerInitConfig playerInitConfig) {
        if (playerInitConfig != null) {
            mUserToken = playerInitConfig.getUserToken();
            mCountryCode = playerInitConfig.getCountryCode();
            mLanguageCode = playerInitConfig.getLanguageCode();
            mClientIP = playerInitConfig.getClientIP();
            mGAID = playerInitConfig.getGAID();
            mOpenid = playerInitConfig.getOpenid();
            mVAID = playerInitConfig.getVAID();
            mTokenType = playerInitConfig.getTokenType();
        }
    }
}
