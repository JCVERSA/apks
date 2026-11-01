package com.snaptube.extractor.pluginlib.common;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.snaptube.extractor.pluginlib.utils.PluginContextUtil;
import com.snaptube.video.videoextractor.net.HttpHeader;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import o.a93;
import o.e93;
import o.ja9;
import o.ld2;
import o.ma3;
import o.qz;
import o.t83;
import o.um8;
import o.xm3;
import o.ye9;

public class AvailabilityChecker implements ma3 {
    private static final int MAX_DELAY_IN_SECONDS = 512;
    public static final String METHOD_IS_AVAILABLE = "isAvailable";
    public static final String METHOD_SETLOGGER = "setLogger";
    public static final String METHOD_WITH = "with";
    public static final String TAG = "AvailabilityChecker";
    private static volatile AvailabilityChecker instance;
    public static int sHttpStatus;
    private volatile Context context;
    private CountDownLatch countDownLatch;
    private Object pluginChecker;
    private long remoteCheckStartTime;
    private volatile Boolean result;
    private AtomicBoolean checkInProgress = new AtomicBoolean();
    private final Runnable checkStart = new a();
    private final Runnable checkRemote = new b();
    private final Runnable checkDone = new c();
    private final Handler handler = new Handler(Looper.getMainLooper());
    private int checkDelayFactor = 1;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            if (AvailabilityChecker.access$000(AvailabilityChecker.this).get() || AvailabilityChecker.access$100(AvailabilityChecker.this) != null) {
                return;
            }
            AvailabilityChecker.access$200(AvailabilityChecker.this);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        /* JADX WARN: Code duplicated, block: B:44:0x00d7 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:45:0x00d9  */
        /* JADX WARN: Code duplicated, block: B:48:0x00e2  */
        /* JADX WARN: Code duplicated, block: B:50:0x00ee  */
        /* JADX WARN: Code duplicated, block: B:53:0x00ff  */
        @Override
        public void run() {
            Uri uriBuild;
            int statusCode;
            String stackTraceString;
            long jC;
            boolean z;
            try {
                String strAccess$300 = AvailabilityChecker.access$300(AvailabilityChecker.this);
                Log.i(AvailabilityChecker.TAG, "networkCountryIso is " + strAccess$300);
                uriBuild = Uri.parse("https://misc.api.thejeu.com/availability");
                try {
                    try {
                        Uri.Builder builderBuildUpon = uriBuild.buildUpon();
                        if (!TextUtils.isEmpty(strAccess$300)) {
                            builderBuildUpon.appendQueryParameter("networkCountryIso", strAccess$300.toUpperCase());
                        }
                        int iA = um8.a(PluginContextUtil.getAppContext());
                        if (iA != 0) {
                            builderBuildUpon.appendQueryParameter("vc", String.valueOf(iA));
                        }
                        String strB = ye9.b();
                        if (!TextUtils.isEmpty(strB)) {
                            builderBuildUpon.appendQueryParameter("gl", strB.toUpperCase());
                        }
                        uriBuild = builderBuildUpon.build();
                        HashMap map = new HashMap();
                        map.put(HttpHeader.KEY_ACCEPT_LANGUAGE, Locale.getDefault().toString());
                        a93 a93VarG = e93.g(uriBuild.toString(), map, null);
                        if (a93VarG != null) {
                            statusCode = a93VarG.h();
                            try {
                                jC = t83.c(a93VarG);
                            } catch (Throwable th) {
                                th = th;
                                Log.w(AvailabilityChecker.TAG, "request availability api failed", th);
                                stackTraceString = Log.getStackTraceString(th);
                                jC = 0;
                            }
                        } else {
                            jC = 0;
                            statusCode = 0;
                        }
                        stackTraceString = "";
                    } catch (HttpException e) {
                        e = e;
                        statusCode = e.getStatusCode();
                        String stackTraceString2 = Log.getStackTraceString(e);
                        long jB = t83.b(e.getHeaders());
                        stackTraceString = stackTraceString2;
                        jC = jB;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    statusCode = 0;
                    Log.w(AvailabilityChecker.TAG, "request availability api failed", th);
                    stackTraceString = Log.getStackTraceString(th);
                    jC = 0;
                    AvailabilityChecker.sHttpStatus = statusCode;
                    if (statusCode != 418) {
                        z = statusCode != 418;
                        if (AvailabilityChecker.access$100(AvailabilityChecker.this) != null) {
                            AvailabilityChecker.access$102(AvailabilityChecker.this, Boolean.valueOf(z));
                        } else {
                            AvailabilityChecker.access$102(AvailabilityChecker.this, Boolean.valueOf(z));
                        }
                        ld2.F(AvailabilityChecker.access$400(AvailabilityChecker.this), z, z ? jC : 0L);
                        Log.d(AvailabilityChecker.TAG, "Availability: " + z);
                        AvailabilityChecker.access$500(AvailabilityChecker.this, statusCode, jC);
                    } else {
                        if (statusCode != 418) {
                        }
                        if (AvailabilityChecker.access$100(AvailabilityChecker.this) != null) {
                            AvailabilityChecker.access$102(AvailabilityChecker.this, Boolean.valueOf(z));
                        } else {
                            AvailabilityChecker.access$102(AvailabilityChecker.this, Boolean.valueOf(z));
                        }
                        ld2.F(AvailabilityChecker.access$400(AvailabilityChecker.this), z, z ? jC : 0L);
                        Log.d(AvailabilityChecker.TAG, "Availability: " + z);
                        AvailabilityChecker.access$500(AvailabilityChecker.this, statusCode, jC);
                    }
                    AvailabilityChecker.access$800(AvailabilityChecker.this).post(AvailabilityChecker.access$700(AvailabilityChecker.this));
                }
            } catch (HttpException e2) {
                e = e2;
                uriBuild = null;
            } catch (Throwable th3) {
                th = th3;
                uriBuild = null;
            }
            AvailabilityChecker.sHttpStatus = statusCode;
            if (statusCode != 418 || statusCode == 200 || statusCode == 204) {
                if (statusCode != 418) {
                }
                if (AvailabilityChecker.access$100(AvailabilityChecker.this) != null || !AvailabilityChecker.access$100(AvailabilityChecker.this).booleanValue()) {
                    AvailabilityChecker.access$102(AvailabilityChecker.this, Boolean.valueOf(z));
                }
                ld2.F(AvailabilityChecker.access$400(AvailabilityChecker.this), z, z ? jC : 0L);
                Log.d(AvailabilityChecker.TAG, "Availability: " + z);
                AvailabilityChecker.access$500(AvailabilityChecker.this, statusCode, jC);
            } else {
                AvailabilityChecker.access$600(AvailabilityChecker.this, statusCode, stackTraceString, uriBuild != null ? uriBuild.toString() : null);
            }
            AvailabilityChecker.access$800(AvailabilityChecker.this).post(AvailabilityChecker.access$700(AvailabilityChecker.this));
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            AvailabilityChecker.access$000(AvailabilityChecker.this).set(false);
            if (AvailabilityChecker.access$100(AvailabilityChecker.this) == null) {
                AvailabilityChecker.access$900(AvailabilityChecker.this);
            } else {
                AvailabilityChecker.access$1000(AvailabilityChecker.this).countDown();
            }
        }
    }

