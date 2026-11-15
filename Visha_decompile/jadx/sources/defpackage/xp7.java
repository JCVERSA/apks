package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.view.inputmethod.InputMethodManager;
import java.lang.ref.WeakReference;

public class xp7 implements DialogInterface.OnShowListener {
    public final WeakReference a;
    public final rq7 b;

    public xp7(rq7 rq7Var, WeakReference weakReference) {
        this.b = rq7Var;
        this.a = weakReference;
    }

    @Override
    public void onShow(DialogInterface dialogInterface) {
        this.b.c.getEdit().requestFocus();
        this.b.c.setFocusable(true);
        if (this.a.get() != null) {
            ((InputMethodManager) ((Context) this.a.get()).getSystemService("input_method")).showSoftInput(this.b.c, 1);
        }
    }
}
