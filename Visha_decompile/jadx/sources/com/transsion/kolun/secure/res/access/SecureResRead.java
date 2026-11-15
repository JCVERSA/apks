package com.transsion.kolun.secure.res.access;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

class SecureResRead {
    private static final String PERMISSION_ASSETS_PREFIX = "open-assets-paths";
    private static final String PERMISSION_RAW_PREFIX = "open-raw-paths";
    private static final String PERMISSION_WHITE_LIST = "whitelist-open-res";
    private static final String RESOURCE_ASSERTS = "asserts";
    private static final String RESOURCE_RAW = "raw";
    private static final String TAG = "SecureResRead";

    private static synchronized boolean checkAssetsPermission(Context context, String str) {
        Log.w(TAG, "checkAssetsPermission resPath " + str);
        return checkPermission(context, RESOURCE_ASSERTS, str);
    }

    private static synchronized boolean checkPermission(Context context, String str, String str2) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                if (!isInWhiteList(applicationInfo, getCurProcessName(context))) {
                    Log.w(TAG, "PERMISSION DENIED, NOT IN WHITE LIST" + str2);
                    return false;
                }
                String string = applicationInfo.metaData.getString(PERMISSION_ASSETS_PREFIX, "");
                if (TextUtils.equals(string, "/") && TextUtils.equals(str, RESOURCE_ASSERTS)) {
                    return true;
                }
                if (TextUtils.isEmpty(string) && TextUtils.equals(str, RESOURCE_ASSERTS)) {
                    return false;
                }
                if (!TextUtils.isEmpty(string) && TextUtils.equals(str, RESOURCE_ASSERTS)) {
                    return checkResReadPermission(string, str2);
                }
                String string2 = applicationInfo.metaData.getString(PERMISSION_RAW_PREFIX, "");
                if (TextUtils.equals(string, "/") && TextUtils.equals(str, RESOURCE_RAW)) {
                    return true;
                }
                if (TextUtils.isEmpty(string2) && TextUtils.equals(str, RESOURCE_RAW)) {
                    return false;
                }
                if (!TextUtils.isEmpty(string2) && TextUtils.equals(str, RESOURCE_RAW)) {
                    return checkResReadPermission(string2, str2);
                }
                return false;
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, "checkPermission EXCEPTION " + e);
        }
    }

    private static synchronized boolean checkRawPermission(Context context, String str) {
        Log.w(TAG, "checkRawPermission resPath " + str);
        return checkPermission(context, RESOURCE_RAW, str);
    }

    private static boolean checkResReadPermission(String str, String str2) {
        if (!str.contains(ProcessInfo.SPLIT_NEW_VERSION)) {
            return isChildPath(str, str2);
        }
        for (String str3 : str.split(ProcessInfo.SPLIT_NEW_VERSION)) {
            if (isChildPath(str3, str2)) {
                return true;
            }
        }
        return false;
    }

    private static String getCurProcessName(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        int iMyPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null || runningAppProcesses.size() == 0) {
            return "";
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == iMyPid) {
                return runningAppProcessInfo.processName;
            }
        }
        return context.getPackageName();
    }

    @HookResMethod(name = "getMetaDataInfo")
    public static synchronized Bundle getMetaDataInfo(Context context, String[] strArr) {
        ApplicationInfo applicationInfo;
        Bundle bundle = new Bundle();
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            applicationInfo = null;
        }
        if (applicationInfo != null && applicationInfo.metaData != null) {
            if (!isInWhiteList(applicationInfo, getCurProcessName(context))) {
                Log.w(TAG, "PERMISSION DENIED, READ METADATA" + strArr);
                return bundle;
            }
            for (String str : strArr) {
                String string = applicationInfo.metaData.getString(str, null);
                if (string != null) {
                    bundle.putString(str, string);
                }
            }
            return bundle;
        }
        return bundle;
    }

    private static boolean isChildPath(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        return str2.contains(str);
    }

    private static boolean isInWhiteList(ApplicationInfo applicationInfo, String str) {
        String string = applicationInfo.metaData.getString(PERMISSION_WHITE_LIST, "");
        if (TextUtils.isEmpty(string)) {
            return true;
        }
        if (!string.contains(ProcessInfo.SPLIT_NEW_VERSION)) {
            return str.startsWith(string);
        }
        String[] strArrSplit = string.split(ProcessInfo.SPLIT_NEW_VERSION);
        return strArrSplit.length > 0 && str.startsWith(strArrSplit[0]);
    }

    @HookResMethod(name = "listAssetsDir")
    public static synchronized String[] listAssetsDir(Context context, String str) {
        try {
            if (checkAssetsPermission(context, str)) {
                String[] list = context.getAssets().list(str);
                if (list != null) {
                    return list;
                }
                return new String[0];
            }
            Log.w(TAG, "READ ASSERTS PERMISSION DENIED " + str);
            return new String[0];
        } catch (IOException e) {
            Log.e(TAG, "listAssetsDir EXCEPTION " + e);
            return new String[0];
        }
    }

    @HookResMethod(name = "readAssetsFile")
    public static synchronized InputStream readAssetsFile(Context context, String str) {
        String str2 = File.separator;
        if (str.contains(str2)) {
            String strSubstring = str.substring(0, str.lastIndexOf(str2) - 1);
            if (!checkAssetsPermission(context, strSubstring)) {
                Log.w(TAG, "READ ASSERTS PERMISSION DENIED " + strSubstring);
                return null;
            }
        } else if (!checkAssetsPermission(context, "")) {
            Log.w(TAG, "READ ASSERTS PERMISSION DENIED / ");
            return null;
        }
        try {
            return context.getAssets().open(str);
        } catch (IOException e) {
            Log.e(TAG, "readAssetsFile EXCEPTION " + e);
            return null;
        }
    }

    @HookResMethod(name = "readRawFile")
    public static synchronized InputStream readRawFile(Context context, String str) {
        if (!checkRawPermission(context, str)) {
            Log.w(TAG, "READ RAW PERMISSION DENIED " + str);
            return null;
        }
        try {
            Resources resources = context.getResources();
            return resources.openRawResource(resources.getIdentifier(str, RESOURCE_RAW, context.getPackageName()));
        } catch (Exception e) {
            Log.e(TAG, "readRawFile EXCEPTION " + e);
            return null;
        }
    }
}
