package defpackage;

import android.text.TextUtils;
import android.view.View;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.help.view.WebViewActivity;
import com.transsion.xuanniao.account.login.view.LoginActivity;
import com.transsion.xuanniao.account.model.data.PrivacyAgreementMap;
import java.util.Objects;

public class yl7 implements er7.a {
    public final LoginActivity a;

    public yl7(LoginActivity loginActivity) {
        this.a = loginActivity;
    }

    @Override
    public void onClick(View view) {
        LoginActivity loginActivity = this.a;
        loginActivity.getClass();
        xj.U(loginActivity).i1();
        LoginActivity loginActivity2 = this.a;
        loginActivity2.getClass();
        String privacyUrl = PrivacyAgreementMap.getPrivacyUrl(loginActivity2);
        if (!TextUtils.isEmpty(privacyUrl)) {
            WebViewActivity.B0(this.a, R.string.xn_privacy_policy, jr7.f(privacyUrl));
            return;
        }
        do7 do7Var = this.a.j;
        Objects.requireNonNull(do7Var);
        do7Var.l("Policy");
    }
}