    private AvailabilityChecker(@Nullable Context context) {
        this.checkInProgress.set(false);
        this.countDownLatch = new CountDownLatch(1);
        check();
        if (context != null) {
            this.context = context.getApplicationContext();
        }
    }

    public static AtomicBoolean access$000(AvailabilityChecker availabilityChecker) {
        return availabilityChecker.checkInProgress;
    }

    public static Boolean access$100(AvailabilityChecker availabilityChecker) {
        return availabilityChecker.result;
    }

    public static CountDownLatch access$1000(AvailabilityChecker availabilityChecker) {
        return availabilityChecker.countDownLatch;
    }

    public static Boolean access$102(AvailabilityChecker availabilityChecker, Boolean bool) {
        availabilityChecker.result = bool;
        return bool;
    }

    public static void access$200(AvailabilityChecker availabilityChecker) {
        availabilityChecker.doCheck();
    }

    public static String access$300(AvailabilityChecker availabilityChecker) {
        return availabilityChecker.getNetworkCountryIso();
    }

    public static Context access$400(AvailabilityChecker availabilityChecker) {
        return availabilityChecker.context;
    }

    public static void access$500(AvailabilityChecker availabilityChecker, int i, long j) {
        availabilityChecker.logSuc(i, j);
    }

    public static void access$600(AvailabilityChecker availabilityChecker, int i, String str, String str2) {
        availabilityChecker.logFail(i, str, str2);
    }

    public static Runnable access$700(AvailabilityChecker availabilityChecker) {
        return availabilityChecker.checkDone;
    }

    public static Handler access$800(AvailabilityChecker availabilityChecker) {
        return availabilityChecker.handler;
    }

