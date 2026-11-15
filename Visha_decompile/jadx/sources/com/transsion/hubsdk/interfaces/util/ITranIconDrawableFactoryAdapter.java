package com.transsion.hubsdk.interfaces.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageItemInfo;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;

public interface ITranIconDrawableFactoryAdapter {
    Drawable getBadgedIcon(Context context, ApplicationInfo applicationInfo);

    Drawable getBadgedIcon(Context context, ApplicationInfo applicationInfo, boolean z);

    Drawable getBadgedIcon(Context context, PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo, int i);

    Drawable getBadgedIcon(Context context, PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo, int i, boolean z);

    Drawable getBadgedIcon(ApplicationInfo applicationInfo);

    Drawable getBadgedIcon(ApplicationInfo applicationInfo, boolean z);

    Drawable getBadgedIcon(PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo, int i);

    Drawable getBadgedIcon(PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo, int i, boolean z);

    Drawable getGlobalThemedIcon(Context context, Bitmap bitmap);

    Drawable getGlobalThemedIcon(Context context, Bitmap bitmap, String str);

    Drawable getGlobalThemedIcon(Context context, Drawable drawable);

    Drawable getGlobalThemedIcon(Context context, Drawable drawable, String str);

    Drawable getGlobalThemedIcon(Bitmap bitmap);

    Drawable getGlobalThemedIcon(Bitmap bitmap, String str);

    Drawable getGlobalThemedIcon(Drawable drawable);

    Drawable getGlobalThemedIcon(Drawable drawable, String str);

    Drawable getUnbadgedIcon(Context context, boolean z, PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo);

    Drawable getUnbadgedIcon(boolean z, PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo);
}
