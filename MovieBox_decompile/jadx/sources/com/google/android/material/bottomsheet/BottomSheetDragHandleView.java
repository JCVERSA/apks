package com.google.android.material.bottomsheet;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import com.google.android.material.R$attr;
import com.google.android.material.R$string;
import com.google.android.material.R$style;

public class BottomSheetDragHandleView extends AppCompatImageView implements AccessibilityManager.AccessibilityStateChangeListener {

    private static final int f27616m = R$style.Widget_Material3_BottomSheet_DragHandle;

    private final AccessibilityManager f27617d;

    private BottomSheetBehavior f27618e;

    private boolean f27619f;

    private boolean f27620g;

    private boolean f27621h;

    private final String f27622i;

    private final String f27623j;

    private final String f27624k;

    private final BottomSheetBehavior.f f27625l;

    class a extends BottomSheetBehavior.f {
        a() {
        }

        @Override
        public void onSlide(View view, float f10) {
        }

        @Override
        public void onStateChanged(View view, int i10) {
            BottomSheetDragHandleView.this.i(i10);
        }
    }

    class b extends AccessibilityDelegateCompat {
        b() {
        }

        @Override
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            if (accessibilityEvent.getEventType() == 1) {
                BottomSheetDragHandleView.this.e();
            }
        }
    }

    public BottomSheetDragHandleView(@NonNull Context context) {
        this(context, null);
    }

    private void d(String str) {
        if (this.f27617d == null) {
            return;
        }
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(16384);
        accessibilityEventObtain.getText().add(str);
        this.f27617d.sendAccessibilityEvent(accessibilityEventObtain);
    }

    public boolean e() {
        boolean z10 = false;
        if (!this.f27620g) {
            return false;
        }
        d(this.f27624k);
        if (!this.f27618e.v0() && !this.f27618e.a1()) {
            z10 = true;
        }
        int iQ0 = this.f27618e.q0();
        int i10 = 6;
        int i11 = 3;
        if (iQ0 == 4) {
            if (!z10) {
                i10 = i11;
            }
        } else if (iQ0 != 3) {
            if (!this.f27621h) {
                i11 = 4;
            }
            i10 = i11;
        } else if (!z10) {
            i10 = 4;
        }
        this.f27618e.U0(i10);
        return true;
    }

    private BottomSheetBehavior f() {
        View viewG = this;
        while (true) {
            viewG = g(viewG);
            if (viewG == null) {
                return null;
            }
            ViewGroup.LayoutParams layoutParams = viewG.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.f) {
                CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) layoutParams).f();
                if (cVarF instanceof BottomSheetBehavior) {
                    return (BottomSheetBehavior) cVarF;
                }
            }
        }
    }

    private static View g(View view) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            return (View) parent;
        }
        return null;
    }

    public boolean h(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
        return e();
    }

    public void i(int i10) {
        if (i10 == 4) {
            this.f27621h = true;
        } else if (i10 == 3) {
            this.f27621h = false;
        }
        ViewCompat.replaceAccessibilityAction(this, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK, this.f27621h ? this.f27622i : this.f27623j, new AccessibilityViewCommand() {
            @Override
            public final boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
                return this.f27649a.h(view, commandArguments);
            }
        });
    }

    private void j() {
        this.f27620g = this.f27619f && this.f27618e != null;
        ViewCompat.setImportantForAccessibility(this, this.f27618e == null ? 2 : 1);
        setClickable(this.f27620g);
    }

    private void setBottomSheetBehavior(@Nullable BottomSheetBehavior<?> bottomSheetBehavior) {
        BottomSheetBehavior bottomSheetBehavior2 = this.f27618e;
        if (bottomSheetBehavior2 != null) {
            bottomSheetBehavior2.B0(this.f27625l);
            this.f27618e.G0(null);
        }
        this.f27618e = bottomSheetBehavior;
        if (bottomSheetBehavior != null) {
            bottomSheetBehavior.G0(this);
            i(this.f27618e.q0());
            this.f27618e.Y(this.f27625l);
        }
        j();
    }

    @Override
    public void onAccessibilityStateChanged(boolean z10) {
        this.f27619f = z10;
        j();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setBottomSheetBehavior(f());
        AccessibilityManager accessibilityManager = this.f27617d;
        if (accessibilityManager != null) {
            accessibilityManager.addAccessibilityStateChangeListener(this);
            onAccessibilityStateChanged(this.f27617d.isEnabled());
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        AccessibilityManager accessibilityManager = this.f27617d;
        if (accessibilityManager != null) {
            accessibilityManager.removeAccessibilityStateChangeListener(this);
        }
        setBottomSheetBehavior(null);
        super.onDetachedFromWindow();
    }

    public BottomSheetDragHandleView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.bottomSheetDragHandleStyle);
    }

    public BottomSheetDragHandleView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(db.a.c(context, attributeSet, i10, f27616m), attributeSet, i10);
        this.f27622i = getResources().getString(R$string.bottomsheet_action_expand);
        this.f27623j = getResources().getString(R$string.bottomsheet_action_collapse);
        this.f27624k = getResources().getString(R$string.bottomsheet_drag_handle_clicked);
        this.f27625l = new a();
        this.f27617d = (AccessibilityManager) getContext().getSystemService("accessibility");
        j();
        ViewCompat.setAccessibilityDelegate(this, new b());
    }
}
