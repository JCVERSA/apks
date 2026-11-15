package defpackage;

import android.content.DialogInterface;
import com.transsion.xuanniao.account.center.view.j;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;

public class vr7 implements DialogInterface.OnClickListener {
    public final BaseActivity b;

    public vr7(j jVar, BaseActivity baseActivity) {
        this.b = baseActivity;
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i) {
        xj.U(this.b).t0("cancel");
    }
}
