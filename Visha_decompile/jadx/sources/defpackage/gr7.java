package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import com.transsion.xuanniao.account.center.view.e;

public class gr7 implements DialogInterface.OnClickListener {
    public final Context b;

    public gr7(e eVar, Context context) {
        this.b = context;
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i) {
        xj.U(this.b).B0("cancel");
    }
}
