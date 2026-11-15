package defpackage;

import android.content.DialogInterface;
import android.webkit.JsResult;

public final class yif implements DialogInterface.OnClickListener {
    public final JsResult b;

    public yif(JsResult jsResult) {
        this.b = jsResult;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.b.confirm();
    }
}
