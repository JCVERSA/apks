package com.transsion.playercommon.widgets;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;

public abstract class BaseFullBottomSheetFragment extends BottomSheetDialogFragment {
    public View l;
    public Context m;

    private void u() {
    }

    public abstract int getLayoutId();

    @Override
    public Dialog onCreateDialog(Bundle bundle) {
        return new BottomSheetDialog(getContext());
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.m = getContext();
        this.l = layoutInflater.inflate(getLayoutId(), viewGroup, false);
        u();
        v(this.l);
        return this.l;
    }

    public abstract void v(View view);
}
