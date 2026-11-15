package defpackage;

import android.content.DialogInterface;
import android.content.Intent;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.center.view.ClearDataActivity;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.verify.view.VerifyAccountActivity;

public class dr7 implements DialogInterface.OnClickListener {
    public final mr7 b;

    public dr7(mr7 mr7Var) {
        this.b = mr7Var;
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i) {
        xj.U(this.b.a).O("exit");
        if (this.b.a()) {
            Intent intent = new Intent(this.b.a, (Class<?>) VerifyAccountActivity.class);
            intent.putExtra("operation", R.string.xn_logout_account);
            AccountRes accountRes = this.b.b;
            intent.putExtra("accountId", accountRes != null ? accountRes.username : "");
            this.b.a.startActivityForResult(intent, 2001);
            return;
        }
        mr7.a aVar = this.b.c;
        if (aVar != null) {
            ClearDataActivity clearDataActivity = ClearDataActivity.this;
            int i2 = ClearDataActivity.h;
            clearDataActivity.D0();
        }
    }
}
