package a;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.SecureRandom;

public final class k implements Application.ActivityLifecycleCallbacks {

    public static final Handler f33i = new Handler(Looper.getMainLooper());

    public static final SecureRandom f34j = new SecureRandom();

    public static final int[][] f35k = {new int[]{177, 170, 186, 182, 187, 169, 181, 246, 235, 182}, new int[]{158, Sdk$SDKError.Reason.INVALID_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.MRAID_JS_COPY_FAILED_VALUE, 156, Sdk$SDKError.Reason.OMSDK_JS_WRITE_FAILED_VALUE, 154, Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE, 135, 196, Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE}, new int[]{179, 232, 233, 174, 191, 233, 164, 232, 173}, new int[]{50, 109, 47, 39, 35, 33, 41, 33, 49}};

    public static final int[] f36l = {Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE, 234, 199, 66};

    public static final int[][] f37m = {new int[]{Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE, TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, 112, Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, 111, Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE, 48, 45, 112}, new int[]{28, 82, 90, 30, 7, 24, 1, 5, 70, 6}, new int[]{38, Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, 59, 42, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, 49, Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, 56}, new int[]{11, 84, 22, 30, 26, 24, 16, 24, 8}};

    public static final int[] f38n = {31, 104, 82, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE};

    public static final int[][] f39o = {new int[]{241, 166, 211, 195, 248, 226, 251, 255, 253, Sdk$SDKError.Reason.AD_LOAD_FAIL_RETRY_AFTER_VALUE, 160, 239, 198, 174, Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE, 224}, new int[]{211, 163, 239, 226, Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, Sdk$SDKError.Reason.AD_NOT_LOADED_VALUE, 173, 211, Sdk$SDKError.Reason.MRAID_JS_COPY_FAILED_VALUE, 247, 244, 168, Sdk$SDKError.Reason.MRAID_JS_COPY_FAILED_VALUE, 252, 163, Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE}, new int[]{166, 143, 170, 168, 142, 146, 153, Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE, 135, 180, 188, 186, 179, 146, Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE, 143}, new int[]{50, 18, 18, 53, 53, 44, 59, 57, 41, 62, 19, 42, 87, 27, 37, 6}};

    public static final int[] f40p = {150, 154, 227, 97};

    public static final k f41q;

    public Application f42a;

    public volatile b f43b;

    public volatile int f44c;

    public Activity f45d;

    public int f46e;

    public boolean f47f;

    public boolean f48g;

    public boolean f49h;

    static {
        k kVar = new k();
        kVar.f43b = b.a();
        f41q = kVar;
    }

    public static String f(int[][] iArr, int[] iArr2, int i10) {
        byte[] bArr = new byte[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            int length = i11 % iArr.length;
            bArr[i11] = (byte) (iArr2[length] ^ iArr[length][i11 / iArr.length]);
        }
        try {
            return new String(bArr, "UTF-8");
        } catch (Exception unused) {
            return "";
        }
    }

    public final synchronized void b() {
        this.f44c = 0;
        new Thread(new h(this, 1), "w").start();
    }

