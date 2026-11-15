package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import android.text.TextUtils;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BasePresenter;
import com.transsion.xuanniao.account.help.view.PrivacyCenterActivity;
import com.transsion.xuanniao.account.model.data.PolicyRes;
import java.util.HashMap;

public class nl7 extends BasePresenter {

    public class a extends OppO0O0 {
        public final String k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, String str, Class cls, String str2) {
            super(context, str, cls);
            this.k = str2;
        }

        @Override
        public void b(int i, Object obj, String str) {
            PolicyRes policyRes = (PolicyRes) obj;
            if (nl7.this.a()) {
                nl7.this.c().A0();
                ((sk7) nl7.this.a).E(policyRes, str);
            }
        }

        @Override
        public void g() {
            if (nl7.this.a()) {
                nl7.this.b(this.k);
            }
        }
    }

    public void b(String str) {
        c().u0(c().getString(R.string.xn_loading));
        PrivacyCenterActivity privacyCenterActivityC = c();
        String strA = sq7.a(c());
        String str2 = TextUtils.equals(c().getPackageName(), "tech.palm.id") ? "palmId" : "sdk";
        a aVar = new a(c(), str, PolicyRes.class, str);
        HashMap map = new HashMap();
        map.put("type", str2);
        map.put("language", strA.replaceAll("\\+", "-"));
        map.put("brand", jr7.h());
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(privacyCenterActivityC)) {
            new zn7().d(privacyCenterActivityC, dp7.a("/app/policy/get"), map, aVar);
            return;
        }
        if (privacyCenterActivityC != null) {
            privacyCenterActivityC.A0();
        }
        if (privacyCenterActivityC != null) {
            cr7Var.b(privacyCenterActivityC);
        }
    }

    public final PrivacyCenterActivity c() {
        return (PrivacyCenterActivity) ((sk7) this.a).J();
    }
}
