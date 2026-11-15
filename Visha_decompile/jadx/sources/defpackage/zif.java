package defpackage;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

public final class zif implements DialogInterface.OnCancelListener {
    public final JsPromptResult b;

    public zif(JsPromptResult jsPromptResult) {
        this.b = jsPromptResult;
    }

    @Override
    public final void onCancel(DialogInterface dialogInterface) {
        this.b.cancel();
    }
}
