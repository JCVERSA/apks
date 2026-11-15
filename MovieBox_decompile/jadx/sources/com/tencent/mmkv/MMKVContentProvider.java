package com.tencent.mmkv;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;

public class MMKVContentProvider extends ContentProvider {

    private static Uri f39730a;

    protected static Uri a(Context context) {
        String strD;
        Uri uri = f39730a;
        if (uri != null) {
            return uri;
        }
        if (context == null || (strD = d(context)) == null) {
            return null;
        }
        Uri uri2 = Uri.parse("content://" + strD);
        f39730a = uri2;
        return uri2;
    }

    protected static String b(Context context, int i10) {
        if (i10 == Process.myPid()) {
            return b.a(context);
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null) {
            return "";
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
            if (runningAppProcessInfo.pid == i10) {
                return runningAppProcessInfo.processName;
            }
        }
        return "";
    }

    private Bundle c(String str, int i10, int i11, String str2) {
        MMKV mmkvH = MMKV.H(getContext(), str, i10, i11, str2);
        ParcelableMMKV parcelableMMKV = new ParcelableMMKV(mmkvH);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(" fd = ");
        sb2.append(mmkvH.ashmemFD());
        sb2.append(", meta fd = ");
        sb2.append(mmkvH.ashmemMetaFD());
        Bundle bundle = new Bundle();
        bundle.putParcelable("KEY", parcelableMMKV);
        return bundle;
    }

    private static String d(Context context) {
        ProviderInfo providerInfo;
        try {
            ComponentName componentName = new ComponentName(context, MMKVContentProvider.class.getName());
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (providerInfo = packageManager.getProviderInfo(componentName, 0)) == null) {
                return null;
            }
            return providerInfo.authority;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override
    public Bundle call(String str, String str2, Bundle bundle) {
        if (str.equals("mmkvFromAshmemID") && bundle != null) {
            try {
                return c(str2, bundle.getInt("KEY_SIZE"), bundle.getInt("KEY_MODE"), bundle.getString("KEY_CRYPT"));
            } catch (Exception e10) {
                Log.e("MMKV", e10.getMessage());
            }
        }
        return null;
    }

    @Override
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }

    @Override
    public String getType(Uri uri) {
        return null;
    }

    @Override
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }

    @Override
    public boolean onCreate() {
        return getContext() != null;
    }

    @Override
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }

    @Override
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }
}
