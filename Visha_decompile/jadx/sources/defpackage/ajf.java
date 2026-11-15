package defpackage;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

public final class ajf implements DialogInterface.OnClickListener {
    public final JsPromptResult b;

    public ajf(JsPromptResult jsPromptResult) {
        this.b = jsPromptResult;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.b.cancel();
    }
}
