package com.phoenix.slog;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.phoenix.slog.record.log.ILog;
import com.snaptube.base.abtest.ABTestExposureTracker;
import com.snaptube.dataadapter.exceptions.YouTubeDataAdapterException;
import com.snaptube.extractor.pluginlib.common.SiteExtractLog;
import com.snaptube.plugin.PluginId;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.extractor.ExtractorException;
import com.snaptube.premium.log.NonfatalSampleConfig;
import com.snaptube.premium.search.plugin.log.SearchException;
import com.snaptube.premium.search.plugin.log.TraceContext;
import com.snaptube.premium.search.plugin.log.TraceSearchException;
import com.snaptube.util.ProductionEnv;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import net.pubnative.mediation.config.model.RequestTimeModel;
import o.a58;
import o.az7;
import o.cj0;
import o.d75;
import o.dr6;
import o.e58;
import o.em2;
import o.fc1;
import o.fr6;
import o.ha1;
import o.hi3;
import o.ii7;
import o.j23;
import o.ji7;
import o.ke6;
import o.ki7;
import o.l3;
import o.l38;
import o.li7;
import o.me8;
import o.mi7;
import o.ni7;
import o.oi7;
import o.pi7;
import o.qi7;
import o.rh3;
import o.ri7;
import o.se3;
import o.y29;
import org.json.JSONObject;
import rx.c;

@Keep
public class SnapTubeLogger implements rh3 {
    private static final String DEFAULT_WEB_VIEW_VERSION = "empty";
    private static final String KEY_AB_TEST_EXPOSURES = "ab_test_exposures";
    private static final String KEY_CHANNEL = "channel";
    private static final String KEY_CPU_ABIS = "cpu_abis";
    private static final String KEY_LANGUAGE = "lang";
    private static final String KEY_LOCALE = "locale";
    private static final String KEY_MANUFACTURER = "manufacturer";
    private static final String KEY_MODEL = "model";
    private static final String KEY_RANDOM_ID = "random_id";
    private static final String KEY_REGION = "region";
    private static final String KEY_SIGNATURE = "signature";
    private static final String KEY_UDID = "udid";
    private static final String KEY_WEB_VIEW = "webview";
    private static final String NETWORK_INFO = "networkInfo";
    private static final String TAG = "SnapTubeLogger";
    private se3 nonFatalSampler = new d75();
    private AtomicBoolean isFirebaseInitialized = new AtomicBoolean(false);

    public class a implements l3 {
        public final String a;

        public a(String str) {
            this.a = str;
        }

        public void a(Throwable th) {
            FirebaseCrashlytics.getInstance().log(ILog.SnapNetworkInfo.b(false).toString());
            if (this.a != null) {
                FirebaseCrashlytics.getInstance().log(this.a);
            }
            FirebaseCrashlytics.getInstance().recordException(new Throwable(this.a, th));
            SnapTubeLoggerManager.Instance.recordLogcat(6, "", "", th);
        }

        @Override
        public void call(Object obj) {
            a((Throwable) obj);
        }
    }

    public class b implements l3 {
        public b() {
        }

        public void a(Throwable th) {
        }

        @Override
        public void call(Object obj) {
            a((Throwable) obj);
        }
    }

    public static String a(Context context) {
        return lambda$setCrashlyticsInfo$1(context);
    }

    public static String b(Context context) {
        return lambda$setCrashlyticsInfo$6(context);
    }

    private TraceSearchException buildTraceException(Throwable th) {
        TraceSearchException traceSearchException = new TraceSearchException(e58.a(th, null));
        TraceContext.log(getCommonInfo());
        traceSearchException.setTraceItems(TraceContext.getItems());
        return traceSearchException;
    }

    public static String c() {
        return lambda$setCrashlyticsInfo$4();
    }

    public static String d(Context context) {
        return lambda$setCrashlyticsInfo$0(context);
    }

    public static void d(String str, String str2) {
        sLogTracker().log(3, str, str2);
    }

    public static String e() {
        return lambda$setCrashlyticsInfo$3();
    }

    public static void e(String str, String str2, Throwable th) {
        w(str, str2);
        sLogTracker().logException(th);
    }

