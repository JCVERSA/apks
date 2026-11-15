package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import java.util.Map;
import java.util.WeakHashMap;

public class o extends AccessibilityDelegateCompat {

    final RecyclerView f14096a;

    private final a f14097b;

    public static class a extends AccessibilityDelegateCompat {

        final o f14098a;

        private Map f14099b = new WeakHashMap();

        public a(o oVar) {
            this.f14098a = oVar;
        }

        AccessibilityDelegateCompat a(View view) {
            return (AccessibilityDelegateCompat) this.f14099b.remove(view);
        }

        void b(View view) {
            AccessibilityDelegateCompat accessibilityDelegate = ViewCompat.getAccessibilityDelegate(view);
            if (accessibilityDelegate == null || accessibilityDelegate == this) {
                return;
            }
            this.f14099b.put(view, accessibilityDelegate);
        }

        @Override
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.f14099b.get(view);
            return accessibilityDelegateCompat != null ? accessibilityDelegateCompat.dispatchPopulateAccessibilityEvent(view, accessibilityEvent) : super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override
        public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.f14099b.get(view);
            return accessibilityDelegateCompat != null ? accessibilityDelegateCompat.getAccessibilityNodeProvider(view) : super.getAccessibilityNodeProvider(view);
        }

        @Override
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.f14099b.get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.onInitializeAccessibilityEvent(view, accessibilityEvent);
            } else {
                super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            }
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (this.f14098a.b() || this.f14098a.f14096a.getLayoutManager() == null) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                return;
            }
            this.f14098a.f14096a.getLayoutManager().onInitializeAccessibilityNodeInfoForItem(view, accessibilityNodeInfoCompat);
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.f14099b.get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            } else {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            }
        }

        @Override
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.f14099b.get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.onPopulateAccessibilityEvent(view, accessibilityEvent);
            } else {
                super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            }
        }

        @Override
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.f14099b.get(viewGroup);
            return accessibilityDelegateCompat != null ? accessibilityDelegateCompat.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent) : super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }

        @Override
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            if (this.f14098a.b() || this.f14098a.f14096a.getLayoutManager() == null) {
                return super.performAccessibilityAction(view, i10, bundle);
            }
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.f14099b.get(view);
            if (accessibilityDelegateCompat != null) {
                if (accessibilityDelegateCompat.performAccessibilityAction(view, i10, bundle)) {
                    return true;
                }
            } else if (super.performAccessibilityAction(view, i10, bundle)) {
                return true;
            }
            return this.f14098a.f14096a.getLayoutManager().performAccessibilityActionForItem(view, i10, bundle);
        }

        @Override
        public void sendAccessibilityEvent(View view, int i10) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.f14099b.get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.sendAccessibilityEvent(view, i10);
            } else {
                super.sendAccessibilityEvent(view, i10);
            }
        }

        @Override
        public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.f14099b.get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            } else {
                super.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            }
        }
    }

    public o(RecyclerView recyclerView) {
        this.f14096a = recyclerView;
        AccessibilityDelegateCompat accessibilityDelegateCompatA = a();
        if (accessibilityDelegateCompatA == null || !(accessibilityDelegateCompatA instanceof a)) {
            this.f14097b = new a(this);
        } else {
            this.f14097b = (a) accessibilityDelegateCompatA;
        }
    }

    public AccessibilityDelegateCompat a() {
        return this.f14097b;
    }

    boolean b() {
        return this.f14096a.hasPendingAdapterUpdates();
    }

    @Override
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || b()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().onInitializeAccessibilityEvent(accessibilityEvent);
        }
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        if (b() || this.f14096a.getLayoutManager() == null) {
            return;
        }
        this.f14096a.getLayoutManager().onInitializeAccessibilityNodeInfo(accessibilityNodeInfoCompat);
    }

    @Override
    public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
        if (super.performAccessibilityAction(view, i10, bundle)) {
            return true;
        }
        if (b() || this.f14096a.getLayoutManager() == null) {
            return false;
        }
        return this.f14096a.getLayoutManager().performAccessibilityAction(i10, bundle);
    }
}
