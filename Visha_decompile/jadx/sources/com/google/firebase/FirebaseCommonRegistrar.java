package com.google.firebase;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.heartbeatinfo.a;
import defpackage.qk5;
import defpackage.v62;
import defpackage.xg5;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.io.IOUtils;

public class FirebaseCommonRegistrar implements ComponentRegistrar {
    public static String e(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return applicationInfo != null ? String.valueOf(applicationInfo.targetSdkVersion) : "";
    }

    public static String f(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return applicationInfo != null ? String.valueOf(applicationInfo.minSdkVersion) : "";
    }

    public static String g(Context context) {
        if (context.getPackageManager().hasSystemFeature("android.hardware.type.television")) {
            return "tv";
        }
        if (context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) {
            return "watch";
        }
        if (context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            return TtmlNode.TEXT_EMPHASIS_AUTO;
        }
        return context.getPackageManager().hasSystemFeature("android.hardware.type.embedded") ? "embedded" : "";
    }

    public static String h(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName != null ? i(installerPackageName) : "";
    }

    public static String i(String str) {
        return str.replace(' ', '_').replace(IOUtils.DIR_SEPARATOR_UNIX, '_');
    }

    @Override
    public List getComponents() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(v62.b());
        arrayList.add(a.g());
        arrayList.add(qk5.b("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(qk5.b("fire-core", "22.0.1"));
        arrayList.add(qk5.b("device-name", i(Build.PRODUCT)));
        arrayList.add(qk5.b("device-model", i(Build.DEVICE)));
        arrayList.add(qk5.b("device-brand", i(Build.BRAND)));
        arrayList.add(qk5.c("android-target-sdk", new qk5.a() {
            @Override
            public final String a(Object obj) {
                return FirebaseCommonRegistrar.e((Context) obj);
            }
        }));
        arrayList.add(qk5.c("android-min-sdk", new qk5.a() {
            @Override
            public final String a(Object obj) {
                return FirebaseCommonRegistrar.f((Context) obj);
            }
        }));
        arrayList.add(qk5.c("android-platform", new qk5.a() {
            @Override
            public final String a(Object obj) {
                return FirebaseCommonRegistrar.g((Context) obj);
            }
        }));
        arrayList.add(qk5.c("android-installer", new qk5.a() {
            @Override
            public final String a(Object obj) {
                return FirebaseCommonRegistrar.h((Context) obj);
            }
        }));
        String strA = xg5.a();
        if (strA != null) {
            arrayList.add(qk5.b("kotlin", strA));
        }
        return arrayList;
    }
}
