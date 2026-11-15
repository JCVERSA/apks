package com.transsion.xuanniao.account.pwd.view;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.comm.widget.ErrorView;
import com.transsion.xuanniao.account.comm.widget.PasswordInput;
import com.transsion.xuanniao.account.verify.view.VerifyAccountActivity;
import defpackage.bm7;
import defpackage.c39;
import defpackage.eo7;
import defpackage.fq7;
import defpackage.ml7;
import defpackage.rm7;
import defpackage.vl7;
import defpackage.xj;

public class VerifyPwdActivity extends BaseActivity implements bm7 {
    public static final int i = 0;
    public int e = 1001;
    public eo7 f;
    public PasswordInput g;
    public ErrorView h;

    public class a extends rm7 {
        public a() {
        }

        @Override
        public void b(View view) {
            if (view.getId() == R.id.verifyCode) {
                Intent intent = new Intent(VerifyPwdActivity.this, (Class<?>) VerifyAccountActivity.class);
                intent.putExtra("source", "CD");
                intent.putExtra("operation", VerifyPwdActivity.this.getIntent().getIntExtra("operation", -1));
                intent.putExtra("accountId", VerifyPwdActivity.this.f.d);
                VerifyPwdActivity verifyPwdActivity = VerifyPwdActivity.this;
                verifyPwdActivity.startActivityForResult(intent, verifyPwdActivity.e);
                return;
            }
            if (view.getId() == R.id.forgetPwd) {
                VerifyPwdActivity.this.startActivity(new Intent(VerifyPwdActivity.this, (Class<?>) SelectResetMethodActivity.class));
                return;
            }
            if (view.getId() == R.id.next) {
                VerifyPwdActivity verifyPwdActivity2 = VerifyPwdActivity.this;
                int i = VerifyPwdActivity.i;
                if (verifyPwdActivity2.getString(R.string.xn_logout_account).equals(verifyPwdActivity2.f.c)) {
                    VerifyPwdActivity verifyPwdActivity3 = VerifyPwdActivity.this;
                    verifyPwdActivity3.getClass();
                    xj.U(verifyPwdActivity3).r0();
                }
                if ("CD".equals(VerifyPwdActivity.this.getIntent().getStringExtra("source"))) {
                    VerifyPwdActivity verifyPwdActivity4 = VerifyPwdActivity.this;
                    verifyPwdActivity4.getClass();
                    xj.U(verifyPwdActivity4).O1();
                }
                VerifyPwdActivity.this.f.d();
            }
        }
    }

    public class b implements TextWatcher {
        public b() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            VerifyPwdActivity verifyPwdActivity = VerifyPwdActivity.this;
            int i = VerifyPwdActivity.i;
            verifyPwdActivity.C0();
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public String B0() {
        return getIntent().getStringExtra("accountId");
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0025  */
    /* JADX WARN: Code duplicated, block: B:24:0x0050  */
    public final void C0() {
        boolean z;
        boolean z2;
        if (this.g.getText().equals(this.h.getTag(R.id.passwordInput))) {
            z = true;
        } else {
            ml7 ml7Var = this.f.e;
            if (ml7Var != null ? ml7Var.c : false) {
                z = true;
            } else {
                z = false;
            }
        }
        this.h.setVisibility(z ? 0 : 8);
        View viewFindViewById = findViewById(R.id.next);
        if (!TextUtils.isEmpty(this.g.getText())) {
            ml7 ml7Var2 = this.f.e;
            z2 = ml7Var2 != null ? ml7Var2.c : false ? false : true;
        }
        viewFindViewById.setEnabled(z2);
    }

    public void D0() {
        setContentView(R.layout.xn_activity_verify_pwd);
        this.f.c = E0();
        this.f.d = B0();
        getActionBar().setTitle(getString(R.string.xn_verify_pwd));
        getActionBar().setDisplayHomeAsUpEnabled(true);
        PasswordInput passwordInput = (PasswordInput) findViewById(R.id.passwordInput);
        this.g = passwordInput;
        passwordInput.OppO0OO.addTextChangedListener(new b());
        ((TextView) findViewById(R.id.note)).setText(r0(R.string.xn_verify_pwd_note, this.f.d));
        TextView textView = (TextView) findViewById(R.id.forgetPwd);
        textView.setOnClickListener(new a());
        if (getIntent().getBooleanExtra("havePhoneOrEmail", false)) {
            int i2 = R.id.verifyCode;
            findViewById(i2).setVisibility(0);
            findViewById(i2).setOnClickListener(new a());
        } else {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) textView.getLayoutParams();
            layoutParams.topMargin = c39.a(48.0f);
            layoutParams.addRule(3, R.id.errorView);
            textView.setLayoutParams(layoutParams);
        }
        findViewById(R.id.next).setOnClickListener(new a());
        this.h = (ErrorView) findViewById(R.id.errorView);
        this.f.b(getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_verify_pwd_limit", 0L));
        ((OverBoundNestedScrollView) findViewById(R.id.scrollView)).setUpOverScroll();
    }

    public String E0() {
        int intExtra = getIntent().getIntExtra("operation", -1);
        return intExtra == -1 ? "" : getString(intExtra);
    }

    @Override
    public Context J() {
        return this;
    }

    @Override
    public String d0() {
        return this.g.getText();
    }

    @Override
    public void n() {
        this.h.setErrorText(getString(R.string.xn_pwd_error));
        this.h.setVisibility(0);
        this.h.setTag(R.id.passwordInput, this.g.getText());
    }

    @Override
    public void onActivityResult(int i2, int i3, Intent intent) {
        if (i2 == this.e && i3 == -1) {
            onSuccess();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        eo7 eo7Var = new eo7();
        this.f = eo7Var;
        eo7Var.a = this;
        xj.U(this).a0(getIntent().getStringExtra("source"));
        vl7.c(this, true);
        D0();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        ml7 ml7Var = this.f.e;
        if (ml7Var != null) {
            ml7Var.a();
        }
        this.f.a = null;
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
        View viewFindViewById = findViewById(R.id.placeholder);
        if (viewFindViewById != null) {
            ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
            layoutParams.height = z0();
            viewFindViewById.setLayoutParams(layoutParams);
        }
    }

    public void onSuccess() {
        setResult(-1);
        finish();
    }

    @Override
    public void p(boolean z, long j) {
        if (z) {
            ErrorView errorView = this.h;
            if (errorView != null) {
                errorView.setErrorText(r0(R.string.xn_pwd_limit, fq7.b(j)));
                this.h.setVisibility(0);
                return;
            }
            return;
        }
        ErrorView errorView2 = this.h;
        if (errorView2 != null) {
            errorView2.setTag(R.id.passwordInput, "-1");
            this.h.setErrorText("");
            this.h.setVisibility(8);
        }
        C0();
    }
}
