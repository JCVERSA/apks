package defpackage;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.help.view.WebViewActivity;
import com.transsion.xuanniao.account.model.data.PrivacyAgreementMap;

public class ko7 implements er7.a {
    public final Context a;
    public final mm7 b;

    public ko7(mm7 mm7Var, Context context) {
        this.b = mm7Var;
        this.a = context;
    }

    @Override
    public void onClick(View view) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        mm7 mm7Var = this.b;
        if (jElapsedRealtime < mm7Var.d + 2000) {
            return;
        }
        mm7Var.d = SystemClock.elapsedRealtime();
        xj.U(this.a).n("policy");
        String privacyUrl = PrivacyAgreementMap.getPrivacyUrl(this.a);
        if (TextUtils.isEmpty(privacyUrl)) {
            this.b.b("Policy");
        } else {
            WebViewActivity.B0(this.a, R.string.xn_privacy_policy, jr7.f(privacyUrl));
        }
    }
}
