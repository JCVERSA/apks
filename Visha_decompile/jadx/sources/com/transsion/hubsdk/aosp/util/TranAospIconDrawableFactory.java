package com.transsion.hubsdk.aosp.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageItemInfo;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.util.ITranIconDrawableFactoryAdapter;
import java.lang.reflect.Method;

public class TranAospIconDrawableFactory implements ITranIconDrawableFactoryAdapter {
    private static Class<?> sClassName = TranDoorMan.getClass("android.util.IconDrawableFactory");
    private Context mContext = TranHubSdkManager.getContext();

    @Override
    public Drawable getBadgedIcon(ApplicationInfo applicationInfo) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getBadgedIcon", ApplicationInfo.class), TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "newInstance", Context.class), null, this.mContext), applicationInfo);
        if (objInvokeMethod instanceof Drawable) {
            return (Drawable) objInvokeMethod;
        }
        return null;
    }

    @Override
    public Drawable getGlobalThemedIcon(Context context, Drawable drawable) {
        return null;
    }

    @Override
    public Drawable getUnbadgedIcon(boolean z, PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "newInstance", Context.class, Boolean.TYPE), null, this.mContext, Boolean.valueOf(z));
        Method method = TranDoorMan.getMethod(sClassName, "getUnbadgedIcon", PackageItemInfo.class, ApplicationInfo.class);
        if (method == null) {
            return null;
        }
        Object objInvokeMethod2 = TranDoorMan.invokeMethod(method, objInvokeMethod, packageItemInfo, applicationInfo);
        if (objInvokeMethod2 instanceof Drawable) {
            return (Drawable) objInvokeMethod2;
        }
        return null;
    }

    @Override
    public Drawable getGlobalThemedIcon(Context context, Drawable drawable, String str) {
        return null;
    }

    @Override
    public Drawable getGlobalThemedIcon(Drawable drawable) {
        return null;
    }

    @Override
    public Drawable getGlobalThemedIcon(Drawable drawable, String str) {
        return null;
    }

    @Override
    public Drawable getGlobalThemedIcon(Bitmap bitmap) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "newInstance", Context.class), null, this.mContext);
        Method method = TranDoorMan.getMethod(sClassName, "getGlobalThemedIcon", Bitmap.class);
        if (method == null) {
            return null;
        }
        Object objInvokeMethod2 = TranDoorMan.invokeMethod(method, objInvokeMethod, bitmap);
        if (objInvokeMethod2 instanceof Drawable) {
            return (Drawable) objInvokeMethod2;
        }
        return null;
    }

    @Override
    public Drawable getBadgedIcon(PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getBadgedIcon", PackageItemInfo.class, ApplicationInfo.class, Integer.TYPE), TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "newInstance", Context.class), null, this.mContext), packageItemInfo, applicationInfo, Integer.valueOf(i));
        if (objInvokeMethod instanceof Drawable) {
            return (Drawable) objInvokeMethod;
        }
        return null;
    }

    @Override
    public Drawable getUnbadgedIcon(Context context, boolean z, PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "newInstance", Context.class, Boolean.TYPE), null, context, Boolean.valueOf(z));
        Method method = TranDoorMan.getMethod(sClassName, "getUnbadgedIcon", PackageItemInfo.class, ApplicationInfo.class);
        if (method == null) {
            return null;
        }
        Object objInvokeMethod2 = TranDoorMan.invokeMethod(method, objInvokeMethod, packageItemInfo, applicationInfo);
        if (objInvokeMethod2 instanceof Drawable) {
            return (Drawable) objInvokeMethod2;
        }
        return null;
    }

    @Override
    public Drawable getGlobalThemedIcon(Bitmap bitmap, String str) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "newInstance", Context.class), null, this.mContext);
        Method method = TranDoorMan.getMethod(sClassName, "getGlobalThemedIcon", Bitmap.class, String.class);
        if (method == null) {
            return null;
        }
        Object objInvokeMethod2 = TranDoorMan.invokeMethod(method, objInvokeMethod, bitmap, str);
        if (objInvokeMethod2 instanceof Drawable) {
            return (Drawable) objInvokeMethod2;
        }
        return null;
    }

    @Override
    public Drawable getBadgedIcon(ApplicationInfo applicationInfo, boolean z) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getBadgedIcon", ApplicationInfo.class), TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "newInstance", Context.class, Boolean.TYPE), null, this.mContext, Boolean.valueOf(z)), applicationInfo);
        if (objInvokeMethod instanceof Drawable) {
            return (Drawable) objInvokeMethod;
        }
        return null;
    }

    @Override
    public Drawable getGlobalThemedIcon(Context context, Bitmap bitmap) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "newInstance", Context.class), null, context);
        Method method = TranDoorMan.getMethod(sClassName, "getGlobalThemedIcon", Bitmap.class);
        if (method == null) {
            return null;
        }
        Object objInvokeMethod2 = TranDoorMan.invokeMethod(method, objInvokeMethod, bitmap);
        if (objInvokeMethod2 instanceof Drawable) {
            return (Drawable) objInvokeMethod2;
        }
        return null;
    }

    @Override
    public Drawable getBadgedIcon(PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo, int i, boolean z) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getBadgedIcon", PackageItemInfo.class, ApplicationInfo.class, Integer.TYPE), TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "newInstance", Context.class, Boolean.TYPE), null, this.mContext, Boolean.valueOf(z)), packageItemInfo, applicationInfo, Integer.valueOf(i));
        if (objInvokeMethod instanceof Drawable) {
            return (Drawable) objInvokeMethod;
        }
        return null;
    }

    @Override
    public Drawable getGlobalThemedIcon(Context context, Bitmap bitmap, String str) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "newInstance", Context.class), null, context);
        Method method = TranDoorMan.getMethod(sClassName, "getGlobalThemedIcon", Bitmap.class, String.class);
        if (method == null) {
            return null;
        }
        Object objInvokeMethod2 = TranDoorMan.invokeMethod(method, objInvokeMethod, bitmap, str);
        if (objInvokeMethod2 instanceof Drawable) {
            return (Drawable) objInvokeMethod2;
        }
        return null;
    }

    @Override
    public Drawable getBadgedIcon(Context context, ApplicationInfo applicationInfo) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getBadgedIcon", ApplicationInfo.class), TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "newInstance", Context.class), null, context), applicationInfo);
        if (objInvokeMethod instanceof Drawable) {
            return (Drawable) objInvokeMethod;
        }
        return null;
    }

    @Override
    public Drawable getBadgedIcon(Context context, PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getBadgedIcon", PackageItemInfo.class, ApplicationInfo.class, Integer.TYPE), TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "newInstance", Context.class), null, context), packageItemInfo, applicationInfo, Integer.valueOf(i));
        if (objInvokeMethod instanceof Drawable) {
            return (Drawable) objInvokeMethod;
        }
        return null;
    }

    @Override
    public Drawable getBadgedIcon(Context context, ApplicationInfo applicationInfo, boolean z) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getBadgedIcon", ApplicationInfo.class), TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "newInstance", Context.class, Boolean.TYPE), null, context, Boolean.valueOf(z)), applicationInfo);
        if (objInvokeMethod instanceof Drawable) {
            return (Drawable) objInvokeMethod;
        }
        return null;
    }

    @Override
    public Drawable getBadgedIcon(Context context, PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo, int i, boolean z) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "getBadgedIcon", PackageItemInfo.class, ApplicationInfo.class, Integer.TYPE), TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "newInstance", Context.class, Boolean.TYPE), null, context, Boolean.valueOf(z)), packageItemInfo, applicationInfo, Integer.valueOf(i));
        if (objInvokeMethod instanceof Drawable) {
            return (Drawable) objInvokeMethod;
        }
        return null;
    }
}