    public static void access$900(AvailabilityChecker availabilityChecker) {
        availabilityChecker.scheduleNextCheck();
    }

    private long calculateRemoteCheckDuration() {
        return SystemClock.elapsedRealtime() - this.remoteCheckStartTime;
    }

    private void doCheck() {
        try {
            if (ld2.v(this.context, true)) {
                this.result = Boolean.TRUE;
                if (!isSessionNeedRefresh()) {
                    this.handler.post(this.checkDone);
                    return;
                }
                this.countDownLatch.countDown();
            }
        } catch (Exception unused) {
        }
        this.checkInProgress.set(true);
        this.remoteCheckStartTime = SystemClock.elapsedRealtime();
        new Thread(this.checkRemote).start();
    }

    private String getNetworkCountryIso() {
        String strK;
        String strE = "";
        if (this.context == null) {
            return "";
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) this.context.getSystemService("phone");
            telephonyManager.getNetworkCountryIso();
            strE = "TR";
            telephonyManager.getSimCountryIso();
            strK = "TR";
        } catch (Throwable unused) {
            strK = null;
        }
        if (TextUtils.isEmpty(strE)) {
            strE = xm3.d().f().e();
        }
        if (!TextUtils.isEmpty(strE)) {
            strK = strE;
        }
        if (TextUtils.isEmpty(strK)) {
            strK = xm3.d().f().k();
        }
        return !TextUtils.isEmpty(strK) ? strK.toUpperCase() : strK;
    }

    private Boolean getResultFormPlugin() {
        if (this.pluginChecker == null || AvailabilityChecker.class.getClassLoader() == this.pluginChecker.getClass().getClassLoader()) {
            return null;
        }
        try {
            return (Boolean) this.pluginChecker.getClass().getMethod(METHOD_IS_AVAILABLE, null).invoke(this.pluginChecker, null);
        } catch (Throwable unused) {
            return null;
        }
    }

    private boolean isSessionNeedRefresh() {
        if (this.context == null) {
            return false;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jR = ld2.r(this.context);
            long jQ = ld2.q(this.context);
            return jR > 0 && jQ > 0 && jR - jCurrentTimeMillis < jQ / 2;
        } catch (Throwable unused) {
            return false;
        }
    }

    private void logFail(int i, String str, String str2) {
        qz.a(i, str, str2, calculateRemoteCheckDuration());
    }

    private void logSuc(int i, long j) {
        qz.b(i, j, calculateRemoteCheckDuration());
    }

    private void scheduleNextCheck() {
        int i = this.checkDelayFactor * 2;
        if (i > 512) {
            i = 512;
        }
        this.checkDelayFactor = i;
        this.handler.postDelayed(this.checkStart, i * 1000);
    }

    private void updateContext(Context context) {
        if (this.context != null || context == null) {
            return;
        }
        this.context = context.getApplicationContext();
    }

    public static AvailabilityChecker with(@Nullable Context context) {
        if (instance == null) {
            synchronized (AvailabilityChecker.class) {
                try {
                    if (instance == null) {
                        instance = new AvailabilityChecker(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        instance.updateContext(context);
        return instance;
    }

    public void check() {
        if (this.result != null) {
            return;
        }
        this.handler.post(this.checkStart);
    }

    @Override
    public boolean checkAndWait(long j) {
        if (this.result != null) {
            return true;
        }
        check();
        try {
            return this.countDownLatch.await(j, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            return false;
        }
    }

    public void forceCheck() {
        if (this.result == null || !this.result.booleanValue()) {
            this.handler.post(this.checkStart);
        }
    }

    @Override
    public int getLastHttpStatusCode() {
        return sHttpStatus;
    }

    @Deprecated
    public boolean isAvailable() {
        return isAvailable(this.context != null ? true ^ ja9.c(this.context) : true);
    }

    @Override
    public boolean isAvailable(boolean z) {
        Boolean resultFormPlugin = getResultFormPlugin();
        if (resultFormPlugin != null) {
            return resultFormPlugin.booleanValue();
        }
        return this.result == null ? z : this.result.booleanValue();
    }

    public void loadPluginImpl(ClassLoader classLoader) {
        try {
            this.pluginChecker = classLoader.loadClass(AvailabilityChecker.class.getName()).getMethod(METHOD_WITH, Context.class).invoke(null, this.context);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void onStoragePermissionGranted() {
        long jR = ld2.r(this.context);
        if (jR > 0) {
            ld2.C(this.context, jR);
        }
    }

    public void setLogger(Object obj) {
    }
}
