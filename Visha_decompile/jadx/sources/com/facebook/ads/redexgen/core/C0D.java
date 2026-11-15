package com.facebook.ads.redexgen.core;

import android.view.accessibility.AccessibilityNodeInfo;

public class C0D extends C0M {
    @Override
    public final Object A00(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        return AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2);
    }

    @Override
    public final Object A01(int i, int i2, boolean z, int i3) {
        return AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z, i3);
    }
}
