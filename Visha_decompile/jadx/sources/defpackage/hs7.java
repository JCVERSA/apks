package defpackage;

import android.content.DialogInterface;
import com.transsion.xuanniao.account.center.view.o;

public class hs7 implements DialogInterface.OnClickListener {
    public final o b;

    public hs7(o oVar) {
        this.b = oVar;
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i) {
        xj.U(this.b.d).K1("Cancel");
    }
}
