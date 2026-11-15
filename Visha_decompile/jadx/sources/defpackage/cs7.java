package defpackage;

import android.text.TextUtils;
import android.view.View;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.help.view.WebViewActivity;
import com.transsion.xuanniao.account.login.view.LoginActivity;
import com.transsion.xuanniao.account.model.data.PrivacyAgreementMap;
import java.util.Objects;

public class cs7 implements er7.a {
    public final LoginActivity a;

    public cs7(LoginActivity loginActivity) {
        this.a = loginActivity;
    }

    @Override
    public void onClick(View view) {
        LoginActivity loginActivity = this.a;
        loginActivity.getClass();
        xj.U(loginActivity).M1();
        LoginActivity loginActivity2 = this.a;
        loginActivity2.getClass();
        String agreementUrl = PrivacyAgreementMap.getAgreementUrl(loginActivity2);
        if (!TextUtils.isEmpty(agreementUrl)) {
            WebViewActivity.B0(this.a, R.string.xn_user_agreement, jr7.f(agreementUrl));
            return;
        }
        do7 do7Var = this.a.j;
        Objects.requireNonNull(do7Var);
        do7Var.l("usage");
    }
}
