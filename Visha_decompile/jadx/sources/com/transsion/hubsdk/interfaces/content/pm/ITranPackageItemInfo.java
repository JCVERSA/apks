package com.transsion.hubsdk.interfaces.content.pm;

import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;

public interface ITranPackageItemInfo {
    CharSequence loadSafeLabel(PackageItemInfo packageItemInfo, PackageManager packageManager, float f, int i);
}
