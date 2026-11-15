package defpackage;

import android.content.DialogInterface;
import android.webkit.JsResult;

public final class wif implements DialogInterface.OnCancelListener {
    public final JsResult b;

    public wif(JsResult jsResult) {
        this.b = jsResult;
    }

    @Override
    public final void onCancel(DialogInterface dialogInterface) {
        this.b.cancel();
    }
}
