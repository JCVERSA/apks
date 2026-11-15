package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$dimen;
import com.google.android.material.internal.ParcelableSparseArray;

public abstract class c {

    public static final boolean f27481a = false;

    class a extends AccessibilityDelegateCompat {

        final BadgeDrawable f27482a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(View.AccessibilityDelegate accessibilityDelegate, BadgeDrawable badgeDrawable) {
            super(accessibilityDelegate);
            this.f27482a = badgeDrawable;
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(this.f27482a.i());
        }
    }

    class b extends AccessibilityDelegateCompat {

        final BadgeDrawable f27483a;

        b(BadgeDrawable badgeDrawable) {
            this.f27483a = badgeDrawable;
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(this.f27483a.i());
        }
    }

    public static void b(BadgeDrawable badgeDrawable, View view) {
        if (Build.VERSION.SDK_INT < 29 || !ViewCompat.hasAccessibilityDelegate(view)) {
            ViewCompat.setAccessibilityDelegate(view, new b(badgeDrawable));
        } else {
            ViewCompat.setAccessibilityDelegate(view, new a(view.getAccessibilityDelegate(), badgeDrawable));
        }
    }

    public static void c(BadgeDrawable badgeDrawable, View view, FrameLayout frameLayout) {
        g(badgeDrawable, view, frameLayout);
        if (badgeDrawable.j() != null) {
            badgeDrawable.j().setForeground(badgeDrawable);
        } else {
            if (f27481a) {
                throw new IllegalArgumentException("Trying to reference null customBadgeParent");
            }
            view.getOverlay().add(badgeDrawable);
        }
    }

    public static SparseArray d(Context context, ParcelableSparseArray parcelableSparseArray) {
        SparseArray sparseArray = new SparseArray(parcelableSparseArray.size());
        for (int i10 = 0; i10 < parcelableSparseArray.size(); i10++) {
            int iKeyAt = parcelableSparseArray.keyAt(i10);
            BadgeState.State state = (BadgeState.State) parcelableSparseArray.valueAt(i10);
            sparseArray.put(iKeyAt, state != null ? BadgeDrawable.e(context, state) : null);
        }
        return sparseArray;
    }

    public static ParcelableSparseArray e(SparseArray sparseArray) {
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            int iKeyAt = sparseArray.keyAt(i10);
            BadgeDrawable badgeDrawable = (BadgeDrawable) sparseArray.valueAt(i10);
            parcelableSparseArray.put(iKeyAt, badgeDrawable != null ? badgeDrawable.t() : null);
        }
        return parcelableSparseArray;
    }

    public static void f(BadgeDrawable badgeDrawable, View view) {
        if (badgeDrawable == null) {
            return;
        }
        if (f27481a || badgeDrawable.j() != null) {
            badgeDrawable.j().setForeground(null);
        } else {
            view.getOverlay().remove(badgeDrawable);
        }
    }

    public static void g(BadgeDrawable badgeDrawable, View view, FrameLayout frameLayout) {
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        badgeDrawable.setBounds(rect);
        badgeDrawable.S(view, frameLayout);
    }

    static void h(BadgeDrawable badgeDrawable, Resources resources) {
        badgeDrawable.O(resources.getDimensionPixelOffset(R$dimen.mtrl_badge_toolbar_action_menu_item_horizontal_offset));
        badgeDrawable.P(resources.getDimensionPixelOffset(R$dimen.mtrl_badge_toolbar_action_menu_item_vertical_offset));
    }

    public static void i(Rect rect, float f10, float f11, float f12, float f13) {
        rect.set((int) (f10 - f12), (int) (f11 - f13), (int) (f10 + f12), (int) (f11 + f13));
    }
}
