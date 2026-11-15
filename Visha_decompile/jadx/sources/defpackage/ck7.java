package defpackage;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import com.transsion.widgetslib.dialog.d;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.pwd.view.SetPwdActivity;

public abstract class ck7 {

    public class a implements DialogInterface.OnClickListener {
        public final Activity b;

        public a(Activity activity) {
            this.b = activity;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            xj.U(this.b).U0("later");
        }
    }

    public class b implements DialogInterface.OnClickListener {
        public final Activity b;

        public b(Activity activity) {
            this.b = activity;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            Intent intent = new Intent(this.b, (Class<?>) SetPwdActivity.class);
            intent.putExtra("setPwdType", 3);
            this.b.startActivityForResult(intent, 9001);
            xj.U(this.b).U0("now");
        }
    }

    public static void a(Activity activity, String str, String str2) {
        xj.U(activity).V0(str2);
        new d.a(activity, R.style.dialog_soft_input).B(activity.getString(R.string.xn_set_pwd_note)).k(str).w(activity.getString(R.string.xn_dialog_set_pwd), new b(activity)).n(activity.getString(R.string.xn_not_set_pwd), new a(activity)).F();
    }
}