    public static void e(String str, Throwable th) {
        w(TAG, str);
        sLogTracker().logException(th);
    }

    public static void e(Throwable th) {
        sLogTracker().logException(th);
    }

    private String execute(Callable<String> callable) {
        try {
            return callable.call();
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder(DEFAULT_WEB_VIEW_VERSION);
            if (th.getMessage() != null) {
                sb.append("-");
                sb.append(th.getMessage());
            }
            return sb.toString();
        }
    }

    public static String f() {
        return lambda$setCrashlyticsInfo$5();
    }

    public static String g() {
        return getCpuAbis();
    }

    private static ABTestExposureTracker getABTestExposureTracker() {
        return ((com.snaptube.premium.app.a) fc1.a(PhoenixApplication.z())).B0();
    }

    @NonNull
    private static String getCpuAbis() {
        return l38.y(Arrays.asList(az7.h()), RequestTimeModel.DELIMITER);
    }

    private Throwable getExtractExceptionFromThrowable(Throwable th) {
        while (!ExtractorException.class.getSimpleName().equals(th.getClass().getSimpleName())) {
            th = th.getCause();
            if (th.getCause() == null) {
                return null;
            }
        }
        return th;
    }

    private String getExtractSimpleMsg(String str, Throwable th) {
        return "url = " + str + ", exception = " + th;
    }

    private NonfatalSampleConfig getNonFatalSampleConfig() {
        String strR0 = Config.R0();
        if (!TextUtils.isEmpty(strR0)) {
            try {
                return (NonfatalSampleConfig) j23.b(strR0, NonfatalSampleConfig.class);
            } catch (Exception e) {
                ProductionEnv.throwExceptForDebugging("ParseNonfatalSampleConfigException", e);
            }
        }
        return null;
    }

