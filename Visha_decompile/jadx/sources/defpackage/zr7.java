package defpackage;

import android.widget.CompoundButton;
import com.transsion.xuanniao.account.login.view.LoginActivity;

public class zr7 implements CompoundButton.OnCheckedChangeListener {
    public final LoginActivity b;

    public zr7(LoginActivity loginActivity) {
        this.b = loginActivity;
    }

    @Override
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.b.o.setChecked(z);
    }
}
