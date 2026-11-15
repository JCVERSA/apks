package com.cloud.hisavana.sdk.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;

public abstract class h0 {
    public static boolean a(AdsDTO adsDTO) {
        if (adsDTO != null && adsDTO.getExt() != null) {
            return adsDTO.getExt().getStoreFlag().intValue() == 1;
        }
        b4.b().d("StoreUtil", "canShowPsMark ads、context、adx.ext is null");
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
        return b(MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME, context);
    }

    private static long d(Context context) {
        PackageInfo packageInfoB = b(MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME, context);
        if (packageInfoB == null) {
            return -1L;
        }
        return Build.VERSION.SDK_INT >= 28 ? packageInfoB.getLongVersionCode() : packageInfoB.versionCode;
    }

    public static boolean e(Context context) {
        PackageInfo packageInfoB = b(MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME, context);
        if (packageInfoB == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return packageInfoB.getLongVersionCode() >= 8403100;
        }
        return packageInfoB.versionCode >= 8403100;
    }

    public static boolean f(Context context) {
        return d(context) >= 9207201;
    }

    public static boolean g(Context context) {
        return d(context) >= 8403100;
    }
}
