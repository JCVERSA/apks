package androidx.appcompat.app;

import android.app.Dialog;
import android.os.Bundle;
import androidx.fragment.app.DialogFragment;

public class AppCompatDialogFragment extends DialogFragment {
    @Override
    public Dialog onCreateDialog(Bundle bundle) {
        return new w(getContext(), getTheme());
    }

    @Override
    public void setupDialog(Dialog dialog, int i10) {
        if (!(dialog instanceof w)) {
            super.setupDialog(dialog, i10);
            return;
        }
        w wVar = (w) dialog;
        if (i10 != 1 && i10 != 2) {
            if (i10 != 3) {
                return;
            } else {
                dialog.getWindow().addFlags(24);
            }
        }
        wVar.supportRequestWindowFeature(1);
    }
}
