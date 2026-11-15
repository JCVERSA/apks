package com.transsion.xuanniao.account.bind.email.view;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.transsion.widgetslib.dialog.d;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.comm.widget.CaptchaCodeInput;
import com.transsion.xuanniao.account.comm.widget.EmailInput;
import com.transsion.xuanniao.account.comm.widget.ErrorView;
import com.transsion.xuanniao.account.comm.widget.SmsCodeInput;
import com.transsion.xuanniao.account.model.data.AccountRes;
import defpackage.ao7;
import defpackage.bk7;
import defpackage.cn7;
import defpackage.fl7;
import defpackage.fq7;
import defpackage.jm7;
import defpackage.km7;
import defpackage.ml7;
import defpackage.rm7;
import defpackage.xj;

public class BindingEmailActivity extends BaseActivity implements jm7 {
    public EmailInput e;
    public CaptchaCodeInput f;
    public SmsCodeInput g;
    public ErrorView h;
    public bk7 i;
    public boolean j = false;

    public class a extends rm7 {
        public a() {
        }

        @Override
        public void b(View view) {
            if (view.getId() == R.id.bindBtn) {
                BindingEmailActivity.this.i.f();
            }
            BindingEmailActivity.this.e.OppO00p();
        }
    }

    public class b implements TextWatcher {
        public b() {
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0043  */
        @Override
        public void afterTextChanged(Editable editable) {
            boolean z;
            BindingEmailActivity bindingEmailActivity = BindingEmailActivity.this;
            if (BindingEmailActivity.C0(bindingEmailActivity, R.id.captchaInput, bindingEmailActivity.f.getText())) {
                z = true;
            } else {
                BindingEmailActivity bindingEmailActivity2 = BindingEmailActivity.this;
                if (BindingEmailActivity.C0(bindingEmailActivity2, R.id.phoneInput, bindingEmailActivity2.e.getText())) {
                    z = true;
                } else {
                    BindingEmailActivity bindingEmailActivity3 = BindingEmailActivity.this;
                    if (BindingEmailActivity.C0(bindingEmailActivity3, R.id.smsCodeInput, bindingEmailActivity3.g.getText())) {
                        z = true;
                    } else {
                        ml7 ml7Var = BindingEmailActivity.this.i.f;
                        if (ml7Var != null ? ml7Var.c : false) {
                            z = true;
                        } else {
                            z = false;
                        }
                    }
                }
            }
            BindingEmailActivity.this.h.setVisibility(z ? 0 : 8);
            BindingEmailActivity.B0(BindingEmailActivity.this);
            BindingEmailActivity bindingEmailActivity4 = BindingEmailActivity.this;
            bindingEmailActivity4.findViewById(R.id.bindBtn).setEnabled(bindingEmailActivity4.e.getText().matches("^([A-Za-z0-9_\\-.])+@([A-Za-z0-9_\\-])+\\.(([A-Za-z])+\\.)?([A-Za-z]{2,6})$") && bindingEmailActivity4.g.getText().trim().length() >= 4);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public static void B0(BindingEmailActivity bindingEmailActivity) {
        SmsCodeInput smsCodeInput = bindingEmailActivity.g;
        boolean z = false;
        if (smsCodeInput.OppO0pO) {
            smsCodeInput.setGetCodeEnable(false);
            return;
        }
        if (bindingEmailActivity.e.getText().matches("^([A-Za-z0-9_\\-.])+@([A-Za-z0-9_\\-])+\\.(([A-Za-z])+\\.)?([A-Za-z]{2,6})$") && bindingEmailActivity.f.getText().length() >= 4) {
            z = true;
        }
        smsCodeInput.setGetCodeEnable(z);
    }

    public static boolean C0(BindingEmailActivity bindingEmailActivity, int i, String str) {
        return str.equals(bindingEmailActivity.h.getTag(i));
    }

    @Override
    public Context J() {
        return this;
    }

    @Override
    public void a() {
        SharedPreferences sharedPreferences = getApplicationContext().getSharedPreferences("AccountPrefs", 0);
        long jCurrentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putLong("key_binding_email_count", jCurrentTimeMillis);
        editorEdit.apply();
        y0(getString(R.string.xn_sent));
        this.g.OppO00p();
        this.g.OppO0OO();
        this.g.setGetCodeEnable(false);
    }

    @Override
    public void b() {
        new d.a(this, R.style.dialog_soft_input).B(getString(R.string.xn_frequent_operation)).k(getString(R.string.xn_limit_month)).w(getString(R.string.xn_confirm), null).F();
    }

    @Override
    public void c(boolean z, long j) {
        if (!z) {
            this.h.setVisibility(8);
        } else {
            this.h.setErrorText(r0(R.string.xn_frequent_count, fq7.b(j)));
            this.h.setVisibility(0);
        }
    }

    @Override
    public void d() {
        this.h.setErrorText(getString(R.string.xn_code_error));
        this.h.setVisibility(0);
        this.h.setTag(R.id.smsCodeInput, this.g.getText());
    }

    @Override
    public void e() {
        new d.a(this, R.style.dialog_soft_input).B(getString(R.string.xn_frequent_operation)).k(getString(R.string.xn_limit_day)).w(getString(R.string.xn_confirm), null).F();
    }

    @Override
    public String f() {
        return this.f.getText();
    }

    @Override
    public void g() {
        this.f.setImageResource(R.drawable.xn_reduction);
    }

    @Override
    public void h() {
        this.h.setErrorText(getString(R.string.xn_captcha_error));
        this.h.setVisibility(0);
        this.h.setTag(R.id.captchaInput, this.f.getText());
    }

    @Override
    public void i(Bitmap bitmap) {
        this.f.setImageBitmap(bitmap);
    }

    @Override
    public String m() {
        return this.e.getText();
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        AccountRes accountResJ = ao7.a.a.j(this);
        if (accountResJ != null) {
            xj.U(this).r(NotificationCompat.CATEGORY_EMAIL, 0, !TextUtils.isEmpty(accountResJ.email) ? 1 : 0);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        AccountRes accountResJ;
        super.onCreate(bundle);
        setContentView(R.layout.xn_activity_binding_email);
        bk7 bk7Var = new bk7();
        this.i = bk7Var;
        bk7Var.a = this;
        String stringExtra = getIntent().getStringExtra("accountId");
        if (TextUtils.isEmpty(stringExtra) && (accountResJ = ao7.a.a.j(this)) != null) {
            stringExtra = accountResJ.username;
        }
        this.i.d = stringExtra;
        getActionBar().setTitle(getString(R.string.xn_bind_email));
        getActionBar().setDisplayHomeAsUpEnabled(true);
        ((TextView) findViewById(R.id.tips)).setText(r0(R.string.xn_binding_for, getString(R.string.xn_email_middle), this.i.d));
        this.e = (EmailInput) findViewById(R.id.emailInput);
        this.f = (CaptchaCodeInput) findViewById(R.id.captchaCodeInput);
        this.g = (SmsCodeInput) findViewById(R.id.smsCodeInput);
        this.h = (ErrorView) findViewById(R.id.errorView);
        findViewById(R.id.bindBtn).setOnClickListener(new a());
        b bVar = new b();
        this.e.OppO00p.addTextChangedListener(bVar);
        this.f.OppO00p.addTextChangedListener(bVar);
        this.g.OppO0OO.addTextChangedListener(bVar);
        this.e.setAssociationListener(new fl7(this));
        this.f.setCaptchaListener(new km7(this));
        this.g.setSmsCodeListener(new cn7(this));
        findViewById(R.id.bindEmailL).setOnClickListener(new a());
        long j = getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_captcha_limit_bind", 0L);
        if (j > 0) {
            this.i.b(j);
        }
        this.g.OppO00p(getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_binding_email_count", 0L));
        ((OverBoundNestedScrollView) findViewById(R.id.scrollView)).setUpOverScroll();
        this.i.c();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        bk7 bk7Var = this.i;
        if (bk7Var != null) {
            ml7 ml7Var = bk7Var.f;
            if (ml7Var != null) {
                ml7Var.a();
            }
            this.i.a = null;
        }
        this.g.OppO00p();
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (bundle.containsKey(NotificationCompat.CATEGORY_EMAIL)) {
            this.e.setText(bundle.getString(NotificationCompat.CATEGORY_EMAIL));
        }
        if (bundle.containsKey("smsCode")) {
            this.g.setText(bundle.getString("smsCode"));
        }
        if (bundle.containsKey("captchaCode")) {
            this.f.setText(bundle.getString("captchaCode"));
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        View viewFindViewById = findViewById(R.id.placeholder);
        ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
        layoutParams.height = z0();
        viewFindViewById.setLayoutParams(layoutParams);
        EmailInput emailInput = this.e;
        if (emailInput == null || TextUtils.isEmpty(emailInput.getText()) || !this.e.getEdit().hasFocus() || !this.j) {
            return;
        }
        this.j = false;
        this.e.OppO0Op();
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(NotificationCompat.CATEGORY_EMAIL, this.e.getText());
        bundle.putString("smsCode", this.g.getText());
        bundle.putString("captchaCode", this.f.getText());
    }

    @Override
    public void onStop() {
        super.onStop();
        EmailInput emailInput = this.e;
        if (emailInput == null || !emailInput.OppO0OO()) {
            return;
        }
        this.j = true;
        this.e.OppO00p();
    }

    @Override
    public void onSuccess() {
        xj.U(this).r(NotificationCompat.CATEGORY_EMAIL, 1, 1);
        ao7 ao7Var = ao7.a.a;
        AccountRes accountResJ = ao7Var.j(this);
        accountResJ.email = this.e.getText();
        ao7Var.c(this, accountResJ);
        Intent intent = new Intent();
        intent.putExtra(NotificationCompat.CATEGORY_EMAIL, this.e.getText());
        setResult(-1, intent);
        finish();
    }

    @Override
    public void r() {
        new d.a(this, R.style.dialog_soft_input).B(getString(R.string.xn_cannot_bind)).k(r0(R.string.xn_cannot_bind_note, getString(R.string.xn_email_middle))).w(getString(R.string.xn_got_it), null).F();
    }

    @Override
    public String s() {
        return this.g.getText();
    }

    @Override
    public boolean w0(View view, MotionEvent motionEvent) {
        return (t0(this.e.getEdit(), motionEvent) || t0(this.f.getEdit(), motionEvent) || t0(this.g.getEdit(), motionEvent)) ? false : true;
    }
}
