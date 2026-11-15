package com.google.android.material.sidesheet;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.GravityInt;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import com.google.android.material.R;

public class SideSheetDialog extends SheetDialog<SideSheetCallback> {
    private static final int SIDE_SHEET_DIALOG_THEME_ATTR = R.attr.sideSheetDialogTheme;
    private static final int SIDE_SHEET_DIALOG_DEFAULT_THEME_RES = R.style.Theme_Material3_Light_SideSheetDialog;

    public SideSheetDialog(@NonNull Context context) {
        this(context, 0);
    }

    @Override
    public void addSheetCancelOnHideCallback(Sheet<SideSheetCallback> sheet) {
        sheet.addCallback(new SideSheetCallback() {
            @Override
            public void onSlide(@NonNull View view, float f) {
            }

            @Override
            public void onStateChanged(@NonNull View view, int i) {
                if (i == 5) {
                    SideSheetDialog.this.cancel();
                }
            }
        });
    }

    @Override
    public void cancel() {
        super.cancel();
    }

    @Override
    @NonNull
    public Sheet<SideSheetCallback> getBehaviorFromSheet(@NonNull FrameLayout frameLayout) {
        return SideSheetBehavior.from(frameLayout);
    }

    @Override
    @IdRes
    public int getDialogId() {
        return R.id.m3_side_sheet;
    }

    @Override
    @LayoutRes
    public int getLayoutResId() {
        return R.layout.m3_side_sheet_dialog;
    }

    @Override
    public int getStateOnStart() {
        return 3;
    }

    @Override
    public boolean isDismissWithSheetAnimationEnabled() {
        return super.isDismissWithSheetAnimationEnabled();
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override
    public void setCancelable(boolean z) {
        super.setCancelable(z);
    }

    @Override
    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
    }

    @Override
    public void setContentView(@LayoutRes int i) {
        super.setContentView(i);
    }

    @Override
    public void setDismissWithSheetAnimationEnabled(boolean z) {
        super.setDismissWithSheetAnimationEnabled(z);
    }

    @Override
    public void setSheetEdge(@GravityInt int i) {
        super.setSheetEdge(i);
    }

    public SideSheetDialog(@NonNull Context context, @StyleRes int i) {
        super(context, i, SIDE_SHEET_DIALOG_THEME_ATTR, SIDE_SHEET_DIALOG_DEFAULT_THEME_RES);
    }

    @Override
    @NonNull
    public SideSheetBehavior<? extends View> getBehavior() {
        Sheet behavior = super.getBehavior();
        if (behavior instanceof SideSheetBehavior) {
            return (SideSheetBehavior) behavior;
        }
        throw new IllegalStateException("The view is not associated with SideSheetBehavior");
    }

    @Override
    public void setContentView(@Nullable View view) {
        super.setContentView(view);
    }

    @Override
    public void setContentView(@Nullable View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
    }
}
