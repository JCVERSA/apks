package com.transsion.xuanniao.account.verify.view;

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
import androidx.core.app.NotificationCompat;
import com.transsion.widgetslib.dialog.d;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.comm.widget.CaptchaCodeInput;
import com.transsion.xuanniao.account.comm.widget.EmailInput;
import com.transsion.xuanniao.account.comm.widget.ErrorView;
import com.transsion.xuanniao.account.comm.widget.SmsCodeInput;
import defpackage.ao7;
import defpackage.dm7;
import defpackage.fo7;
import defpackage.fq7;
import defpackage.jp7;
import defpackage.ml7;
import defpackage.rm7;
import defpackage.xj;
import defpackage.zo7;

public class VerifyEmailActivity extends BaseActivity implements dm7 {
    public EmailInput e;
    public CaptchaCodeInput f;
    public SmsCodeInput g;
    public fo7 h;
    public ErrorView i;
    public boolean j = false;

    public class a extends rm7 {
        public a() {
        }

        @Override
        public void b(View view) {
            if (view.getId() == R.id.next) {
                VerifyEmailActivity verifyEmailActivity = VerifyEmailActivity.this;
                verifyEmailActivity.getClass();
                xj.U(verifyEmailActivity).o1();
                VerifyEmailActivity verifyEmailActivity2 = VerifyEmailActivity.this;
                verifyEmailActivity2.getClass();
                if (verifyEmailActivity2.getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("is_logged_in", false)) {
                    ao7 ao7Var = ao7.a.a;
                    VerifyEmailActivity verifyEmailActivity3 = VerifyEmailActivity.this;
                    verifyEmailActivity3.getClass();
                    if (!TextUtils.equals(VerifyEmailActivity.this.m(), ao7Var.j(verifyEmailActivity3).email)) {
                        VerifyEmailActivity.B0(VerifyEmailActivity.this);
                        return;
                    }
                }
                VerifyEmailActivity.this.h.f();
            } else if (view.getId() == R.id.notExistSuffix) {
                VerifyEmailActivity.this.setResult(1001);
                VerifyEmailActivity.this.finish();
            }
            VerifyEmailActivity.this.e.OppO00p();
        }
    }

    public class b implements TextWatcher {
        public b() {
        }

