package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

public class PY extends AccessibilityNodeProvider {
    public final PZ A00;

    public PY(PZ pz) {
        this.A00 = pz;
    }

    @Override
    public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
        return (AccessibilityNodeInfo) this.A00.A58(i);
    }

    @Override
    public final List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
        return this.A00.A6Q(str, i);
    }

    @Override
    public final AccessibilityNodeInfo findFocus(int i) {
        return (AccessibilityNodeInfo) this.A00.A6R(i);
    }

    @Override
    public final boolean performAction(int i, int i2, Bundle bundle) {
        return this.A00.AGB(i, i2, bundle);
    }
}
