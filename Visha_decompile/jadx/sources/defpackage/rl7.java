package defpackage;

import android.content.DialogInterface;
import com.transsion.xuanniao.account.center.view.ClearDataActivity;

public class rl7 implements DialogInterface.OnClickListener {
    public final ClearDataActivity b;

    public rl7(ClearDataActivity clearDataActivity) {
        this.b = clearDataActivity;
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i) {
        ClearDataActivity.B0(this.b);
    }
}