        /* JADX WARN: Code duplicated, block: B:15:0x003d  */
        @Override
        public void afterTextChanged(Editable editable) {
            boolean z;
            VerifyEmailActivity verifyEmailActivity = VerifyEmailActivity.this;
            if (VerifyEmailActivity.C0(verifyEmailActivity, R.id.captchaCodeInput, verifyEmailActivity.f())) {
                z = true;
            } else {
                VerifyEmailActivity verifyEmailActivity2 = VerifyEmailActivity.this;
                if (VerifyEmailActivity.C0(verifyEmailActivity2, R.id.emailInput, verifyEmailActivity2.m())) {
                    z = true;
                } else {
                    VerifyEmailActivity verifyEmailActivity3 = VerifyEmailActivity.this;
                    if (VerifyEmailActivity.C0(verifyEmailActivity3, R.id.smsCodeInput, verifyEmailActivity3.o())) {
                        z = true;
                    } else {
                        ml7 ml7Var = VerifyEmailActivity.this.h.e;
                        if (ml7Var != null ? ml7Var.c : false) {
                            z = true;
                        } else {
                            z = false;
                        }
                    }
                }
            }
            VerifyEmailActivity.this.i.setVisibility(z ? 0 : 8);
            VerifyEmailActivity.D0(VerifyEmailActivity.this);
            VerifyEmailActivity verifyEmailActivity4 = VerifyEmailActivity.this;
            verifyEmailActivity4.findViewById(R.id.next).setEnabled(verifyEmailActivity4.m().matches("^([A-Za-z0-9_\\-.])+@([A-Za-z0-9_\\-])+\\.(([A-Za-z])+\\.)?([A-Za-z]{2,6})$") && verifyEmailActivity4.f().length() >= 4 && verifyEmailActivity4.o().length() >= 4);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public static void B0(VerifyEmailActivity verifyEmailActivity) {
        verifyEmailActivity.i.setErrorText(verifyEmailActivity.getString(R.string.xn_email_not_exist));
        verifyEmailActivity.i.setVisibility(0);
        verifyEmailActivity.i.setTag(R.id.accountInput, verifyEmailActivity.m());
    }

    public static boolean C0(VerifyEmailActivity verifyEmailActivity, int i, String str) {
        return str.equals(verifyEmailActivity.i.getTag(i));
    }

    public static void D0(VerifyEmailActivity verifyEmailActivity) {
        SmsCodeInput smsCodeInput = verifyEmailActivity.g;
        boolean z = false;
        if (smsCodeInput.OppO0pO) {
            smsCodeInput.setGetCodeEnable(false);
            return;
        }
        if (verifyEmailActivity.m().matches("^([A-Za-z0-9_\\-.])+@([A-Za-z0-9_\\-])+\\.(([A-Za-z])+\\.)?([A-Za-z]{2,6})$") && verifyEmailActivity.f().length() >= 4) {
            z = true;
        }
        smsCodeInput.setGetCodeEnable(z);
    }

    @Override
    public Context J() {
        return this;
    }

    @Override
    public void a() {
        y0(getString(R.string.xn_sent));
        this.g.OppO00p();
        this.g.OppO0OO();
        this.g.setGetCodeEnable(false);
        SharedPreferences sharedPreferences = getApplicationContext().getSharedPreferences("AccountPrefs", 0);
        long jCurrentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putLong("key_verify_email", jCurrentTimeMillis);
        editorEdit.apply();
    }

    @Override
    public void b() {
        new d.a(this, R.style.dialog_soft_input).B(getString(R.string.xn_frequent_operation)).k(getString(R.string.xn_limit_month)).w(getString(R.string.xn_confirm), null).F();
    }

    @Override
    public void c(boolean z, long j) {
        if (z) {
            this.i.setErrorText(r0(R.string.xn_frequent_count, fq7.b(j)));
            this.i.setVisibility(0);
        } else {
            this.i.setErrorText("");
            this.i.setVisibility(8);
        }
    }

    @Override
    public void d() {
        this.i.setErrorText(getString(R.string.xn_code_error));
        this.i.setVisibility(0);
        this.i.setTag(R.id.smsCodeInput, f());
    }

    @Override
    public void e() {
        new d.a(this, R.style.dialog_soft_input).B(getString(R.string.xn_frequent_operation)).k(getString(R.string.xn_limit_day)).w(getString(R.string.xn_confirm), null).F();
    }

    @Override
    public String f() {
        return this.f.getText().trim();
    }

    @Override
    public void g() {
        this.f.setImageResource(R.drawable.xn_reduction);
    }

    @Override
    public void h() {
        this.i.setErrorText(getString(R.string.xn_captcha_error));
        this.i.setVisibility(0);
        this.i.setTag(R.id.captchaInput, f());
    }

    @Override
    public void i(Bitmap bitmap) {
        this.f.setImageBitmap(bitmap);
    }

    @Override
    public void j() {
        Intent intent = new Intent();
        intent.putExtra(NotificationCompat.CATEGORY_EMAIL, m());
        intent.putExtra("verification_code", o());
        intent.putExtra("ticket", this.h.d);
        setResult(-1, intent);
        finish();
    }

    @Override
    public String m() {
        return this.e.getText().trim();
    }

    @Override
    public String o() {
        return this.g.getText().trim();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.xn_activity_verify_email);
        xj.U(this).p1();
        fo7 fo7Var = new fo7();
        this.h = fo7Var;
        fo7Var.a = this;
        getActionBar().setTitle(getString(R.string.xn_forget_pwd_title));
        getActionBar().setDisplayHomeAsUpEnabled(true);
        this.e = (EmailInput) findViewById(R.id.emailInput);
        this.f = (CaptchaCodeInput) findViewById(R.id.captchaCodeInput);
        this.g = (SmsCodeInput) findViewById(R.id.smsCodeInput);
        this.i = (ErrorView) findViewById(R.id.errorView);
        this.f.setCaptchaListener(new zo7(this));
        this.g.setSmsCodeListener(new jp7(this));
        b bVar = new b();
        this.f.OppO00p.addTextChangedListener(bVar);
        this.e.OppO00p.addTextChangedListener(bVar);
        this.g.OppO0OO.addTextChangedListener(bVar);
        long j = getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_captcha_limit_reset_pwd", 0L);
        if (j > 0) {
            this.h.b(j);
        }
        this.g.OppO00p(getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_verify_email", 0L));
        a aVar = new a();
        findViewById(R.id.next).setOnClickListener(aVar);
        findViewById(R.id.notExistSuffix).setOnClickListener(aVar);
        findViewById(R.id.container).setOnClickListener(aVar);
        ((OverBoundNestedScrollView) findViewById(R.id.scrollView)).setUpOverScroll();
        this.h.c();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        fo7 fo7Var = this.h;
        if (fo7Var != null) {
            fo7Var.a = null;
            ml7 ml7Var = fo7Var.e;
            if (ml7Var != null) {
                ml7Var.a();
            }
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
        this.e.setText(bundle.getString(NotificationCompat.CATEGORY_EMAIL));
        this.f.setText(bundle.getString("imageCaptcha"));
        this.g.setText(bundle.getString("verification"));
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
        bundle.putString(NotificationCompat.CATEGORY_EMAIL, m());
        bundle.putString("imageCaptcha", f());
        bundle.putString("verification", o());
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
    public void q(boolean z) {
        if (z) {
            findViewById(R.id.notExistPrefix).setVisibility(0);
            findViewById(R.id.notExistSuffix).setVisibility(0);
        } else {
            findViewById(R.id.notExistPrefix).setVisibility(4);
            findViewById(R.id.notExistSuffix).setVisibility(4);
        }
    }

    @Override
    public boolean w0(View view, MotionEvent motionEvent) {
        return (t0(this.e.getEdit(), motionEvent) || t0(this.f.getEdit(), motionEvent) || t0(this.g.getEdit(), motionEvent)) ? false : true;
    }

    @Override
    public void z() {
        this.i.setErrorText(getString(R.string.xn_not_exist));
        this.i.setVisibility(0);
        this.i.setTag(R.id.accountInput, m());
    }
}
