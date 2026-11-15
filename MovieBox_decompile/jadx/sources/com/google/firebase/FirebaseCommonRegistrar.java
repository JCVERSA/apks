package com.google.firebase;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayList;
import java.util.List;

public class FirebaseCommonRegistrar implements ComponentRegistrar {
    public static String e(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return applicationInfo != null ? String.valueOf(applicationInfo.targetSdkVersion) : "";
    }

    public static String f(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return (applicationInfo == null || Build.VERSION.SDK_INT < 24) ? "" : String.valueOf(applicationInfo.minSdkVersion);
    }

    public static String g(Context context) {
        int i10 = Build.VERSION.SDK_INT;
        if (context.getPackageManager().hasSystemFeature("android.hardware.type.television")) {
            return "tv";
        }
        if (context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) {
            return "watch";
        }
        if (context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            return "auto";
        }
        return (i10 < 26 || !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) ? "" : "embedded";
    }

    public static String h(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName != null ? i(installerPackageName) : "";
    }

    private static String i(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    @Override
    public List getComponents() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(zc.c.b());
        arrayList.add(com.google.firebase.heartbeatinfo.a.g());
        arrayList.add(zc.h.b("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(zc.h.b("fire-core", "22.0.1"));
        arrayList.add(zc.h.b("device-name", i(Build.PRODUCT)));
        arrayList.add(zc.h.b("device-model", i(Build.DEVICE)));
        arrayList.add(zc.h.b("device-brand", i(Build.BRAND)));
        arrayList.add(zc.h.c("android-target-sdk", new zc.h.a() {
            @Override
            public final String a(Object obj) {
                return FirebaseCommonRegistrar.e((Context) obj);
            }
        }));
        arrayList.add(zc.h.c("android-min-sdk", new zc.h.a() {
            @Override
            public final String a(Object obj) {
                return FirebaseCommonRegistrar.f((Context) obj);
            }
        }));
        arrayList.add(zc.h.c("android-platform", new zc.h.a() {
            @Override
            public final String a(Object obj) {
                return FirebaseCommonRegistrar.g((Context) obj);
            }
        }));
        arrayList.add(zc.h.c("android-installer", new zc.h.a() {
            @Override
            public final String a(Object obj) {
                return FirebaseCommonRegistrar.h((Context) obj);
            }
        }));
        String strA = zc.e.a();
        if (strA != null) {
            arrayList.add(zc.h.b("kotlin", strA));
        }
        return arrayList;
    }
}
