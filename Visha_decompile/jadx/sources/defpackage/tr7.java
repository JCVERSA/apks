package defpackage;

import android.content.DialogInterface;
import com.transsion.xuanniao.account.center.view.h;

public class tr7 implements DialogInterface.OnClickListener {
    public final h b;

    public tr7(h hVar) {
        this.b = hVar;
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i) {
        xj.U(this.b.b).I0("cancel");
    }
}
