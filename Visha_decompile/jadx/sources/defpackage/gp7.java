package defpackage;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.transsion.xuanniao.account.help.view.PrivacyCenterActivity;

public class gp7 implements er7.a {
    public final Context a;

    public gp7(mm7 mm7Var, Context context) {
        this.a = context;
    }

    @Override
    public void onClick(View view) {
        xj.U(this.a).n("help");
        this.a.startActivity(new Intent(this.a, (Class<?>) PrivacyCenterActivity.class));
    }
}
