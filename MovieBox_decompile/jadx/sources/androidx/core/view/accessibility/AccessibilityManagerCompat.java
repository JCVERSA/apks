package androidx.core.view.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.os.Build;
import android.view.accessibility.AccessibilityManager;
import java.util.List;

public final class AccessibilityManagerCompat {

    @Deprecated
    public interface AccessibilityStateChangeListener {
        @Deprecated
        void onAccessibilityStateChanged(boolean z10);
    }

    @Deprecated
    public static abstract class AccessibilityStateChangeListenerCompat implements AccessibilityStateChangeListener {
    }

    public interface TouchExplorationStateChangeListener {
        void onTouchExplorationStateChanged(boolean z10);
    }

    private static class a implements AccessibilityManager.AccessibilityStateChangeListener {

        AccessibilityStateChangeListener f8068a;

        a(AccessibilityStateChangeListener accessibilityStateChangeListener) {
            this.f8068a = accessibilityStateChangeListener;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                return this.f8068a.equals(((a) obj).f8068a);
            }
            return false;
        }

        public int hashCode() {
            return this.f8068a.hashCode();
        }

        @Override
        public void onAccessibilityStateChanged(boolean z10) {
            this.f8068a.onAccessibilityStateChanged(z10);
        }
    }

    static class b {
        static boolean a(AccessibilityManager accessibilityManager) {
            return accessibilityManager.isRequestFromAccessibilityTool();
        }
    }

    private static final class c implements AccessibilityManager.TouchExplorationStateChangeListener {

        final TouchExplorationStateChangeListener f8069a;

        c(TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
            this.f8069a = touchExplorationStateChangeListener;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c) {
                return this.f8069a.equals(((c) obj).f8069a);
            }
            return false;
        }

        public int hashCode() {
            return this.f8069a.hashCode();
        }

        @Override
        public void onTouchExplorationStateChanged(boolean z10) {
            this.f8069a.onTouchExplorationStateChanged(z10);
        }
    }

    private AccessibilityManagerCompat() {
    }

    @Deprecated
    public static boolean addAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListener accessibilityStateChangeListener) {
        if (accessibilityStateChangeListener == null) {
            return false;
        }
        return accessibilityManager.addAccessibilityStateChangeListener(new a(accessibilityStateChangeListener));
    }

    @Deprecated
    public static boolean addTouchExplorationStateChangeListener(AccessibilityManager accessibilityManager, TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
        return accessibilityManager.addTouchExplorationStateChangeListener(new c(touchExplorationStateChangeListener));
    }

    @Deprecated
    public static List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager accessibilityManager, int i10) {
        return accessibilityManager.getEnabledAccessibilityServiceList(i10);
    }

    @Deprecated
    public static List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager accessibilityManager) {
        return accessibilityManager.getInstalledAccessibilityServiceList();
    }

    public static boolean isRequestFromAccessibilityTool(AccessibilityManager accessibilityManager) {
        if (Build.VERSION.SDK_INT >= 34) {
            return b.a(accessibilityManager);
        }
        return true;
    }

    @Deprecated
    public static boolean isTouchExplorationEnabled(AccessibilityManager accessibilityManager) {
        return accessibilityManager.isTouchExplorationEnabled();
    }

    @Deprecated
    public static boolean removeAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListener accessibilityStateChangeListener) {
        if (accessibilityStateChangeListener == null) {
            return false;
        }
        return accessibilityManager.removeAccessibilityStateChangeListener(new a(accessibilityStateChangeListener));
    }

    @Deprecated
    public static boolean removeTouchExplorationStateChangeListener(AccessibilityManager accessibilityManager, TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
        return accessibilityManager.removeTouchExplorationStateChangeListener(new c(touchExplorationStateChangeListener));
    }
}
