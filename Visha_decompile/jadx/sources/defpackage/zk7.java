package defpackage;

import android.content.DialogInterface;
import android.view.KeyEvent;

public class zk7 implements DialogInterface.OnKeyListener {
    public final ho7 b;

    public zk7(ho7 ho7Var) {
        this.b = ho7Var;
    }

    @Override
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i != 4) {
            return false;
        }
        this.b.b.finish();
        return false;
    }
}
