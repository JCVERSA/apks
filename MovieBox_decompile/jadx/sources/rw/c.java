package rw;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.transsion.wrapperad.install.appinfo.AppChangeInfo;
import com.transsion.wrapperad.install.open.ChangeType;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    public static final c f71371a = new c();

    private c() {
    }

    public final AppChangeInfo a(Context context, String packageName, ChangeType type) {
        Object objM453constructorimpl;
        Long lValueOf;
        Object objM453constructorimpl2;
        String installerPackageName;
        Drawable drawableLoadIcon;
        Object objM453constructorimpl3;
        ApplicationInfo applicationInfo;
        CharSequence charSequenceLoadLabel;
        Intrinsics.h(context, "context");
        Intrinsics.h(packageName, "packageName");
        Intrinsics.h(type, "type");
        PackageManager packageManager = context.getPackageManager();
        try {
            Result.Companion companion = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(packageManager.getPackageInfo(packageName, 0));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m459isFailureimpl(objM453constructorimpl)) {
            objM453constructorimpl = null;
        }
        PackageInfo packageInfo = (PackageInfo) objM453constructorimpl;
        ApplicationInfo applicationInfo2 = packageInfo != null ? packageInfo.applicationInfo : null;
        String string = (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null || (charSequenceLoadLabel = applicationInfo.loadLabel(packageManager)) == null) ? null : charSequenceLoadLabel.toString();
        String str = packageInfo != null ? packageInfo.versionName : null;
        if (packageInfo == null) {
            lValueOf = null;
        } else {
            lValueOf = Build.VERSION.SDK_INT >= 28 ? Long.valueOf(packageInfo.getLongVersionCode()) : Long.valueOf(packageInfo.versionCode);
        }
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                objM453constructorimpl2 = Result.m453constructorimpl(packageManager.getInstallSourceInfo(packageName).getInstallingPackageName());
            } catch (Throwable th3) {
                Result.Companion companion3 = Result.INSTANCE;
                objM453constructorimpl2 = Result.m453constructorimpl(ResultKt.a(th3));
            }
            if (Result.m459isFailureimpl(objM453constructorimpl2)) {
                objM453constructorimpl2 = null;
            }
            installerPackageName = (String) objM453constructorimpl2;
        } else {
            installerPackageName = packageManager.getInstallerPackageName(packageName);
        }
        String str2 = installerPackageName;
        if (applicationInfo2 != null) {
            try {
                drawableLoadIcon = applicationInfo2.loadIcon(packageManager);
            } catch (Throwable th4) {
                Result.Companion companion4 = Result.INSTANCE;
                objM453constructorimpl3 = Result.m453constructorimpl(ResultKt.a(th4));
            }
        } else {
            drawableLoadIcon = null;
        }
        objM453constructorimpl3 = Result.m453constructorimpl(drawableLoadIcon);
        return new AppChangeInfo(packageName, string, str, lValueOf, str2, type, (Drawable) (Result.m459isFailureimpl(objM453constructorimpl3) ? null : objM453constructorimpl3));
    }
}
