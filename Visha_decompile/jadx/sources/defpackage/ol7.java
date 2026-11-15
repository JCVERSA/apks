package defpackage;

import OppOOp0.OppO0O0;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import com.transsion.xuanniao.account.comm.widget.ErrorView;
import com.transsion.xuanniao.account.comm.widget.PasswordInput;
import com.transsion.xuanniao.account.model.data.BaseEncryptRes;
import com.transsion.xuanniao.account.model.data.CommReq;
import com.transsion.xuanniao.account.model.data.Key;
import com.transsion.xuanniao.account.pwd.view.SelectResetMethodActivity;
import java.util.HashMap;

public class ol7 {
    public com.transsion.widgetslib.dialog.d a;
    public i b;
    public PasswordInput c;
    public Activity d;
    public Button e;
    public ErrorView f;
    public ml7 g;

    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            ol7.this.b.getClass();
        }
    }

    public class b implements DialogInterface.OnShowListener {
        public b() {
        }

        @Override
        public void onShow(DialogInterface dialogInterface) {
            vl7.c(ol7.this.d, true);
            ol7.this.c.getEdit().requestFocus();
        }
    }

    public class c implements DialogInterface.OnDismissListener {
        public c() {
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            vl7.c(ol7.this.d, false);
        }
    }

    public class d extends rm7 {
        public d() {
        }

        @Override
        public void b(View view) {
            ol7.this.d.startActivityForResult(new Intent(ol7.this.d, (Class<?>) SelectResetMethodActivity.class), 9001);
        }
    }

    public class e extends rm7 {
        public e() {
        }

        @Override
        public void b(View view) {
            ol7.this.a.dismiss();
            ol7.this.e();
        }
    }

    public class f extends OppO0O0 {
        public f(Context context, Class cls) {
            super(context, cls);
        }

        @Override
        public void b(int i, Object obj, String str) {
            Activity activity = ol7.this.d;
            if (activity == null) {
                return;
            }
            xj.U(activity).P1(1, "");
            ((BaseActivity) ol7.this.d).A0();
            i iVar = ol7.this.b;
            if (iVar != null) {
                ((gs7) iVar).b.f.j();
            }
        }

        @Override
        public void d(BaseData baseData, String str) {
            Activity activity = ol7.this.d;
            if (activity == null) {
                return;
            }
            xj.U(activity).P1(0, String.valueOf(baseData.code));
            ((BaseActivity) ol7.this.d).A0();
            int i = baseData.code;
            if (i == 400003) {
                ol7.this.f.setVisibility(0);
                ol7 ol7Var = ol7.this;
                ol7Var.f.setErrorText(ol7Var.d.getString(R.string.xn_pwd_error));
                ol7 ol7Var2 = ol7.this;
                ol7Var2.f.setTag(R.id.passwordInput, ol7Var2.c.getText());
            } else if (i != 400411) {
                super.d(baseData, str);
            } else if (baseData.errorExtend != null) {
                tl7 tl7VarC = tl7.c(ol7.this.d);
                tl7VarC.f(baseData.errorExtend.getEndTime().longValue());
                tl7VarC.b();
                ol7.this.b(baseData.errorExtend.getEndTime().longValue());
            }
            gs7 gs7Var = (gs7) ol7.this.b;
            gs7Var.a.c(gs7Var.b);
            gs7Var.a.c.getEdit().requestFocus();
        }

        @Override
        public void g() {
            ol7 ol7Var = ol7.this;
            if (ol7Var.d == null) {
                return;
            }
            ol7Var.e();
        }
    }

    public class g implements ml7.b {
        public g() {
        }

        @Override
        public void C(long j) {
            ol7.this.d(true, j);
        }

        @Override
        public void a() {
            ol7.this.d(false, 0L);
        }
    }

    public class h implements TextWatcher {
        public h() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            ol7.this.a();
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public interface i {
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0023  */
    /* JADX WARN: Code duplicated, block: B:24:0x0048  */
    public final void a() {
        boolean z;
        boolean z2;
        if (this.c.getText().equals(this.f.getTag(R.id.passwordInput))) {
            z = true;
        } else {
            ml7 ml7Var = this.g;
            if (ml7Var != null ? ml7Var.c : false) {
                z = true;
            } else {
                z = false;
            }
        }
        this.f.setVisibility(z ? 0 : 8);
        Button button = this.e;
        if (!TextUtils.isEmpty(this.c.getText())) {
            ml7 ml7Var2 = this.g;
            z2 = ml7Var2 != null ? ml7Var2.c : false ? false : true;
        }
        button.setEnabled(z2);
    }

    public void b(long j) {
        long jCurrentTimeMillis = j - System.currentTimeMillis();
        if (jCurrentTimeMillis > 0) {
            ml7 ml7Var = this.g;
            if (ml7Var != null) {
                ml7Var.a();
            }
            ml7 ml7Var2 = new ml7(new g());
            this.g = ml7Var2;
            ml7Var2.b = jCurrentTimeMillis;
            ml7Var2.c();
        }
    }

    public void c(Activity activity) {
        this.d = activity;
        com.transsion.widgetslib.dialog.d dVar = this.a;
        if (dVar == null) {
            com.transsion.widgetslib.dialog.d dVarA = new com.transsion.widgetslib.dialog.d.a(activity, R.style.dialog_soft_input).D(R.layout.xn_verify_pwd_popup).B(activity.getString(R.string.xn_modify_id_note)).w(activity.getString(R.string.xn_confirm), null).n(activity.getString(R.string.xn_cancel), new a()).f(false).a();
            this.a = dVarA;
            dVarA.setOnShowListener(new b());
            this.a.setOnDismissListener(new c());
            this.a.show();
            Button buttonE = this.a.e(-1);
            this.e = buttonE;
            buttonE.setEnabled(false);
            this.c = (PasswordInput) this.a.findViewById(R.id.passwordInput);
            this.f = (ErrorView) this.a.findViewById(R.id.pwdErrorView);
            this.c.setPwdLogoVisible(8);
            this.a.findViewById(R.id.forgetPwd).setOnClickListener(new d());
            this.e.setOnClickListener(new e());
            PasswordInput passwordInput = this.c;
            passwordInput.OppO0OO.addTextChangedListener(new h());
        } else if (!dVar.isShowing()) {
            this.a.show();
        }
        b(activity.getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_verify_pwd_limit", 0L));
    }

    public void d(boolean z, long j) {
        if (z) {
            com.transsion.widgetslib.dialog.d dVar = this.a;
            if (dVar != null) {
                dVar.findViewById(R.id.forgetPwd).setEnabled(false);
            }
            ErrorView errorView = this.f;
            if (errorView != null) {
                errorView.setErrorText(((BaseActivity) this.d).r0(R.string.xn_pwd_limit, fq7.b(j)));
            }
        } else {
            com.transsion.widgetslib.dialog.d dVar2 = this.a;
            if (dVar2 != null) {
                dVar2.findViewById(R.id.forgetPwd).setEnabled(true);
            }
            ErrorView errorView2 = this.f;
            if (errorView2 != null) {
                errorView2.setTag(R.id.passwordInput, "-1");
                this.f.setErrorText("");
            }
        }
        a();
    }

    public void e() {
        try {
            Activity activity = this.d;
            ((BaseActivity) activity).u0(activity.getString(R.string.xn_loading));
            String strA = nr7.a(this.c.getText(), Key.PUBLIC_KEY);
            Activity activity2 = this.d;
            f fVar = new f(this.d, BaseEncryptRes.class);
            HashMap map = new HashMap();
            map.put("password", strA);
            String strValueOf = String.valueOf(System.currentTimeMillis());
            map.put("verifyId", strValueOf);
            mk7 mk7VarA = ao7.a.a.a();
            mk7VarA.a = strValueOf;
            fVar.f = mk7VarA;
            Object objGenerateReq = CommReq.generateReq(activity2, mk7VarA, map);
            cr7 cr7Var = cr7.b.a;
            if (cr7Var.a(activity2)) {
                new zn7().c(activity2, dp7.a("/sdk/password/verify-crypt"), objGenerateReq, fVar);
                return;
            }
            if (activity2 instanceof BaseActivity) {
                ((BaseActivity) activity2).A0();
            }
            if (activity2 != null) {
                cr7Var.b(activity2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            Activity activity3 = this.d;
            if (activity3 != null) {
                ((BaseActivity) activity3).A0();
                Activity activity4 = this.d;
                ((BaseActivity) activity4).y0(activity4.getString(R.string.xn_net_unavailable));
            }
        }
    }
}
