package defpackage;

import android.text.TextUtils;
import android.view.View;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.help.view.WebViewActivity;
import com.transsion.xuanniao.account.model.data.PrivacyAgreementMap;

public class qn7 implements er7.a {
    public final ho7 a;

    public qn7(ho7 ho7Var) {
        this.a = ho7Var;
    }

    @Override
    public void onClick(View view) {
        long jAbs = Math.abs(System.currentTimeMillis() - this.a.g);
        this.a.g = System.currentTimeMillis();
        if (jAbs < 1000) {
            return;
        }
        xj.U(this.a.b).i1();
        String privacyUrl = PrivacyAgreementMap.getPrivacyUrl(this.a.b);
        if (TextUtils.isEmpty(privacyUrl)) {
            this.a.b("Policy");
            return;
        }
        ho7 ho7Var = this.a;
        WebViewActivity.B0(ho7Var.b, R.string.xn_privacy_policy, jr7.f(privacyUrl));
    }
}
