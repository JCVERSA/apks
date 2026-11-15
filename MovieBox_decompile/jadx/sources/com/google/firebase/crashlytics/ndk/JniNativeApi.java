package com.google.firebase.crashlytics.ndk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Build;
import android.text.TextUtils;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

class JniNativeApi implements e {

    private static final boolean f30947b;

    private static final FilenameFilter f30948c = new FilenameFilter() {
        @Override
        public final boolean accept(File file, String str) {
            return JniNativeApi.g(file, str);
        }
    };

    private final Context f30949a;

    static {
        boolean z10;
        try {
            System.loadLibrary("crashlytics");
            z10 = true;
        } catch (UnsatisfiedLinkError e10) {
            qb.g.f().d("libcrashlytics could not be loaded. This APK may not have been compiled for this device's architecture. NDK crashes will not be reported to Crashlytics:\n" + e10.getLocalizedMessage());
            z10 = false;
        }
        f30947b = z10;
    }

    public JniNativeApi(Context context) {
        this.f30949a = context;
    }

    public static void c(List list, PackageInfo packageInfo) {
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        String[] strArr = applicationInfo.splitSourceDirs;
        if (strArr != null) {
            Collections.addAll(list, strArr);
        }
        File file = new File(applicationInfo.dataDir, String.format("files/splitcompat/%s/verified-splits", e(packageInfo)));
        if (!file.exists()) {
            qb.g.f().b("No dynamic features found at " + file.getAbsolutePath());
            return;
        }
        File[] fileArrListFiles = file.listFiles(f30948c);
        if (fileArrListFiles == null) {
            fileArrListFiles = new File[0];
        }
        qb.g.f().b("Found " + fileArrListFiles.length + " APKs in " + file.getAbsolutePath());
        for (File file2 : fileArrListFiles) {
            qb.g.f().b("Adding " + file2.getName() + " to classpath.");
            list.add(file2.getAbsolutePath());
        }
    }

    private static int d() {
        return Build.VERSION.SDK_INT >= 24 ? 9216 : 1024;
    }

    private static String e(PackageInfo packageInfo) {
        return Build.VERSION.SDK_INT >= 28 ? Long.toString(packageInfo.getLongVersionCode()) : Integer.toString(packageInfo.versionCode);
    }

    public static boolean f() {
        return true;
    }

    public static boolean g(File file, String str) {
        return str.toLowerCase().endsWith(".apk");
    }

    private native boolean nativeInit(String[] strArr, Object obj);

    @Override
    public boolean a(String str, AssetManager assetManager) {
        String[] strArrH = h(Build.CPU_ABI);
        if (strArrH.length < 2) {
            return false;
        }
        return f30947b && nativeInit(new String[]{strArrH[0], strArrH[1], str}, assetManager);
    }

    public String[] h(String str) {
        try {
            PackageInfo packageInfo = this.f30949a.getPackageManager().getPackageInfo(this.f30949a.getPackageName(), d());
            ArrayList<String> arrayList = new ArrayList(10);
            arrayList.add(packageInfo.applicationInfo.sourceDir);
            if (f()) {
                c(arrayList, packageInfo);
            }
            String[] strArr = packageInfo.applicationInfo.sharedLibraryFiles;
            if (strArr != null) {
                Collections.addAll(arrayList, strArr);
            }
            ArrayList arrayList2 = new ArrayList(10);
            File parentFile = new File(packageInfo.applicationInfo.nativeLibraryDir).getParentFile();
            if (parentFile != null) {
                arrayList2.add(new File(parentFile, str).getPath());
                if (str.startsWith("arm64")) {
                    arrayList2.add(new File(parentFile, "arm64").getPath());
                } else if (str.startsWith("arm")) {
                    arrayList2.add(new File(parentFile, "arm").getPath());
                }
            }
            for (String str2 : arrayList) {
                if (str2.endsWith(".apk")) {
                    arrayList2.add(str2 + "!/lib/" + str);
                }
            }
            arrayList2.add(System.getProperty("java.library.path"));
            arrayList2.add(packageInfo.applicationInfo.nativeLibraryDir);
            String str3 = File.pathSeparator;
            return new String[]{TextUtils.join(str3, arrayList), TextUtils.join(str3, arrayList2)};
        } catch (PackageManager.NameNotFoundException e10) {
            qb.g.f().e("Unable to compose package paths", e10);
            throw new RuntimeException(e10);
        }
    }
}
