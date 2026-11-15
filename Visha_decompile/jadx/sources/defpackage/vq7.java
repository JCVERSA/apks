package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import com.transsion.xuanniao.account.center.view.d;
import java.lang.ref.WeakReference;

public class vq7 implements DialogInterface.OnClickListener {
    public final WeakReference b;

    public vq7(d dVar, WeakReference weakReference) {
        this.b = weakReference;
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.b.get() != null) {
            xj.U((Context) this.b.get()).v0("cancel");
        }
    }
}
