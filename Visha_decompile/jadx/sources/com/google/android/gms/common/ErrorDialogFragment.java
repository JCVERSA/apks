package com.google.android.gms.common;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import defpackage.wd8;

public class ErrorDialogFragment extends DialogFragment {
    public Dialog b;
    public DialogInterface.OnCancelListener c;
    public Dialog d;

    public static ErrorDialogFragment a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        ErrorDialogFragment errorDialogFragment = new ErrorDialogFragment();
        Dialog dialog2 = (Dialog) wd8.m(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        errorDialogFragment.b = dialog2;
        if (onCancelListener != null) {
            errorDialogFragment.c = onCancelListener;
        }
        return errorDialogFragment;
    }

    @Override
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.c;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = this.b;
        if (dialog != null) {
            return dialog;
        }
        setShowsDialog(false);
        if (this.d == null) {
            this.d = new AlertDialog.Builder((Context) wd8.l(getActivity())).create();
        }
        return this.d;
    }

    @Override
    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}
