package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.login.view.LoginActivity;

public class wr7 implements CompoundButton.OnCheckedChangeListener {
    public final LoginActivity b;

    public wr7(LoginActivity loginActivity) {
        this.b = loginActivity;
    }

    @Override
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            LoginActivity loginActivity = this.b;
            loginActivity.getClass();
            xj.U(loginActivity).M(true);
            LoginActivity loginActivity2 = this.b;
            SharedPreferences sharedPreferences = loginActivity2.getSharedPreferences(loginActivity2.getPackageName(), 0);
            String string = sharedPreferences.getString("ext_privacy_policy_version", "");
            String string2 = sharedPreferences.getString("ext_user_agreement_version", "");
            String string3 = sharedPreferences.getString("ext_developer_policy_version", "");
            LoginActivity loginActivity3 = this.b;
            loginActivity3.getClass();
            Context applicationContext = loginActivity3.getApplicationContext();
            SharedPreferences sharedPreferences2 = applicationContext.getSharedPreferences("AccountPrefs", 0);
            LoginActivity loginActivity4 = this.b;
            loginActivity4.getClass();
            xj.U(loginActivity4).p(sharedPreferences2.getString("privacy_version", applicationContext.getString(R.string.xn_privacy_version)), sharedPreferences2.getString("user_agreement_version", applicationContext.getString(R.string.xn_user_agreement_version)), string, string2, string3);
        }
        CheckBox checkBox = this.b.p;
        if (checkBox != null) {
            checkBox.setChecked(z);
        }
    }
}
