package com.transsion.kolun.oxygenbus.common;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import com.transsion.kolun.oxygenbus.common.OxygenBusUtils;
import dalvik.system.DexFile;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.text.StringSubstitutor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class OxygenBusUtils {
    public static final String APP_SERVICE_CHANNEL = "APPService";
    public static final String AUTHORITY = "com.transsion.kolun.oxygenbus2.serviceBinder";
    private static final String EXTRACTED_NAME_EXT = ".classes";
    private static final String EXTRACTED_SUFFIX = ".zip";
    private static final String KEY_DEX_NUMBER = "dex.number";
    public static final String KEY_SERVICE_BIND_FLAGS = "bindServiceFlags";
    public static final String OXYGENBUS_PROVIDER = "com.transsion.kolun.oxygenbus.OxygenBusProvider";
    public static final String PREFIX_CLIENT = "client_";
    private static final String PREFS_FILE = "multidex.version";
    private static final String TAG = "OxygenBusUtils";
    private static final int VM_WITH_MULTIDEX_VERSION_MAJOR = 2;
    private static final int VM_WITH_MULTIDEX_VERSION_MINOR = 1;
    private static ProviderClientCallable providerGetCall;
    private static volatile Handler sWorkHandler;
    public static final String OXYGENBUS_PROCESS = "com.transsion.kolun.aiservice";
    public static final ComponentName APP_SERVICE_COMPONENT = new ComponentName(OXYGENBUS_PROCESS, "com.transsion.kolun.aiservice.OxygenBusServer");
    public static final String[] OXYGENBUS_INIT_SERVICE = {"OpenServiceCore", "KolunRouter", "KolunAbility", "KolunLiving"};
    private static final String SECONDARY_FOLDER_NAME = "code_cache" + File.separator + "secondary-dexes";
    private static final Handler sMainHandler = new Handler(Looper.getMainLooper());
    private static final ExecutorService threadPool = Executors.newFixedThreadPool(3);
    private static final byte[] LOCK = new byte[0];

    public static class ProviderClientCallable implements Callable<Boolean> {
        private Context context;

        private ProviderClientCallable(Context context) {
            this.context = context;
            if (context == null || context.getApplicationContext() == null) {
                return;
            }
            this.context = context.getApplicationContext();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Boolean call() {
            ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = null;
            try {
                contentProviderClientAcquireUnstableContentProviderClient = this.context.getContentResolver().acquireUnstableContentProviderClient(OxygenBusUtils.AUTHORITY);
                return Boolean.valueOf(contentProviderClientAcquireUnstableContentProviderClient != null);
            } catch (Exception e) {
                e.printStackTrace();
                return Boolean.FALSE;
            } finally {
                if (contentProviderClientAcquireUnstableContentProviderClient != null) {
                    try {
                        contentProviderClientAcquireUnstableContentProviderClient.close();
                        contentProviderClientAcquireUnstableContentProviderClient.release();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
    }

    public static String channelSubscribeKey(String str) {
        return str + "#" + Process.myPid();
    }

    private static final ProcessInfo create(String str, String str2, String str3, List<String> list, String str4) {
        String str5 = ProcessInfo.DEFAULT_VERSION;
        if (str4 == null || "".equals(str4)) {
            str4 = ProcessInfo.DEFAULT_VERSION;
        }
        if (str2 != null && !"".equals(str2)) {
            str5 = str4;
        }
        ProcessInfo processInfo = new ProcessInfo(str, str2, str3, str5);
        if (list != null && !"".equals(list)) {
            processInfo.setChannels(list);
        }
        return processInfo;
    }

    public static String getCurProcessName(Context context) {
        int iMyPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null) {
            ApiInvokeLog.logWarning("ClassUtils", "getCurProcessName 1, activityManager == null");
            return "";
        }
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses == null || runningAppProcesses.size() == 0) {
            ApiInvokeLog.logWarning("ClassUtils", "getCurProcessName 2, activityManager == null");
            return "";
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == iMyPid) {
                return runningAppProcessInfo.processName;
            }
        }
        return context.getPackageName();
    }

    public static Set<String> getFileNameByPackageName(Context context, final String str) throws InterruptedException, PackageManager.NameNotFoundException, IOException {
        final HashSet hashSet = new HashSet();
        List<String> sourcePaths = getSourcePaths(context);
        final CountDownLatch countDownLatch = new CountDownLatch(sourcePaths.size());
        for (final String str2 : sourcePaths) {
            new Thread(new Runnable() {
                @Override
                public final void run() {
                    OxygenBusUtils.lambda$getFileNameByPackageName$0(str2, str, hashSet, countDownLatch);
                }
            }).start();
        }
        countDownLatch.await();
        Log.d(TAG, "Filter " + hashSet.size() + " classes by packageName <" + str + ">");
        return hashSet;
    }

    private static SharedPreferences getMultiDexPreferences(Context context) {
        return context.getSharedPreferences(PREFS_FILE, 4);
    }

    public static String getPackageNameByUid(Context context, int i) {
        try {
            String nameForUid = context.getPackageManager().getNameForUid(i);
            if (TextUtils.isEmpty(nameForUid)) {
                return "";
            }
            if (nameForUid.contains(StringUtils.PROCESS_POSTFIX_DELIMITER)) {
                return nameForUid.split(StringUtils.PROCESS_POSTFIX_DELIMITER)[0];
            }
            return nameForUid.contains("#") ? nameForUid.split("#")[0] : nameForUid;
        } catch (Exception e) {
            ApiInvokeLog.logError(TAG, "getPackageNameByPid error, exception " + e.getMessage());
            return "";
        }
    }

    public static List<String> getSourcePaths(Context context) throws PackageManager.NameNotFoundException, IOException {
        ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
        File file = new File(applicationInfo.sourceDir);
        ArrayList arrayList = new ArrayList();
        arrayList.add(applicationInfo.sourceDir);
        String str = file.getName() + EXTRACTED_NAME_EXT;
        if (!isVMMultidexCapable()) {
            int i = getMultiDexPreferences(context).getInt(KEY_DEX_NUMBER, 1);
            File file2 = new File(applicationInfo.dataDir, SECONDARY_FOLDER_NAME);
            for (int i2 = 2; i2 <= i; i2++) {
                File file3 = new File(file2, str + i2 + EXTRACTED_SUFFIX);
                if (!file3.isFile()) {
                    throw new IOException("Missing extracted secondary dex file '" + file3.getPath() + "'");
                }
                arrayList.add(file3.getAbsolutePath());
            }
        }
        return arrayList;
    }

    private static String getStringJson(JSONObject jSONObject, String str) {
        try {
            return jSONObject.has(str) ? jSONObject.getString(str) : "";
        } catch (JSONException unused) {
            return "";
        }
    }

    private static List<String> getStringListJson(JSONObject jSONObject, String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (jSONObject.has(str)) {
                JSONArray jSONArray = jSONObject.getJSONArray(str);
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(jSONArray.getString(i));
                }
            }
        } catch (JSONException unused) {
        }
        return arrayList;
    }

    public static Handler getWorkHandler() {
        return sWorkHandler;
    }

    private static void initWorkHandler() {
        if (sWorkHandler == null) {
            synchronized (LOCK) {
                try {
                    if (sWorkHandler == null) {
                        HandlerThread handlerThread = new HandlerThread(ApiInvokeLog.LOG_NAME, 0);
                        handlerThread.start();
                        sWorkHandler = new Handler(handlerThread.getLooper());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static synchronized boolean isAppServiceProcessStarted(Context context) {
        boolean z = false;
        if (context == null) {
            return false;
        }
        try {
            boolean z2 = Looper.getMainLooper() == Looper.myLooper();
            if (providerGetCall == null) {
                providerGetCall = new ProviderClientCallable(context);
            }
            Boolean bool = z2 ? (Boolean) submit(providerGetCall, 300) : (Boolean) submit(providerGetCall, 1000);
            if (bool != null && bool.booleanValue()) {
                z = true;
            }
            return z;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private static boolean isVMMultidexCapable() {
        boolean z = false;
        try {
            String property = System.getProperty("java.vm.version");
            if (property != null) {
                Matcher matcher = Pattern.compile("(\\d+)\\.(\\d+)(\\.\\d+)?").matcher(property);
                if (matcher.matches()) {
                    int i = Integer.parseInt(matcher.group(1));
                    int i2 = Integer.parseInt(matcher.group(2));
                    if (i > 2 || (i == 2 && i2 >= 1)) {
                        z = true;
                    }
                }
            }
        } catch (NumberFormatException | Exception unused) {
        }
        StringBuilder sb = new StringBuilder();
        sb.append("VM with name ");
        sb.append("'Android'");
        sb.append(z ? " has multidex support" : " does not have multidex support");
        ApiInvokeLog.logInfo(TAG, sb.toString());
        return z;
    }

    public static void lambda$getFileNameByPackageName$0(String str, String str2, Set set, CountDownLatch countDownLatch) {
        DexFile dexFile = null;
        try {
            if (str.endsWith(EXTRACTED_SUFFIX)) {
                dexFile = DexFile.loadDex(str, str + ".tmp", 0);
            } else {
                dexFile = new DexFile(str);
            }
            Enumeration<String> enumerationEntries = dexFile.entries();
            while (enumerationEntries.hasMoreElements()) {
                String strNextElement = enumerationEntries.nextElement();
                if (strNextElement.startsWith(str2)) {
                    set.add(strNextElement);
                }
            }
        } catch (Throwable th) {
            try {
                ApiInvokeLog.logWarning(TAG, "Scan map file in dex files made error." + th);
            } finally {
                if (dexFile != null) {
                    try {
                        dexFile.close();
                    } catch (Throwable unused) {
                    }
                }
                countDownLatch.countDown();
            }
        }
    }

    public static ProcessInfo parseInfo(String str) {
        if (str.startsWith("{") && str.endsWith(StringSubstitutor.DEFAULT_VAR_END)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                return create(getStringJson(jSONObject, "process"), getStringJson(jSONObject, "pid"), getStringJson(jSONObject, "packageName"), getStringListJson(jSONObject, "channels"), getStringJson(jSONObject, "version"));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        if (str.contains("#")) {
            return parseOldVersion(str);
        }
        return !str.contains(ProcessInfo.SPLIT_NEW_VERSION) ? new ProcessInfo(str) : parseProcessNewVersion(str);
    }

    private static ProcessInfo parseOldVersion(String str) {
        String str2;
        String str3;
        String str4;
        String[] strArrSplit = str.split("#");
        if (strArrSplit.length <= 1) {
            str2 = "";
            str3 = str2;
            str4 = str3;
        } else {
            String str5 = "";
            str2 = str5;
            str3 = str2;
            str4 = str3;
            for (int i = 0; i < strArrSplit.length; i++) {
                if (i == 0) {
                    str3 = strArrSplit[0];
                } else if (i == 1) {
                    str2 = strArrSplit[1];
                } else if (i == 2) {
                    str5 = strArrSplit[2];
                } else if (i == 3) {
                    str4 = strArrSplit[3];
                }
            }
            str = str5;
        }
        return create(str, str2, "", str3, str4);
    }

    private static ProcessInfo parseProcessNewVersion(String str) {
        String str2 = "";
        String str3 = "";
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        for (String str7 : str.split(ProcessInfo.SPLIT_NEW_VERSION)) {
            if ("pid".startsWith(str7)) {
                str6 = str7.split("=")[1];
            } else if ("process".startsWith(str7)) {
                str2 = str7.split("=")[1];
            } else if ("packageName".startsWith(str7)) {
                str3 = str7.split("=")[1];
            } else if ("version".startsWith(str7)) {
                str5 = str7.split("=")[1];
            } else if ("channel".startsWith(str7)) {
                str4 = str7.split("=")[1];
            } else {
                ApiInvokeLog.logWarning("ProcessInfo", " error parse string " + str7);
            }
        }
        return create(str2, str6, str3, str4, str5);
    }

    public static String parseSubscribePid(String str) {
        try {
            if (str.contains("#")) {
                return str.split("#")[1];
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return str;
    }

    public static void postRunnable(Runnable runnable) {
        sMainHandler.post(runnable);
    }

    public static void postWorkRunnable(Runnable runnable) {
        postWorkRunnable(runnable, 0L);
    }

    public static void removeRunnable(Runnable runnable) {
        sMainHandler.removeCallbacks(runnable);
    }

    public static void removeWorkRunnable(Runnable runnable) {
        if (sWorkHandler == null) {
            return;
        }
        sWorkHandler.removeCallbacks(runnable);
    }

    public static <T> T submit(Callable<T> callable, int i) {
        try {
            return threadPool.submit(callable).get(i, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            ApiInvokeLog.logError(TAG, "submit execute timeout " + callable.getClass().getName() + " " + e);
            return null;
        }
    }

    public static ExecutorService threadPool() {
        return threadPool;
    }

    public static void postRunnable(Runnable runnable, long j) {
        sMainHandler.postDelayed(runnable, j);
    }

    public static void postWorkRunnable(Runnable runnable, long j) {
        initWorkHandler();
        sWorkHandler.postDelayed(runnable, j);
    }

    private static final ProcessInfo create(String str, String str2, String str3, String str4, String str5) {
        String str6 = ProcessInfo.DEFAULT_VERSION;
        if (str5 == null || "".equals(str5)) {
            str5 = ProcessInfo.DEFAULT_VERSION;
        }
        if (str2 != null && !"".equals(str2)) {
            str6 = str5;
        }
        ProcessInfo processInfo = new ProcessInfo(str, str2, str3, str6);
        if (str4 != null && !"".equals(str4)) {
            processInfo.putChannel(str4);
        }
        return processInfo;
    }
}
