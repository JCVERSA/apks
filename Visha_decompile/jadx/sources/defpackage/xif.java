package defpackage;

import android.content.DialogInterface;
import android.webkit.JsResult;

public final class xif implements DialogInterface.OnClickListener {
    public final JsResult b;

    public xif(JsResult jsResult) {
        this.b = jsResult;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.b.cancel();
    }
}
