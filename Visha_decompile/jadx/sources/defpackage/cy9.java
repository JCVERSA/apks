package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;

public abstract class cy9 {
    public static boolean a(AdsDTO adsDTO) {
        if (adsDTO != null && adsDTO.getExt() != null) {
            return adsDTO.getExt().getStoreFlag().intValue() == 1;
        }
        ikd.b().d("StoreUtil", "canShowPsMark ads、context、adx.ext is null");
        return false;
    }

    public static PackageInfo b(String str, Context context) {
        if (context == null || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0);
        } catch (Exception unused) {
            return null;
        }
    }

    public static PackageInfo c(Context context) {
        return b("com.transsnet.store", context);
    }

    public static long d(Context context) {
        PackageInfo packageInfoB = b("com.transsnet.store", context);
        if (packageInfoB == null) {
            return -1L;
        }
        return packageInfoB.getLongVersionCode();
    }

    public static void e(Context context) {
        PackageInfo packageInfoC;
        PackageManager packageManager;
        ak8 ak8Var = ak8.a;
        if (ak8Var.b() || (packageInfoC = c(context)) == null) {
            return;
        }
        try {
            if (packageInfoC.applicationInfo == null || (packageManager = context.getPackageManager()) == null) {
                return;
            }
            String string = packageInfoC.applicationInfo.loadLabel(packageManager).toString();
            ak8Var.c(string);
            ikd.b().d("StoreUtil", "get psAppName from PackageManager:->" + string);
        } catch (Throwable th) {
            ikd.b().e("StoreUtil", "initPsAppCache error: " + th.getMessage());
        }
    }

    public static boolean f(Context context) {
        PackageInfo packageInfoB = b("com.transsnet.store", context);
        return packageInfoB != null && packageInfoB.getLongVersionCode() >= 8403100;
    }

    public static boolean g(Context context) {
        return d(context) >= 9207201;
    }

    public static boolean h(Context context) {
        return d(context) >= 8403100;
    }
}
