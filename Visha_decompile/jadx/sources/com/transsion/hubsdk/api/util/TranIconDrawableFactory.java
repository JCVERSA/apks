package com.transsion.hubsdk.api.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageItemInfo;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.transsion.hubsdk.aosp.util.TranAospIconDrawableFactory;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.util.TranThubIconDrawableFactory;
import com.transsion.hubsdk.interfaces.util.ITranIconDrawableFactoryAdapter;

public class TranIconDrawableFactory {
    private static final String TAG = "TranIconDrawableFactory";
    private TranAospIconDrawableFactory mAospService;
    private TranThubIconDrawableFactory mThubService;

    public Drawable getBadgedIcon(ApplicationInfo applicationInfo) {
        return getService(TranVersion.Core.VERSION_33141).getBadgedIcon(applicationInfo);
    }

    public Drawable getGlobalThemedIcon(Bitmap bitmap) {
        if (bitmap != null) {
            return getService(TranVersion.Core.VERSION_33381).getGlobalThemedIcon(bitmap);
        }
        throw new IllegalArgumentException("bitmap cannot be null");
    }

    public ITranIconDrawableFactoryAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubIconDrawableFactory");
            TranThubIconDrawableFactory tranThubIconDrawableFactory = this.mThubService;
            if (tranThubIconDrawableFactory != null) {
                return tranThubIconDrawableFactory;
            }
            TranThubIconDrawableFactory tranThubIconDrawableFactory2 = new TranThubIconDrawableFactory();
            this.mThubService = tranThubIconDrawableFactory2;
            return tranThubIconDrawableFactory2;
        }
        TranSdkLog.i(TAG, "TranAospIconDrawableFactory");
        TranAospIconDrawableFactory tranAospIconDrawableFactory = this.mAospService;
        if (tranAospIconDrawableFactory != null) {
            return tranAospIconDrawableFactory;
        }
        TranAospIconDrawableFactory tranAospIconDrawableFactory2 = new TranAospIconDrawableFactory();
        this.mAospService = tranAospIconDrawableFactory2;
        return tranAospIconDrawableFactory2;
    }

    public Drawable getUnbadgedIcon(boolean z, PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo) {
        if (packageItemInfo == null || applicationInfo == null) {
            throw new IllegalArgumentException("Params cannot be null");
        }
        return getService(TranVersion.Core.VERSION_33381).getUnbadgedIcon(z, packageItemInfo, applicationInfo);
    }

    public Drawable getBadgedIcon(PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo, int i) {
        return getService(TranVersion.Core.VERSION_33171).getBadgedIcon(packageItemInfo, applicationInfo, i);
    }

    public Drawable getBadgedIcon(ApplicationInfo applicationInfo, boolean z) {
        if (applicationInfo != null) {
            return getService(TranVersion.Core.VERSION_33311).getBadgedIcon(applicationInfo, z);
        }
        throw new IllegalArgumentException("appInfo is null");
    }

    public Drawable getGlobalThemedIcon(Bitmap bitmap, String str) {
        if (bitmap != null && str != null) {
            return getService(TranVersion.Core.VERSION_33381).getGlobalThemedIcon(bitmap, str);
        }
        throw new IllegalArgumentException("params cannot be null");
    }

    public Drawable getUnbadgedIcon(Context context, boolean z, PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo) {
        if (context != null && packageItemInfo != null && applicationInfo != null) {
            return getService(TranVersion.Core.VERSION_33381).getUnbadgedIcon(context, z, packageItemInfo, applicationInfo);
        }
        throw new IllegalArgumentException("Params cannot be null");
    }

    public Drawable getBadgedIcon(PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo, int i, boolean z) {
        if (packageItemInfo != null && applicationInfo != null) {
            return getService(TranVersion.Core.VERSION_33391).getBadgedIcon(packageItemInfo, applicationInfo, i, z);
        }
        throw new IllegalArgumentException("Params cannot be null");
    }

    public Drawable getGlobalThemedIcon(Drawable drawable) {
        if (drawable != null) {
            return getService(TranVersion.Core.VERSION_33391).getGlobalThemedIcon(drawable);
        }
        throw new IllegalArgumentException("Drawable cannot be null");
    }

    public Drawable getBadgedIcon(Context context, ApplicationInfo applicationInfo) {
        return getService(TranVersion.Core.VERSION_33141).getBadgedIcon(context, applicationInfo);
    }

    public Drawable getGlobalThemedIcon(Drawable drawable, String str) {
        if (drawable != null && str != null) {
            return getService(TranVersion.Core.VERSION_33391).getGlobalThemedIcon(drawable, str);
        }
        throw new IllegalArgumentException("Drawable or themeId cannot be null");
    }

    public Drawable getBadgedIcon(Context context, PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo, int i) {
        return getService(TranVersion.Core.VERSION_33171).getBadgedIcon(context, packageItemInfo, applicationInfo, i);
    }

    public Drawable getBadgedIcon(Context context, ApplicationInfo applicationInfo, boolean z) {
        if (context != null && applicationInfo != null) {
            return getService(TranVersion.Core.VERSION_33311).getBadgedIcon(context, applicationInfo, z);
        }
        throw new IllegalArgumentException("appInfo is null");
    }

    public Drawable getGlobalThemedIcon(Context context, Bitmap bitmap) {
        if (context != null && bitmap != null) {
            return getService(TranVersion.Core.VERSION_33381).getGlobalThemedIcon(context, bitmap);
        }
        throw new IllegalArgumentException("params cannot be null");
    }

    public Drawable getBadgedIcon(Context context, PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo, int i, boolean z) {
        if (context != null && packageItemInfo != null && applicationInfo != null) {
            return getService(TranVersion.Core.VERSION_33391).getBadgedIcon(context, packageItemInfo, applicationInfo, i, z);
        }
        throw new IllegalArgumentException("Params cannot be null");
    }

    public Drawable getGlobalThemedIcon(Context context, Bitmap bitmap, String str) {
        if (context != null && bitmap != null && str != null) {
            return getService(TranVersion.Core.VERSION_33381).getGlobalThemedIcon(context, bitmap, str);
        }
        throw new IllegalArgumentException("params cannot be null");
    }

    public Drawable getGlobalThemedIcon(Context context, Drawable drawable) {
        if (context != null && drawable != null) {
            return getService(TranVersion.Core.VERSION_33391).getGlobalThemedIcon(context, drawable);
        }
        throw new IllegalArgumentException("Drawable cannot be null");
    }

    public Drawable getGlobalThemedIcon(Context context, Drawable drawable, String str) {
        if (context != null && drawable != null && str != null) {
            return getService(TranVersion.Core.VERSION_33391).getGlobalThemedIcon(context, drawable, str);
        }
        throw new IllegalArgumentException("Drawable or themeId cannot be null");
    }
}
