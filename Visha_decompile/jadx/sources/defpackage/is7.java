package defpackage;

import android.content.DialogInterface;
import com.transsion.xuanniao.account.center.view.o;

public class is7 implements DialogInterface.OnClickListener {
    public final o b;

    public is7(o oVar) {
        this.b = oVar;
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i) {
        this.b.d.startActivity(jr7.a(this.b.d));
        xj.U(this.b.d).K1("Settings");
    }
}
