package com.google.android.material.timepicker;

import android.content.Context;
import android.view.View;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;

abstract class b extends AccessibilityDelegateCompat {

    private final AccessibilityNodeInfoCompat.AccessibilityActionCompat f29289a;

    public b(Context context, int i10) {
        this.f29289a = new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, context.getString(i10));
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.addAction(this.f29289a);
    }
}