    private static String getNormalizeExtractLog(Map<String, Object> map) {
        if (map == null || map.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder("{\n");
        for (String str : map.keySet()) {
            sb.append("\t");
            sb.append(str);
            sb.append(":");
            recordNormValue(sb, map.get(str));
            sb.append("\n");
        }
        sb.append("}");
        return sb.toString();
    }

    private Throwable getSearchExceptionFromThrowable(Throwable th) {
        Throwable cause = th;
        while (!(cause instanceof hi3)) {
            if (SearchException.class.getSimpleName().equals(cause.getClass().getSimpleName())) {
                return buildTraceException(th);
            }
            cause = cause.getCause();
            if (cause.getCause() == null) {
                return null;
            }
        }
        return cause;
    }

    private String getSearchSimpleMsg(String str, String str2, Throwable th) {
        return "id = " + str + ", method = " + str2 + ", exception = " + th;
    }

    @Nullable
    private static String getSignature(Context context) throws PackageManager.NameNotFoundException, NoSuchAlgorithmException {
        return cj0.m(context.getPackageManager().getPackageInfo(context.getPackageName(), 64));
    }

    private String getWebViewVersion(Context context) {
        try {
            PackageInfo packageInfoD = y29.d(context);
            String str = packageInfoD != null ? packageInfoD.versionName : DEFAULT_WEB_VIEW_VERSION;
            return TextUtils.isEmpty(str) ? DEFAULT_WEB_VIEW_VERSION : str;
        } catch (Throwable th) {
            return "empty:" + th.getMessage();
        }
    }

    private String getYoutubeAdapterSimpleMsg(String str, String str2, Throwable th) {
        return "id = " + str + ", method = " + str2 + ", exception = " + th;
    }

    private Throwable getYoutubeExceptionFromThrowable(Throwable th) {
        while (th != null) {
            if (YouTubeDataAdapterException.class.getSimpleName().equals(th.getClass().getSimpleName())) {
                return th;
            }
            th = th.getCause();
        }
        return null;
    }

    public static String h() {
        return lambda$setCrashlyticsInfo$2();
    }

    public static void i(String str, String str2) {
        sLogTracker().log(4, str, str2);
    }

    private static String lambda$setCrashlyticsInfo$0(Context context) throws Exception {
        return me8.g(context);
    }

    private static String lambda$setCrashlyticsInfo$1(Context context) throws Exception {
        return az7.C(context);
    }

    private static String lambda$setCrashlyticsInfo$2() throws Exception {
        return Locale.getDefault().toString();
    }

    private static String lambda$setCrashlyticsInfo$3() throws Exception {
        return Build.MANUFACTURER;
    }

    private static String lambda$setCrashlyticsInfo$4() throws Exception {
        return Build.MODEL;
    }

    private static String lambda$setCrashlyticsInfo$5() throws Exception {
        return Integer.toString(ke6.a());
    }

    private static String lambda$setCrashlyticsInfo$6(Context context) throws Exception {
        return getSignature(context);
    }

    private static void recordNormValue(StringBuilder sb, Object obj) {
        if (obj == null) {
            sb.append("null");
            return;
        }
        if (obj instanceof Throwable) {
            sb.append("error:");
            sb.append(obj.toString());
        } else {
            if (obj.getClass().isPrimitive() || (obj instanceof Number) || (obj instanceof String)) {
                sb.append(obj);
                return;
            }
            try {
                sb.append(j23.h(obj));
            } catch (Exception e) {
                sb.append(obj);
                e(e);
            }
        }
    }

    private static rh3 sLogTracker() {
        return ((com.snaptube.premium.app.a) fc1.a(PhoenixApplication.z())).I0();
    }

    private void setCrashlyticsInfo(Context context) {
        FirebaseCrashlytics firebaseCrashlytics = FirebaseCrashlytics.getInstance();
        String strExecute = execute(new ii7(context));
        firebaseCrashlytics.setUserId(strExecute);
        ha1.a aVarC = new ha1.a().c(KEY_CHANNEL, execute(new ji7())).c("lang", execute(new ki7())).c("region", execute(new li7(context))).c("locale", execute(new mi7())).c(KEY_MANUFACTURER, execute(new ni7())).c("model", execute(new oi7())).c(KEY_RANDOM_ID, execute(new pi7())).c(KEY_SIGNATURE, execute(new qi7(context))).c(KEY_CPU_ABIS, execute(new ri7()));
        if (TextUtils.isEmpty(strExecute)) {
            strExecute = DEFAULT_WEB_VIEW_VERSION;
        }
        aVarC.c("udid", strExecute);
        aVarC.c(KEY_WEB_VIEW, getWebViewVersion(context));
        String strA = getABTestExposureTracker().a();
        if (strA == null) {
            strA = "null";
        }
        aVarC.c(KEY_AB_TEST_EXPOSURES, strA);
        firebaseCrashlytics.setCustomKeys(aVarC.b());
    }

    public static void v(String str, String str2) {
        sLogTracker().log(2, str, str2);
    }

    public static void w(String str, String str2) {
        sLogTracker().log(5, str, str2);
    }

    public void clearLogDownloadUrl() {
        SnapTubeLoggerManager.Instance.clearDownloadUrl();
    }

    @Override
    public String getCommonInfo() {
        return SnapTubeLoggerManager.Instance.getCommonInfo().toString();
    }

    @Override
    public List<String> getLogDownloadUrl() {
        return SnapTubeLoggerManager.Instance.getRecentDownloadUrls();
    }

    @Override
    @WorkerThread
    public void initialize(Context context) {
        try {
            setCrashlyticsInfo(context);
            this.nonFatalSampler.b(getNonFatalSampleConfig());
        } catch (Throwable th) {
            ProductionEnv.throwExceptForDebugging("HistoryException", th);
        }
    }

    @Override
    public boolean isFeedbackExtractLogEnable() {
        return dr6.g();
    }

    @Override
    public void log(int i, String str, String str2) {
        if (i < 6) {
            SnapTubeLoggerManager.Instance.recordLogcat(i, str, str2, null);
            try {
                if (this.isFirebaseInitialized.compareAndSet(false, true)) {
                    em2.a(PhoenixApplication.z());
                }
                FirebaseCrashlytics.getInstance().log(str2);
            } catch (Exception e) {
                ProductionEnv.throwExceptForDebugging(e);
            }
        }
        if (ProductionEnv.isLoggable()) {
            Log.println(i, str, str2);
        }
    }

    @Override
    public void logException(String str, Throwable th) {
        if (this.nonFatalSampler.a(str)) {
            c.Q(th).z0(a58.c).u0(new a(str), new b());
        }
    }

    @Override
    public void logException(Throwable th) {
        logException("HistoryException", th);
    }

    @Override
    public void logExtractUrlFail(String str, String str2, Throwable th) {
        if (TextUtils.isEmpty(str) || th == null) {
            ProductionEnv.throwExceptForDebugging(new IllegalArgumentException("invalid extractor exception, " + getExtractSimpleMsg(str, th)));
            return;
        }
        Throwable extractExceptionFromThrowable = getExtractExceptionFromThrowable(th);
        if (extractExceptionFromThrowable != null) {
            SnapTubeLoggerManager.Instance.recordFeedbackExtractLog(str, extractExceptionFromThrowable, str2);
            return;
        }
        d(str, "wrong exception type , e = " + th);
    }

    @Override
    public void logExtractUrlFail(String str, Map<String, Object> map) {
        String string;
        if (map == null || map.size() == 0) {
            return;
        }
        map.put(NETWORK_INFO, ILog.SnapNetworkInfo.b(false).toString());
        PluginId pluginId = PluginId.SITE_EXTRACTOR;
        String currentVersion = pluginId.getCurrentVersion();
        if (currentVersion == null) {
            currentVersion = pluginId.getRequiredMinVersion();
        }
        map.put(pluginId.getName(), currentVersion);
        String normalizeExtractLog = getNormalizeExtractLog(map);
        if (TextUtils.isEmpty(normalizeExtractLog)) {
            ProductionEnv.throwExceptForDebugging(new IllegalStateException("extract info empty"));
            return;
        }
        HashMap map2 = new HashMap();
        Object obj = map.get(SiteExtractLog.INFO_EXCEPTION_NAME);
        if (obj != null) {
            map2.put(SiteExtractLog.INFO_EXCEPTION_NAME, (String) obj);
        }
        Object obj2 = map.get(SiteExtractLog.INFO_HOST);
        if (obj2 != null) {
            map2.put(SiteExtractLog.INFO_HOST, (String) obj2);
        }
        map2.put("plugin_version", currentVersion);
        try {
            string = new JSONObject(map2).toString();
        } catch (Exception e) {
            ProductionEnv.errorLog(TAG, e.getMessage());
            string = null;
        }
        SnapTubeLoggerManager snapTubeLoggerManager = SnapTubeLoggerManager.Instance;
        if (string == null) {
            string = "";
        }
        snapTubeLoggerManager.recordExtractLog(str, normalizeExtractLog, string);
    }

    @Override
    public void logSearchFail(String str, String str2, Throwable th) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || th == null) {
            ProductionEnv.throwExceptForDebugging(new IllegalArgumentException("invalid search exception, " + getSearchSimpleMsg(str, str2, th)));
            return;
        }
        Throwable searchExceptionFromThrowable = getSearchExceptionFromThrowable(th);
        if (searchExceptionFromThrowable != null) {
            SnapTubeLoggerManager.Instance.recordSearchLog(str, str2, searchExceptionFromThrowable);
            return;
        }
        d(str, "wrong exception type , e = " + th);
    }

    @Override
    public void logYoutubeDataAdapterFail(String str, String str2, Throwable th) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || th == null) {
            ProductionEnv.throwExceptForDebugging(new IllegalArgumentException("invalid youtube adapter exception, " + getYoutubeAdapterSimpleMsg(str, str2, th)));
            return;
        }
        Throwable youtubeExceptionFromThrowable = getYoutubeExceptionFromThrowable(th);
        if (youtubeExceptionFromThrowable != null) {
            SnapTubeLoggerManager.Instance.recordYoutubeDataLog(str, str2, youtubeExceptionFromThrowable);
            return;
        }
        d(str, "wrong exception type , e = " + th);
    }

    public void reportCommonLog() {
        SnapTubeLoggerManager.Instance.checkFeedbackCommonLog();
    }

    public void startForceReport() {
        fr6.r();
    }
}
