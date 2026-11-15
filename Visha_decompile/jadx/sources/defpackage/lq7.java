package defpackage;

import android.content.DialogInterface;

public class lq7 implements DialogInterface.OnDismissListener {
    public final rq7 b;

    public lq7(rq7 rq7Var) {
        this.b = rq7Var;
    }

    @Override
    public void onDismiss(DialogInterface dialogInterface) {
        this.b.a = null;
    }
}
