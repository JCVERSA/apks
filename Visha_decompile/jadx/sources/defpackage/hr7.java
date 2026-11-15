package defpackage;

import android.content.Intent;
import android.view.View;
import com.transsion.widgetslib.dialog.d;
import com.transsion.xuanniao.account.pwd.view.SetPwdActivity;

public class hr7 implements er7.a {
    public final d a;
    public final mr7 b;

    public hr7(mr7 mr7Var, d dVar) {
        this.b = mr7Var;
        this.a = dVar;
    }

    @Override
    public void onClick(View view) {
        xj.U(this.b.a).O("setpwd");
        Intent intent = new Intent(this.b.a, (Class<?>) SetPwdActivity.class);
        intent.putExtra("setPwdType", 3);
        this.b.a.startActivityForResult(intent, 2002);
        this.a.dismiss();
    }
}
