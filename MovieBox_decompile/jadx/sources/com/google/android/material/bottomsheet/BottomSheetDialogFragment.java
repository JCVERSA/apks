package com.google.android.material.bottomsheet;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatDialogFragment;

public class BottomSheetDialogFragment extends AppCompatDialogFragment {

    private boolean f27614a;

    private class b extends BottomSheetBehavior.f {
        private b() {
        }

        @Override
        public void onSlide(View view, float f10) {
        }

        @Override
        public void onStateChanged(View view, int i10) {
            if (i10 == 5) {
                BottomSheetDialogFragment.this.Y();
            }
        }
    }

    public void Y() {
        if (this.f27614a) {
            super.dismissAllowingStateLoss();
        } else {
            super.dismiss();
        }
    }

    private void Z(BottomSheetBehavior bottomSheetBehavior, boolean z10) {
        this.f27614a = z10;
        if (bottomSheetBehavior.q0() == 5) {
            Y();
            return;
        }
        if (getDialog() instanceof c) {
            ((c) getDialog()).m();
        }
        bottomSheetBehavior.Y(new b());
        bottomSheetBehavior.U0(5);
    }

    private boolean a0(boolean z10) {
        Dialog dialog = getDialog();
        if (!(dialog instanceof c)) {
            return false;
        }
        c cVar = (c) dialog;
        BottomSheetBehavior bottomSheetBehaviorK = cVar.k();
        if (!bottomSheetBehaviorK.x0() || !cVar.l()) {
            return false;
        }
        Z(bottomSheetBehaviorK, z10);
        return true;
    }

    @Override
    public void dismiss() {
        if (a0(false)) {
            return;
        }
        super.dismiss();
    }

    @Override
    public void dismissAllowingStateLoss() {
        if (a0(true)) {
            return;
        }
        super.dismissAllowingStateLoss();
    }

    @Override
    public Dialog onCreateDialog(Bundle bundle) {
        return new c(getContext(), getTheme());
    }
}
