package defpackage;

import android.content.Intent;
import android.view.View;
import com.transsion.xuanniao.account.help.view.PrivacyCenterActivity;
import com.transsion.xuanniao.account.login.view.LoginActivity;

public class sr7 implements View.OnClickListener {
    public final LoginActivity b;

    public sr7(LoginActivity loginActivity) {
        this.b = loginActivity;
    }

    @Override
    public void onClick(View view) {
        Intent intent = new Intent(this.b, (Class<?>) PrivacyCenterActivity.class);
        this.b.j.p();
        intent.putExtra("is_oobe", false);
        this.b.startActivity(intent);
    }
}
