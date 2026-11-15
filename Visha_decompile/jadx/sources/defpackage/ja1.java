package defpackage;

import android.text.TextUtils;
import android.util.Log;
import com.transsion.infra.gateway.core.utils.ObjectLogUtils;

public class ja1 {
    public static final int DEBUG = 3;
    public static final int ERROR = 6;
    public static final String IMG_TAG = "ssp_img";
    public static final int INFO = 4;
    public static final int JSON = 9;
    public static final String LOAD_TAG = "ssp_load";
    public static final String MEASURE_TAG = "ssp_measure";
    public static final String SECOND_PRICE_TAG = "ssp_second_price";
    public static final String SPLASH_TAG = "ssp_splash";
    public static final String TAG = "ssp";
    public static final String TRACK_TAG = "ssp_track";
    public static final int VERBOSE = 2;
    public static final int WARN = 5;
    public static final int WTF = 8;
    private final ObjectLogUtils logUtils;
    public static ObjectLogUtils NET_LOG = new ObjectLogUtils.a().o("ADSDK_N").p(false).n(false).m();
    private static ja1 adLogUtil = null;
    private final String gloableTag = "ADSDK_S";
    private final int mLoggingLevel = 2;

    public ja1() {
        ObjectLogUtils objectLogUtilsM = new ObjectLogUtils.a().o("ADSDK").q(true).n(false).m();
        this.logUtils = objectLogUtilsM;
        objectLogUtilsM.y(3);
    }

    public static synchronized ja1 Log() {
        try {
            if (adLogUtil == null) {
                synchronized (ja1.class) {
                    try {
                        if (adLogUtil == null) {
                            adLogUtil = new ja1();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return adLogUtil;
    }

    public static void netLog(String str) {
        NET_LOG.o(str);
    }

    public final boolean a(int i) {
        return i >= 2;
    }

    public void d(String str, String str2) {
        log(3, str, str2);
    }

    public void e(String str) {
        log(6, "", "******" + str + "******");
    }

    public String getGlobalTag() {
        return "ADSDK_S";
    }

    public void i(String str, String str2) {
        log(4, str, str2);
    }

    public void log(int i, String str, String str2) {
        logWithThrowable(i, str, str2, null);
    }

    public void logWithThrowable(int i, String str, String str2, Throwable th) {
        try {
            if (a(i)) {
                if (!TextUtils.isEmpty(str)) {
                    str = getGlobalTag() + "_" + str;
                }
                if (i == 2) {
                    if (th != null) {
                        this.logUtils.z(str, str2, th);
                        return;
                    } else {
                        this.logUtils.z(str, str2);
                        return;
                    }
                }
                if (i == 3) {
                    if (th != null) {
                        this.logUtils.h(str, str2, th);
                        return;
                    } else {
                        this.logUtils.h(str, str2);
                        return;
                    }
                }
                if (i == 4) {
                    if (th != null) {
                        this.logUtils.p(str, str2, th);
                        return;
                    } else {
                        this.logUtils.p(str, str2);
                        return;
                    }
                }
                if (i == 5) {
                    if (th != null) {
                        this.logUtils.A(str, str2, th);
                        return;
                    } else {
                        this.logUtils.A(str, str2);
                        return;
                    }
                }
                if (i != 6) {
                    if (i != 9) {
                        return;
                    }
                    this.logUtils.r(str, str2);
                } else if (th != null) {
                    this.logUtils.j(str, str2, th);
                } else {
                    this.logUtils.j(str, str2);
                }
            }
        } catch (Exception e) {
            Log.d("ADSDK", Log.getStackTraceString(e));
        }
    }

    public void setLogSwitch(boolean z) {
        this.logUtils.m().q(z);
    }

    public void v(String str, String str2) {
        log(2, str, str2);
    }

    public void w(String str, String str2) {
        log(5, str, str2);
    }

    public void d(String str, int i) {
        log(3, str, ul4.a().getString(i));
    }

    public void i(String str, String str2, Throwable th) {
        logWithThrowable(4, str, str2, th);
    }

    public void v(String str, String str2, Throwable th) {
        logWithThrowable(2, str, str2, th);
    }

    public void w(String str, String str2, Throwable th) {
        logWithThrowable(5, str, str2, th);
    }

    public void e(String str, String str2) {
        log(6, str, "******" + str2 + "******");
    }

    public void d(String str, String str2, Throwable th) {
        logWithThrowable(3, str, str2, th);
    }

    public void e(String str, String str2, Throwable th) {
        logWithThrowable(6, str, "******" + str2 + "******", th);
    }
}
