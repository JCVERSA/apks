package defpackage;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;

public final class bjf implements DialogInterface.OnClickListener {
    public final JsPromptResult b;
    public final EditText c;

    public bjf(JsPromptResult jsPromptResult, EditText editText) {
        this.b = jsPromptResult;
        this.c = editText;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.b.confirm(this.c.getText().toString());
    }
}
