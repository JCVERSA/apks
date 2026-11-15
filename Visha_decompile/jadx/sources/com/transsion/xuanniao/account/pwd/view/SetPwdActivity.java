package com.transsion.xuanniao.account.pwd.view;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.comm.widget.ErrorView;
import com.transsion.xuanniao.account.comm.widget.FormatView;
import com.transsion.xuanniao.account.comm.widget.PasswordInput;
import com.transsion.xuanniao.account.model.data.AccountRes;
import defpackage.ao7;
import defpackage.c39;
import defpackage.fq7;
import defpackage.ml7;
import defpackage.nm7;
import defpackage.rm7;
import defpackage.vl7;
import defpackage.xj;
import defpackage.xk7;
import defpackage.yk7;
import java.util.ArrayList;
import java.util.Arrays;

public class SetPwdActivity extends BaseActivity implements xk7 {
    public static final int n = 0;
    public nm7 e;
    public FormatView f;
    public ErrorView g;
    public PasswordInput h;
    public PasswordInput i;
    public PasswordInput j;
    public Button k;
    public String l;
    public boolean m;

    public class a extends rm7 {
        public a() {
        }

        @Override
        public void b(View view) {
            int id = view.getId();
            int i = R.id.savePwdBtn;
            if (id != i) {
                if (view.getId() == R.id.forgetPwd) {
                    SetPwdActivity.this.startActivity(new Intent(SetPwdActivity.this, (Class<?>) SelectResetMethodActivity.class));
                    return;
                }
                return;
            }
            SetPwdActivity setPwdActivity = SetPwdActivity.this;
            int i2 = SetPwdActivity.n;
            if (setPwdActivity.D0()) {
                SetPwdActivity.this.m = true;
                SetPwdActivity.this.g.setVisibility(0);
                SetPwdActivity setPwdActivity2 = SetPwdActivity.this;
                setPwdActivity2.g.setErrorText(setPwdActivity2.getString(R.string.xn_pwd_not_same));
                SetPwdActivity.this.findViewById(i).setEnabled(false);
                return;
            }
            SetPwdActivity setPwdActivity3 = SetPwdActivity.this;
            if (setPwdActivity3.e.g == 2) {
                xj.U(setPwdActivity3).E();
                SetPwdActivity.this.e.e();
            } else {
                xj.U(setPwdActivity3).w1();
                SetPwdActivity.this.e.d();
            }
        }
    }

    public class b implements TextWatcher {
        public boolean b;

        public b(boolean z) {
            this.b = z;
        }

