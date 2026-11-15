package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R$attr;
import com.google.android.material.R$layout;

public class Snackbar extends BaseTransientBottomBar {
    private static final int[] I;
    private static final int[] J;
    private final AccessibilityManager G;
    private boolean H;

    public static final class SnackbarLayout extends BaseTransientBottomBar.SnackbarBaseLayout {
        public SnackbarLayout(Context context) {
            super(context);
        }

        @Override
        protected void onMeasure(int i10, int i11) {
            super.onMeasure(i10, i11);
            int childCount = getChildCount();
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                if (childAt.getLayoutParams().width == -1) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), 1073741824));
                }
            }
        }

        @Override
        public void setBackground(@Nullable Drawable drawable) {
            super.setBackground(drawable);
        }

        @Override
        public void setBackgroundDrawable(@Nullable Drawable drawable) {
            super.setBackgroundDrawable(drawable);
        }

        @Override
        public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
            super.setBackgroundTintList(colorStateList);
        }

        @Override
        public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
            super.setBackgroundTintMode(mode);
        }

        @Override
        public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super.setLayoutParams(layoutParams);
        }

        @Override
        public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
            super.setOnClickListener(onClickListener);
        }

        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    static {
        int i10 = R$attr.snackbarButtonStyle;
        I = new int[]{i10};
        J = new int[]{i10, R$attr.snackbarTextViewStyle};
    }

    private Snackbar(Context context, ViewGroup viewGroup, View view, a aVar) {
        super(context, viewGroup, view, aVar);
        this.G = (AccessibilityManager) viewGroup.getContext().getSystemService("accessibility");
    }

    private static ViewGroup g0(View view) {
        ViewGroup viewGroup = null;
        while (!(view instanceof CoordinatorLayout)) {
            if (view instanceof FrameLayout) {
                if (view.getId() == 16908290) {
                    return (ViewGroup) view;
                }
                viewGroup = (ViewGroup) view;
            }
            if (view != null) {
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            if (view == null) {
                return viewGroup;
            }
        }
        return (ViewGroup) view;
    }

    private Button h0() {
        return i0().getActionView();
    }

    private SnackbarContentLayout i0() {
        return (SnackbarContentLayout) this.f28921i.getChildAt(0);
    }

    private TextView j0() {
        return i0().getMessageView();
    }

    private static boolean k0(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(J);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        typedArrayObtainStyledAttributes.recycle();
        return (resourceId == -1 || resourceId2 == -1) ? false : true;
    }

    public void l0(View.OnClickListener onClickListener, View view) {
        onClickListener.onClick(view);
        y(1);
    }

    public static Snackbar m0(View view, int i10, int i11) {
        return n0(view, view.getResources().getText(i10), i11);
    }

    public static Snackbar n0(View view, CharSequence charSequence, int i10) {
        return o0(null, view, charSequence, i10);
    }

    private static Snackbar o0(Context context, View view, CharSequence charSequence, int i10) {
        ViewGroup viewGroupG0 = g0(view);
        if (viewGroupG0 == null) {
            throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
        }
        if (context == null) {
            context = viewGroupG0.getContext();
        }
        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) LayoutInflater.from(context).inflate(k0(context) ? R$layout.mtrl_layout_snackbar_include : R$layout.design_layout_snackbar_include, viewGroupG0, false);
        Snackbar snackbar = new Snackbar(context, viewGroupG0, snackbarContentLayout, snackbarContentLayout);
        snackbar.t0(charSequence);
        snackbar.T(i10);
        return snackbar;
    }

    @Override
    public int C() {
        int iC = super.C();
        if (iC == -2) {
            return -2;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            return this.G.getRecommendedTimeoutMillis(iC, (this.H ? 4 : 0) | 3);
        }
        if (this.H && this.G.isTouchExplorationEnabled()) {
            return -2;
        }
        return iC;
    }

    @Override
    public void X() {
        super.X();
    }

    public Snackbar p0(int i10, View.OnClickListener onClickListener) {
        return q0(B().getText(i10), onClickListener);
    }

    public Snackbar q0(CharSequence charSequence, final View.OnClickListener onClickListener) {
        Button buttonH0 = h0();
        if (TextUtils.isEmpty(charSequence) || onClickListener == null) {
            buttonH0.setVisibility(8);
            buttonH0.setOnClickListener(null);
            this.H = false;
        } else {
            this.H = true;
            buttonH0.setVisibility(0);
            buttonH0.setText(charSequence);
            buttonH0.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f28973a.l0(onClickListener, view);
                }
            });
        }
        return this;
    }

    public Snackbar r0(int i10) {
        return s0(ColorStateList.valueOf(i10));
    }

    public Snackbar s0(ColorStateList colorStateList) {
        this.f28921i.setBackgroundTintList(colorStateList);
        return this;
    }

    public Snackbar t0(CharSequence charSequence) {
        j0().setText(charSequence);
        return this;
    }

    @Override
    public void x() {
        super.x();
    }
}
