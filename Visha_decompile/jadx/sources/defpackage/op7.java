package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import java.lang.ref.WeakReference;

public class op7 implements DialogInterface.OnClickListener {
    public final WeakReference b;

    public op7(rq7 rq7Var, WeakReference weakReference) {
        this.b = weakReference;
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.b.get() != null) {
            xj.U((Context) this.b.get()).D0("cancel");
        }
    }
}
