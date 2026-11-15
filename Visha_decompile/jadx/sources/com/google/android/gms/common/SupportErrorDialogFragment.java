package com.google.android.gms.common;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import defpackage.wd8;

public class SupportErrorDialogFragment extends DialogFragment {
    public Dialog l;
    public DialogInterface.OnCancelListener m;
    public Dialog n;

    public static SupportErrorDialogFragment u(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        SupportErrorDialogFragment supportErrorDialogFragment = new SupportErrorDialogFragment();
        Dialog dialog2 = (Dialog) wd8.m(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        supportErrorDialogFragment.l = dialog2;
        if (onCancelListener != null) {
            supportErrorDialogFragment.m = onCancelListener;
        }
        return supportErrorDialogFragment;
    }

    @Override
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.m;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = this.l;
        if (dialog != null) {
            return dialog;
        }
        setShowsDialog(false);
        if (this.n == null) {
            this.n = new AlertDialog.Builder((Context) wd8.l(getContext())).create();
        }
        return this.n;
    }

    @Override
    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}
