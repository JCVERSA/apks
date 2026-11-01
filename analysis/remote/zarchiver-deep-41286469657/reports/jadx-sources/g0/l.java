package g0;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.widget.Button;

public final class l implements DialogInterface.OnShowListener {

    public final m f975a;

    public l(m mVar) {
        this.f975a = mVar;
    }

    @Override
    public final void onShow(DialogInterface dialogInterface) {
        m mVar = this.f975a;
        i.i(mVar.f976g);
        Button button = ((AlertDialog) dialogInterface).getButton(-1);
        if (button != null) {
            button.setOnClickListener(mVar);
        }
    }
}
