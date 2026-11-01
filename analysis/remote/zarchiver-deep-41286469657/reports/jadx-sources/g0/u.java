package g0;

import android.app.Dialog;
import android.content.DialogInterface;

public final class u implements DialogInterface.OnClickListener {

    public final v f1045a;

    public u(v vVar) {
        this.f1045a = vVar;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i2) {
        Dialog dialog = this.f1045a.f1047g;
        if (dialog != null) {
            dialog.cancel();
        }
    }
}
