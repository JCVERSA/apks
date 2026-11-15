package com.transsion.hubsdk.interfaces.content.pm;

import android.content.pm.ApplicationInfo;

public interface ITranApplicationInfoManagerAdapter {
    int getIconRes(ApplicationInfo applicationInfo);

    boolean isDirectBootAware(ApplicationInfo applicationInfo);

    boolean isInstantApp(ApplicationInfo applicationInfo);

    boolean isPartiallyDirectBootAware(ApplicationInfo applicationInfo);

    boolean isPrivilegedApp(ApplicationInfo applicationInfo);

    boolean isProduct(ApplicationInfo applicationInfo);

    boolean isSignedWithPlatformKey(ApplicationInfo applicationInfo);

    boolean isSystemApp(ApplicationInfo applicationInfo);

    boolean isSystemExt(ApplicationInfo applicationInfo);
}