        @Override
        public void afterTextChanged(Editable editable) {
            SetPwdActivity setPwdActivity = SetPwdActivity.this;
            boolean z = this.b;
            int i = SetPwdActivity.n;
            setPwdActivity.C0(z);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    @Override
    public String A() {
        return this.i.getText();
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0099  */
    /* JADX WARN: Code duplicated, block: B:36:0x009c  */
    /* JADX WARN: Code duplicated, block: B:38:0x009f  */
    /* JADX WARN: Code duplicated, block: B:39:0x00a5  */
    public final void C0(boolean z) {
        int i;
        ml7 ml7Var;
        boolean z2;
        boolean z3 = true;
        boolean z4 = false;
        if (this.i.getText().equals(this.l)) {
            i = 1;
        } else {
            String text = this.i.getText();
            i = (TextUtils.isEmpty(text) || text.length() < 4 || text.length() > 16) ? 0 : -1;
        }
        if (z) {
            this.f.setError(i);
        }
        if (!D0() || !this.m) {
            this.g.setVisibility(4);
            if (this.e.g != 2 ? i != -1 || TextUtils.isEmpty(this.j.getText()) : i != -1 || TextUtils.isEmpty(this.h.getText()) || TextUtils.isEmpty(this.j.getText())) {
            }
            ml7Var = this.e.h;
            if (ml7Var != null) {
                z2 = ml7Var.c;
            } else {
                z2 = false;
            }
            if (z2) {
                this.g.setVisibility(0);
            } else {
                z4 = z3;
            }
            findViewById(R.id.savePwdBtn).setEnabled(z4);
        }
        this.g.setVisibility(0);
        this.g.setErrorText(getString(R.string.xn_pwd_not_same));
        findViewById(R.id.savePwdBtn).setEnabled(false);
        z3 = false;
        ml7Var = this.e.h;
        if (ml7Var != null) {
            z2 = ml7Var.c;
        } else {
            z2 = false;
        }
        if (z2) {
            this.g.setVisibility(0);
        } else {
            z4 = z3;
        }
        findViewById(R.id.savePwdBtn).setEnabled(z4);
    }

    public final boolean D0() {
        String text = this.i.getText();
        String text2 = this.j.getText();
        return (TextUtils.isEmpty(text) || TextUtils.isEmpty(text2) || TextUtils.equals(text, text2)) ? false : true;
    }

    @Override
    public Context J() {
        return this;
    }

    @Override
    public void Y() {
        ao7 ao7Var;
        AccountRes accountResJ;
        if (getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("is_logged_in", false) && (accountResJ = (ao7Var = ao7.a.a).j(this)) != null) {
            accountResJ.existPassword = true;
            ao7Var.c(this, accountResJ);
        }
        setResult(-1);
        finish();
    }

    @Override
    public void g0() {
        this.f.setError(1);
        findViewById(R.id.savePwdBtn).setEnabled(false);
        this.l = this.i.getText();
    }

    @Override
    public void j() {
        this.e.d();
    }

    @Override
    public String j0() {
        return this.h.getText();
    }

    @Override
    public void n() {
        this.g.setErrorText(getString(R.string.xn_pwd_error));
        this.g.setVisibility(0);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.xn_activity_set_pwd);
        getWindow().addFlags(8192);
        nm7 nm7Var = new nm7();
        this.e = nm7Var;
        int intExtra = -1;
        try {
            intExtra = getIntent().getIntExtra("setPwdType", -1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        nm7Var.g = intExtra;
        nm7 nm7Var2 = this.e;
        nm7Var2.a = this;
        if (nm7Var2.g == 1) {
            nm7Var2.d = x0(NotificationCompat.CATEGORY_EMAIL);
            this.e.c = x0("phone");
            this.e.e = x0("ticket");
            this.e.f = x0("verification_code");
        }
        vl7.c(this, true);
        TextView textView = (TextView) findViewById(R.id.title);
        if (this.e.g == 2) {
            textView.setText(getString(R.string.xn_pwd_change));
        } else {
            textView.setText(getString(R.string.xn_set_pwd));
        }
        getActionBar().setTitle("");
        getActionBar().setDisplayHomeAsUpEnabled(true);
        FormatView formatView = (FormatView) findViewById(R.id.formatView);
        this.f = formatView;
        String string = getString(R.string.xn_pwd_format);
        StringBuilder sb = new StringBuilder();
        int i = R.string.xn_don;
        sb.append(getString(i));
        sb.append(getResources().getString(R.string.xn_pwd_format_list_1));
        formatView.setFormats(new ArrayList<>(Arrays.asList(string, sb.toString(), getString(i) + getResources().getString(R.string.xn_pwd_format_list_2), getString(i) + getResources().getString(R.string.xn_pwd_format_list_3))));
        this.g = (ErrorView) findViewById(R.id.errorView);
        this.h = (PasswordInput) findViewById(R.id.oldPwdInput);
        this.i = (PasswordInput) findViewById(R.id.newPwdInput);
        this.j = (PasswordInput) findViewById(R.id.confirmPwdInput);
        this.h.setPwdLogoVisible(8);
        this.i.setPwdLogoVisible(8);
        this.j.setPwdLogoVisible(8);
        this.i.setNeedCheck(true);
        this.j.setNeedCheck(true);
        a aVar = new a();
        Button button = (Button) findViewById(R.id.forgetPwd);
        this.k = button;
        button.setOnClickListener(aVar);
        findViewById(R.id.savePwdBtn).setOnClickListener(aVar);
        b bVar = new b(true);
        if (this.e.g == 2) {
            this.i.getEdit().setHint(R.string.xn_new_pwd);
            this.h.setVisibility(0);
            this.h.OppO0OO.addTextChangedListener(new b(false));
            this.k.setVisibility(0);
            this.e.b(getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_verify_pwd_limit", 0L));
        } else {
            this.i.getEdit().setHint(R.string.xn_set_pwd);
            this.h.setVisibility(8);
            this.k.setVisibility(4);
        }
        this.i.OppO0OO.addTextChangedListener(bVar);
        this.j.OppO0OO.addTextChangedListener(bVar);
        this.j.setFocusChange(new yk7(this));
        OverBoundNestedScrollView overBoundNestedScrollView = (OverBoundNestedScrollView) findViewById(R.id.scrollView);
        if (getIntent().getBooleanExtra("is_oobe", false)) {
            overBoundNestedScrollView.setPadding(0, c39.a(40.0f), 0, 0);
        }
        overBoundNestedScrollView.setUpOverScroll();
        int i2 = this.e.g;
        if (i2 == 1) {
            xj.U(this).x1();
        } else if (i2 == 2) {
            xj.U(this).F();
            this.e.b(getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_verify_pwd_limit", 0L));
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        nm7 nm7Var = this.e;
        if (nm7Var != null) {
            nm7Var.a = null;
        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override
    public void onResume() {
        super.onResume();
    }

    @Override
    public void onStop() {
        super.onStop();
        finish();
    }

    @Override
    public void p(boolean z, long j) {
        if (z) {
            findViewById(R.id.forgetPwd).setEnabled(false);
            findViewById(R.id.savePwdBtn).setEnabled(false);
            ErrorView errorView = this.g;
            if (errorView != null) {
                errorView.setErrorText(r0(R.string.xn_pwd_limit, fq7.b(j)));
                this.g.setVisibility(0);
                return;
            }
            return;
        }
        findViewById(R.id.forgetPwd).setEnabled(true);
        findViewById(R.id.savePwdBtn).setEnabled(true);
        ErrorView errorView2 = this.g;
        if (errorView2 != null) {
            errorView2.setTag(R.id.passwordInput, "-1");
            this.g.setErrorText("");
            this.g.setVisibility(4);
        }
        C0(false);
    }

    @Override
    public boolean w0(View view, MotionEvent motionEvent) {
        return (t0(this.h.getEdit(), motionEvent) || t0(this.i.getEdit(), motionEvent) || t0(this.j.getEdit(), motionEvent)) ? false : true;
    }
}
