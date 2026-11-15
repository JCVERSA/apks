package com.transsion.hubsdk.common.version;

import android.os.Build;
import com.alibaba.android.arouter.utils.Consts;
import com.mgtv.downloader.p2p.yunfan.YFP2pLoader;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;

public class TranVersion {
    private static final int STACK_COUNT = 4;
    private static final String TAG = "TranVersion";
    public static int THUBCORE_VERSION;
    public static int sPlatformVersion;

    public static class Core {
        public static final String VERSION_33101 = TranVersion.sPlatformVersion + "101";
        public static final String VERSION_33111 = TranVersion.sPlatformVersion + "111";
        public static final String VERSION_33121 = TranVersion.sPlatformVersion + "121";
        public static final String VERSION_33131 = TranVersion.sPlatformVersion + "131";
        public static final String VERSION_33141 = TranVersion.sPlatformVersion + "141";
        public static final String VERSION_33151 = TranVersion.sPlatformVersion + "151";
        public static final String VERSION_33161 = TranVersion.sPlatformVersion + "161";
        public static final String VERSION_33171 = TranVersion.sPlatformVersion + "171";
        public static final String VERSION_33181 = TranVersion.sPlatformVersion + "181";
        public static final String VERSION_33182 = TranVersion.sPlatformVersion + "182";
        public static final String VERSION_33201 = TranVersion.sPlatformVersion + "201";
        public static final String VERSION_33211 = TranVersion.sPlatformVersion + "211";
        public static final String VERSION_33221 = TranVersion.sPlatformVersion + "221";
        public static final String VERSION_33231 = TranVersion.sPlatformVersion + "231";
        public static final String VERSION_33241 = TranVersion.sPlatformVersion + "241";
        public static final String VERSION_33251 = TranVersion.sPlatformVersion + "251";
        public static final String VERSION_33261 = TranVersion.sPlatformVersion + "261";
        public static final String VERSION_33271 = TranVersion.sPlatformVersion + "271";
        public static final String VERSION_33281 = TranVersion.sPlatformVersion + "281";
        public static final String VERSION_33301 = TranVersion.sPlatformVersion + YFP2pLoader.P2P_LOAD_ERROR_FAIL;
        public static final String VERSION_33311 = TranVersion.sPlatformVersion + "311";
        public static final String VERSION_33321 = TranVersion.sPlatformVersion + "321";
        public static final String VERSION_33331 = TranVersion.sPlatformVersion + "331";
        public static final String VERSION_33341 = TranVersion.sPlatformVersion + "341";
        public static final String VERSION_33351 = TranVersion.sPlatformVersion + "351";
        public static final String VERSION_33361 = TranVersion.sPlatformVersion + "361";
        public static final String VERSION_33371 = TranVersion.sPlatformVersion + "371";
        public static final String VERSION_33381 = TranVersion.sPlatformVersion + "381";
        public static final String VERSION_33391 = TranVersion.sPlatformVersion + "391";
        public static final String VERSION_33401 = TranVersion.sPlatformVersion + "401";
        public static final String VERSION_33411 = TranVersion.sPlatformVersion + "411";
        public static final String VERSION_33421 = TranVersion.sPlatformVersion + "421";
        public static final String VERSION_33431 = TranVersion.sPlatformVersion + "431";
        public static final String VERSION_33441 = TranVersion.sPlatformVersion + "441";
        public static final String VERSION_33451 = TranVersion.sPlatformVersion + "451";
        public static final String VERSION_33461 = TranVersion.sPlatformVersion + "461";
        public static final String VERSION_33471 = TranVersion.sPlatformVersion + "471";
        public static final String VERSION_33501 = TranVersion.sPlatformVersion + "501";
        public static final String VERSION_33511 = TranVersion.sPlatformVersion + "511";
        public static final String VERSION_37511 = "37.5.1.1";
    }

    static {
        String simpleName = TranVersion.class.getSimpleName();
        sPlatformVersion = Build.VERSION.SDK_INT;
        try {
            String fieldString = TranDoorMan.getFieldString("com.transsion.hubsdk.os.TranBuild", "THUBCORE_VERSION", "0");
            if (fieldString != null && !fieldString.trim().isEmpty()) {
                String strReplace = fieldString.replace(Consts.DOT, "");
                if (!strReplace.isEmpty()) {
                    THUBCORE_VERSION = Integer.parseInt(strReplace);
                }
            }
            TranSdkLog.i(simpleName, "initializer: version = " + fieldString + ", THUBCORE_VERSION = " + THUBCORE_VERSION);
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "static initializer: e = " + th.getMessage());
        }
    }

    private static String getStackTrace(Throwable th, int i) {
        try {
            StackTraceElement[] stackTrace = th.getStackTrace();
            StringBuilder sb = new StringBuilder(th.toString());
            int i2 = 0;
            for (StackTraceElement stackTraceElement : stackTrace) {
                sb.append("\n#" + stackTraceElement.getClassName());
                sb.append(Consts.DOT);
                sb.append(stackTraceElement.getMethodName());
                sb.append("[" + stackTraceElement.getLineNumber() + "]");
                i2++;
                if (i2 >= i) {
                    break;
                }
            }
            return sb.toString();
        } catch (Exception e) {
            TranSdkLog.w(TAG, "getStackTrace Exception" + e);
            return "";
        }
    }

    public static boolean isIntegratedThubCore(String str) {
        try {
            if (THUBCORE_VERSION >= Integer.parseInt(str) && Integer.parseInt(str) >= Integer.parseInt(Core.VERSION_33101)) {
                return true;
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "supportThubCore: e = " + e);
        }
        TranSdkLog.w(TAG, "THUBCore No support Call!!! method version = " + str + ", >>> ThubCore vserion = " + THUBCORE_VERSION + "\n mthod version must <= ThubCore version.\n ---" + getStackTrace(new Throwable(), 4));
        return false;
    }
}
