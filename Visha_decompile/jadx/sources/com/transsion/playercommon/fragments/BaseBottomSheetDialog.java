package com.transsion.playercommon.fragments;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.Window;
import android.widget.FrameLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.transsion.playercommon.R;
import com.transsion.utils.a;
import defpackage.e80;

public class BaseBottomSheetDialog extends BottomSheetDialogFragment {
    public int l;
    public int m;

    @Override
    public Dialog onCreateDialog(Bundle bundle) {
        setStyle(1, R.style.CommonBottomSheetDialog);
        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) super.onCreateDialog(bundle);
        boolean z = this.l == u();
        bottomSheetDialog.getBehavior().setDraggable(z);
        bottomSheetDialog.setCancelable(z);
        bottomSheetDialog.setCanceledOnTouchOutside(z);
        return bottomSheetDialog;
    }

    @Override
    public void onStart() {
        super.onStart();
        Window window = requireDialog().getWindow();
        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) requireDialog();
        FrameLayout frameLayout = (FrameLayout) bottomSheetDialog.getDelegate().findViewById(R.id.design_bottom_sheet);
        if (frameLayout != null) {
            frameLayout.setBackground(new ColorDrawable(0));
            bottomSheetDialog.getWindow().getAttributes().windowAnimations = R.style.bottomDialog;
            BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from(frameLayout);
            bottomSheetBehaviorFrom.setPeekHeight(w());
            bottomSheetBehaviorFrom.setSkipCollapsed(true);
            bottomSheetBehaviorFrom.setGestureInsetBottomIgnored(true);
            window.getDecorView().setPadding(0, a.d(requireActivity(), 60.0f), 0, 0);
            bottomSheetBehaviorFrom.setState(3);
            window.setGravity(80);
            window.setDimAmount(0.3f);
        }
        e80.i(window, getResources().getColor(R.color.bottom_playList));
        e80.j(window, v());
    }

    public int u() {
        return 0;
    }

    public final boolean v() {
        return getContext() != null && (getContext().getResources().getConfiguration().uiMode & 48) == 32;
    }

    public int w() {
        int i = this.m;
        return i <= 0 ? requireActivity().getResources().getDisplayMetrics().heightPixels - a.d(requireActivity(), 60.0f) : i;
    }
}
