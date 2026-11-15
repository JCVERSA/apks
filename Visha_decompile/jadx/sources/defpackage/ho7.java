package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Button;
import android.widget.TextView;
import com.transsion.widgetslib.dialog.d;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.help.view.WebViewActivity;
import com.transsion.xuanniao.account.model.data.PolicyRes;
import java.util.HashMap;

public class ho7 {
    public d a;
    public BaseActivity b;
    public Button c;
    public DialogInterface.OnClickListener d;
    public DialogInterface.OnClickListener e;
    public TextView f;
    public long g = 0;

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
            ho7 ho7Var = ho7.this;
            if (ho7Var.b == null) {
                return;
            }
            if ("usage".equals(str)) {
                WebViewActivity.B0(ho7Var.b, R.string.xn_user_agreement, policyRes.usageUrl);
            } else {
                WebViewActivity.B0(ho7Var.b, R.string.xn_privacy_policy, policyRes.privacyUrl);
            }
            ho7.this.b.A0();
        }

        @Override
        public void g() {
            ho7 ho7Var = ho7.this;
            if (ho7Var.b == null) {
                return;
            }
            ho7Var.b(this.k);
        }
    }

    public ho7(BaseActivity baseActivity, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2) {
        this.b = baseActivity;
        this.d = onClickListener;
        this.e = onClickListener2;
    }

    public static boolean c(Context context) {
        try {
            if (!jr7.i(context) && !context.getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("have_agree_brand", false) && context.getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("is_logged_in", false)) {
                String strH = ao7.a.a.h();
                Log.d("com.palm.id.log", "needShowNote brandId = " + strH);
                return TextUtils.isEmpty(strH) || "Palm ID".equals(strH);
            }
        } catch (Exception e) {
            Log.d("com.palm.id.log", Log.getStackTraceString(e));
        }
        return false;
    }

    public void a(Context context) {
        SharedPreferences.Editor editorEdit = context.getApplicationContext().getSharedPreferences("AccountPrefs", 0).edit();
        editorEdit.putBoolean("have_agree_brand", true);
        editorEdit.apply();
    }

    public void b(String str) {
        BaseActivity baseActivity = this.b;
        baseActivity.u0(baseActivity.getString(R.string.xn_loading));
        BaseActivity baseActivity2 = this.b;
        String strA = sq7.a(baseActivity2);
        String str2 = TextUtils.equals(this.b.getPackageName(), "tech.palm.id") ? "palmId" : "sdk";
        a aVar = new a(this.b, str, PolicyRes.class, str);
        HashMap map = new HashMap();
        map.put("type", str2);
        map.put("language", strA.replaceAll("\\+", "-"));
        map.put("brand", jr7.h());
        cr7 cr7Var = cr7.b.a;
        if (cr7Var.a(baseActivity2)) {
            new zn7().d(baseActivity2, dp7.a("/app/policy/get"), map, aVar);
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
