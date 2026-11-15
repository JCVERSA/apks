package androidx.core.view.accessibility;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.ArrayList;
import java.util.List;

public class AccessibilityNodeProviderCompat {
    public static final int HOST_VIEW_ID = -1;
    private final Object mProvider;

    static class a extends AccessibilityNodeProvider {

        final AccessibilityNodeProviderCompat f8070a;

        a(AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
            this.f8070a = accessibilityNodeProviderCompat;
        }

        @Override
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i10) {
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompatCreateAccessibilityNodeInfo = this.f8070a.createAccessibilityNodeInfo(i10);
            if (accessibilityNodeInfoCompatCreateAccessibilityNodeInfo == null) {
                return null;
            }
            return accessibilityNodeInfoCompatCreateAccessibilityNodeInfo.unwrap();
        }

        @Override
        public List findAccessibilityNodeInfosByText(String str, int i10) {
            List<AccessibilityNodeInfoCompat> listFindAccessibilityNodeInfosByText = this.f8070a.findAccessibilityNodeInfosByText(str, i10);
            if (listFindAccessibilityNodeInfosByText == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int size = listFindAccessibilityNodeInfosByText.size();
            for (int i11 = 0; i11 < size; i11++) {
                arrayList.add(listFindAccessibilityNodeInfosByText.get(i11).unwrap());
            }
            return arrayList;
        }

        @Override
        public AccessibilityNodeInfo findFocus(int i10) {
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompatFindFocus = this.f8070a.findFocus(i10);
            if (accessibilityNodeInfoCompatFindFocus == null) {
                return null;
            }
            return accessibilityNodeInfoCompatFindFocus.unwrap();
        }

        @Override
        public boolean performAction(int i10, int i11, Bundle bundle) {
            return this.f8070a.performAction(i10, i11, bundle);
        }
    }

    static class b extends a {
        b(AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
            super(accessibilityNodeProviderCompat);
        }

        @Override
        public void addExtraDataToAccessibilityNodeInfo(int i10, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
            this.f8070a.addExtraDataToAccessibilityNodeInfo(i10, AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo), str, bundle);
        }
    }

    public AccessibilityNodeProviderCompat() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.mProvider = new b(this);
        } else {
            this.mProvider = new a(this);
        }
    }

    public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i10) {
        return null;
    }

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String str, int i10) {
        return null;
    }

    public AccessibilityNodeInfoCompat findFocus(int i10) {
        return null;
    }

    public Object getProvider() {
        return this.mProvider;
    }

    public boolean performAction(int i10, int i11, Bundle bundle) {
        return false;
    }

    public AccessibilityNodeProviderCompat(Object obj) {
        this.mProvider = obj;
    }

    public void addExtraDataToAccessibilityNodeInfo(int i10, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, String str, Bundle bundle) {
    }
}
