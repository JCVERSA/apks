package a;

import android.content.DialogInterface;

public final class i implements DialogInterface.OnDismissListener {

    public final k f29a;

    public i(k kVar) {
        this.f29a = kVar;
    }

    @Override
    public final void onDismiss(DialogInterface dialogInterface) {
        this.f29a.f47f = false;
    }
}