    public static b a(k kVar, String str) {
        HttpURLConnection httpURLConnection;
        Throwable th2;
        BufferedReader bufferedReader;
        if (!g(str)) {
            throw new IllegalArgumentException("Invalid remote config endpoint");
        }
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(10000);
                httpURLConnection.setReadTimeout(10000);
                httpURLConnection.setUseCaches(false);
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode < 200 || responseCode >= 300) {
                    throw new IllegalStateException("Remote config HTTP status " + responseCode);
                }
                bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), "UTF-8"));
                try {
                    StringBuilder sb2 = new StringBuilder();
                    do {
                        String line = bufferedReader.readLine();
                        if (line != null) {
                            sb2.append(line);
                        } else {
                            b bVarB = b.b(f.d(sb2.toString(), f(f39o, f40p, 64)));
                            try {
                                bufferedReader.close();
                            } catch (Exception unused) {
                            }
                            httpURLConnection.disconnect();
                            return bVarB;
                        }
                    } while (sb2.length() <= 1048576);
                    throw new IllegalArgumentException("Remote config is too large");
                } catch (Throwable th3) {
                    th2 = th3;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Exception unused2) {
                        }
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                        throw th2;
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                th2 = th4;
                bufferedReader = null;
            }
        } catch (Throwable th5) {
            httpURLConnection = null;
            th2 = th5;
            bufferedReader = null;
        }
    }

    public final synchronized void d(Activity activity) {
        long longVersionCode;
        b bVar = this.f43b;
        if (activity != null && !activity.isFinishing() && !activity.isDestroyed()) {
            if ("com.transsion.subroom.activity.MainActivity".equals(activity.getClass().getName())) {
                if (bVar.f12j) {
                    long j10 = bVar.f3a;
                    try {
                        PackageInfo packageInfo = this.f42a.getPackageManager().getPackageInfo(this.f42a.getPackageName(), 0);
                        longVersionCode = Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode;
                    } catch (Exception unused) {
                        longVersionCode = Long.MAX_VALUE;
                    }
                    if (j10 > longVersionCode && g(bVar.f9g)) {
                        if (!this.f47f && !this.f48g) {
                            this.f47f = true;
                            this.f48g = true;
                            AlertDialog alertDialogCreate = new AlertDialog.Builder(activity).setTitle(bVar.f14l).setMessage(bVar.f15m).setPositiveButton(bVar.f16n, (DialogInterface.OnClickListener) null).setCancelable(false).create();
                            alertDialogCreate.setCanceledOnTouchOutside(false);
                            alertDialogCreate.setOnDismissListener(new i(this));
                            alertDialogCreate.show();
                            alertDialogCreate.getButton(-1).setOnClickListener(new j(activity, bVar, alertDialogCreate));
                        }
                    }
                }
            }
        }
    }

    public final synchronized void c(Activity activity) {
        if (!this.f49h && activity != null && !activity.isFinishing()) {
            if ("com.transsion.subroom.activity.MainActivity".equals(activity.getClass().getName())) {
                this.f49h = true;
                try {
                    activity.startActivity(new Intent(activity, (Class<?>) com.community.oneroom.nu.mm.b.class));
                } catch (Exception unused) {
                }
            }
        }
    }

    public static boolean g(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("https://") || str.startsWith("http://");
    }

    public static void e(Activity activity, String str) {
        if (g(str)) {
            try {
                activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            } catch (ActivityNotFoundException | IllegalArgumentException | SecurityException unused) {
            }
        }
    }

    @Override
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        this.f45d = activity;
        e.a(activity);
        String name = activity.getClass().getName();
        if ("com.transsion.videodetail.StreamDetailActivity".equals(name)) {
            synchronized (this) {
                try {
                    b bVar = this.f43b;
                    if (bVar.f10h && g(bVar.f7e)) {
                        if (this.f46e >= bVar.f4b) {
                            this.f46e = 0;
                        }
                        if (this.f46e == 0) {
                            e(activity, bVar.f7e);
                        }
                        this.f46e++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        if ("com.transsion.subroom.activity.MainActivity".equals(name)) {
            c(activity);
            d(activity);
        }
    }

    @Override
    public final void onActivityResumed(Activity activity) {
        this.f45d = activity;
        e.a(activity);
        c(activity);
        d(activity);
    }

    @Override
    public final void onActivityPaused(Activity activity) {
        if (this.f45d == activity) {
            this.f45d = null;
        }
    }

    @Override
    public final void onActivityDestroyed(Activity activity) {
        if (this.f45d == activity) {
            this.f45d = null;
        }
    }

    @Override
    public final void onActivityStarted(Activity activity) {
    }

    @Override
    public final void onActivityStopped(Activity activity) {
    }

    @Override
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
