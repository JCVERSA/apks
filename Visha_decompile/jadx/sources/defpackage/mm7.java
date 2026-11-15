package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import android.content.DialogInterface;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.widget.TextView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.center.view.UserCenterActivity;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.help.view.WebViewActivity;
import com.transsion.xuanniao.account.model.data.CloudConfigRes;
import com.transsion.xuanniao.account.model.data.PolicyRes;
import java.util.HashMap;

public class mm7 {
    public com.transsion.widgetslib.dialog.d a;
    public BaseActivity b;
    public d c;
    public long d;

    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            xj.U(mm7.this.b).m("deny", tl7.c(mm7.this.b).i(), tl7.c(mm7.this.b).j());
            d dVar = mm7.this.c;
            if (dVar != null) {
                UserCenterActivity userCenterActivity = UserCenterActivity.this;
                int i2 = UserCenterActivity.r;
                userCenterActivity.getClass();
                go7.a.a.getClass();
                userCenterActivity.k.d(userCenterActivity.getResources().getBoolean(R.bool.sdk_logout_is_force));
            }
        }
    }

    public class b implements DialogInterface.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            xj.U(mm7.this.b).m("accept", tl7.c(mm7.this.b).i(), tl7.c(mm7.this.b).j());
            CloudConfigRes.privacyAgree(mm7.this.b);
        }
    }

    public class c extends OppO0O0 {
        public final String k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context, String str, Class cls, String str2) {
            super(context, str, cls);
            this.k = str2;
        }

        @Override
        public void b(int i, Object obj, String str) {
            PolicyRes policyRes = (PolicyRes) obj;
            mm7.this.b.A0();
            if ("usage".equals(str)) {
                WebViewActivity.B0(mm7.this.b, R.string.xn_user_agreement, policyRes.usageUrl);
            } else {
                WebViewActivity.B0(mm7.this.b, R.string.xn_privacy_policy, policyRes.privacyUrl);
            }
        }

        @Override
        public void g() {
            mm7.this.b(this.k);
        }
    }

    public interface d {
    }

    public mm7(BaseActivity baseActivity, d dVar) {
        this.b = baseActivity;
        this.c = dVar;
    }

    public void a() {
        xj.U(this.b).o(CloudConfigRes.privacyVersion(this.b));
        com.transsion.widgetslib.dialog.d dVar = this.a;
        if (dVar != null) {
            if (dVar.isShowing()) {
                return;
            }
            this.a.show();
            return;
        }
        com.transsion.widgetslib.dialog.d dVarF = new com.transsion.widgetslib.dialog.d.a(this.b, R.style.dialog_soft_input).D(R.layout.xn_privacy_update_dialog).B(this.b.getString(R.string.xn_privacy_update_title)).w(this.b.getString(R.string.xn_accept), new b()).n(this.b.getString(R.string.xn_refuse), new a()).e(false).f(false).F();
        this.a = dVarF;
        TextView textView = (TextView) dVarF.findViewById(R.id.updateDetail);
        BaseActivity baseActivity = this.b;
        String string = baseActivity.getString(R.string.xn_user_agreement);
        String string2 = baseActivity.getString(R.string.xn_privacy_policy);
        String strD = jr7.d(baseActivity.getString(R.string.xn_privacy_update_detail, string, string2));
        SpannableString spannableString = new SpannableString(strD + " ");
        int iIndexOf = strD.toLowerCase().indexOf(string.toLowerCase());
        int i = R.color.os_platform_basic_color_selector;
        spannableString.setSpan(new ForegroundColorSpan(baseActivity.getColor(i)), iIndexOf, string.length() + iIndexOf, 33);
        spannableString.setSpan(new er7(baseActivity, new mn7(this, baseActivity)), iIndexOf, string.length() + iIndexOf, 33);
        int iIndexOf2 = strD.toLowerCase().indexOf(string2.toLowerCase());
        spannableString.setSpan(new ForegroundColorSpan(baseActivity.getColor(i)), iIndexOf2, string2.length() + iIndexOf2, 33);
        spannableString.setSpan(new er7(baseActivity, new ko7(this, baseActivity)), iIndexOf2, string2.length() + iIndexOf2, 33);
        textView.setText(spannableString);
        textView.setMovementMethod(ir7.a());
        TextView textView2 = (TextView) this.a.findViewById(R.id.tips);
        BaseActivity baseActivity2 = this.b;
        String string3 = baseActivity2.getString(R.string.xn_privacy_help);
        String strD2 = jr7.d(baseActivity2.getString(R.string.xn_privacy_update_tips, string3));
        SpannableString spannableString2 = new SpannableString(strD2 + " ");
        int iIndexOf3 = strD2.toLowerCase().indexOf(string3.toLowerCase());
        spannableString2.setSpan(new ForegroundColorSpan(baseActivity2.getColor(i)), iIndexOf3, string3.length() + iIndexOf3, 33);
        spannableString2.setSpan(new er7(baseActivity2, new gp7(this, baseActivity2)), iIndexOf3, string3.length() + iIndexOf3, 33);
        textView2.setText(spannableString2);
        textView2.setMovementMethod(ir7.a());
    }

    public void b(String str) {
        BaseActivity baseActivity = this.b;
        baseActivity.u0(baseActivity.getString(R.string.xn_loading));
        BaseActivity baseActivity2 = this.b;
        String strA = sq7.a(baseActivity2);
        String str2 = TextUtils.equals(this.b.getPackageName(), "tech.palm.id") ? "palmId" : "sdk";
        c cVar = new c(this.b, str, PolicyRes.class, str);
        HashMap map = new HashMap();
        map.put("type", str2);
        map.put("language", strA.replaceAll("\\+", "-"));
        map.put("brand", jr7.h());
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(baseActivity2)) {
            new zn7().d(baseActivity2, dp7.a("/app/policy/get"), map, cVar);
            return;
        }
        if (baseActivity2 != null) {
            baseActivity2.A0();
        }
        if (baseActivity2 != null) {
            cr7Var.b(baseActivity2);
        }
    }
}
