package com.transsion.xuanniao.account.verify.view;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.transsion.widgetslib.dialog.d;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.comm.widget.CaptchaCodeInput;
import com.transsion.xuanniao.account.comm.widget.ErrorView;
import com.transsion.xuanniao.account.comm.widget.PhoneInput;
import com.transsion.xuanniao.account.comm.widget.SmsCodeInput;
import com.transsion.xuanniao.account.model.data.CountryData;
import com.transsion.xuanniao.account.model.data.SmsCodeEvent;
import defpackage.ao7;
import defpackage.cq7;
import defpackage.fq7;
import defpackage.ip7;
import defpackage.iq7;
import defpackage.ml7;
import defpackage.mq7;
import defpackage.on7;
import defpackage.oq7;
import defpackage.rm7;
import defpackage.up7;
import defpackage.wm7;
import defpackage.xj;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

public class VerifyPhoneActivity extends BaseActivity implements wm7 {
    public int e = 1001;
    public PhoneInput f;
    public CaptchaCodeInput g;
    public SmsCodeInput h;
    public up7 i;
    public ErrorView j;

    public class a extends rm7 {
        public a() {
        }

        @Override
        public void b(View view) {
            if (view.getId() == R.id.notExistSuffix) {
                VerifyPhoneActivity.this.setResult(1001);
                VerifyPhoneActivity.this.finish();
                return;
            }
            if (view.getId() == R.id.next) {
                VerifyPhoneActivity verifyPhoneActivity = VerifyPhoneActivity.this;
                verifyPhoneActivity.getClass();
                xj.U(verifyPhoneActivity).s1();
                VerifyPhoneActivity verifyPhoneActivity2 = VerifyPhoneActivity.this;
                verifyPhoneActivity2.getClass();
                if (verifyPhoneActivity2.getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("is_logged_in", false)) {
                    ao7 ao7Var = ao7.a.a;
                    VerifyPhoneActivity verifyPhoneActivity3 = VerifyPhoneActivity.this;
                    verifyPhoneActivity3.getClass();
                    if (!TextUtils.equals(VerifyPhoneActivity.this.i.g() + "-" + VerifyPhoneActivity.this.k(), ao7Var.j(verifyPhoneActivity3).phone)) {
                        VerifyPhoneActivity.B0(VerifyPhoneActivity.this);
                        return;
                    }
                }
                VerifyPhoneActivity.this.i.h();
            }
        }
    }

    public class b implements TextWatcher {
        public b() {
        }

        /* JADX WARN: Code duplicated, block: B:15:0x003f  */
        @Override
        public void afterTextChanged(Editable editable) {
            boolean z;
            VerifyPhoneActivity verifyPhoneActivity = VerifyPhoneActivity.this;
            if (VerifyPhoneActivity.C0(verifyPhoneActivity, R.id.captchaInput, verifyPhoneActivity.f())) {
                z = true;
            } else {
                VerifyPhoneActivity verifyPhoneActivity2 = VerifyPhoneActivity.this;
                if (VerifyPhoneActivity.C0(verifyPhoneActivity2, R.id.phoneInput, verifyPhoneActivity2.k())) {
                    z = true;
                } else {
                    VerifyPhoneActivity verifyPhoneActivity3 = VerifyPhoneActivity.this;
                    if (VerifyPhoneActivity.C0(verifyPhoneActivity3, R.id.smsCodeInput, verifyPhoneActivity3.h.getText())) {
                        z = true;
                    } else {
                        ml7 ml7Var = VerifyPhoneActivity.this.i.g;
                        if (ml7Var != null ? ml7Var.c : false) {
                            z = true;
                        } else {
                            z = false;
                        }
                    }
                }
            }
            VerifyPhoneActivity.this.j.setVisibility(z ? 0 : 8);
            VerifyPhoneActivity.D0(VerifyPhoneActivity.this);
            VerifyPhoneActivity verifyPhoneActivity4 = VerifyPhoneActivity.this;
            verifyPhoneActivity4.findViewById(R.id.next).setEnabled(verifyPhoneActivity4.k().matches("^[0-9]{6,15}$") && verifyPhoneActivity4.f().length() >= 4 && verifyPhoneActivity4.h.getText().length() >= 4);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public static void B0(VerifyPhoneActivity verifyPhoneActivity) {
        verifyPhoneActivity.j.setErrorText(verifyPhoneActivity.getString(R.string.xn_phone_not_exist));
        verifyPhoneActivity.j.setVisibility(0);
        verifyPhoneActivity.j.setTag(R.id.accountInput, verifyPhoneActivity.k());
    }

    public static boolean C0(VerifyPhoneActivity verifyPhoneActivity, int i, String str) {
        return str.equals(verifyPhoneActivity.j.getTag(i));
    }

    public static void D0(VerifyPhoneActivity verifyPhoneActivity) {
        SmsCodeInput smsCodeInput = verifyPhoneActivity.h;
        boolean z = false;
        if (smsCodeInput.OppO0pO) {
            smsCodeInput.setGetCodeEnable(false);
            return;
        }
        if (mq7.a(verifyPhoneActivity.k()) && verifyPhoneActivity.f().length() >= 4) {
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
        this.h.setGetCodeEnable(false);
        this.h.OppO00p();
        this.h.OppO0OO();
        SharedPreferences sharedPreferences = getApplicationContext().getSharedPreferences("AccountPrefs", 0);
        long jCurrentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putLong("key_verify_phone", jCurrentTimeMillis);
        editorEdit.apply();
    }

    @Override
    public void b() {
        new d.a(this, R.style.dialog_soft_input).B(getString(R.string.xn_frequent_operation)).k(getString(R.string.xn_limit_month)).w(getString(R.string.xn_confirm), null).F();
    }

    @Override
    public void c(boolean z, long j) {
        if (z) {
            this.j.setErrorText(r0(R.string.xn_frequent_count, fq7.b(j)));
            this.j.setVisibility(0);
        } else {
            this.j.setErrorText("");
            this.j.setVisibility(8);
        }
    }

    @Override
    public void d() {
        this.j.setErrorText(getString(R.string.xn_code_error));
        this.j.setVisibility(0);
        this.j.setTag(R.id.smsCodeInput, f());
    }

    @Override
    public void e() {
        new d.a(this, R.style.dialog_soft_input).B(getString(R.string.xn_frequent_operation)).k(getString(R.string.xn_limit_day)).w(getString(R.string.xn_confirm), null).F();
    }

    @Override
    public String f() {
        return this.g.getText().trim();
    }

    @Override
    public void g() {
        this.g.setImageResource(R.drawable.xn_reduction);
    }

    @Override
    public void h() {
        this.j.setErrorText(getString(R.string.xn_captcha_error));
        this.j.setVisibility(0);
        this.j.setTag(R.id.captchaInput, f());
    }

    @Override
    public void i(Bitmap bitmap) {
        this.g.setImageBitmap(bitmap);
    }

    @Override
    public void j() {
        Intent intent = new Intent();
        intent.putExtra("phone", this.i.g() + "-" + k());
        intent.putExtra("verification_code", this.h.getText());
        intent.putExtra("ticket", this.i.d);
        setResult(-1, intent);
        finish();
    }

    @Override
    public String k() {
        return this.f.getText().trim();
    }

    @Override
    public void l() {
        this.f.setCc(this.i.f());
    }

    @Override
    public String o() {
        return this.h.getText();
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == this.e && i2 == -1) {
            this.i.e = intent.getStringExtra("key_cc");
            this.f.setCc(this.i.f());
            this.i.f = intent.getStringExtra("key_name_en");
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.xn_activity_verify_phone);
        xj.U(this).t1();
        up7 up7Var = new up7();
        this.i = up7Var;
        up7Var.a = this;
        this.j = (ErrorView) findViewById(R.id.errorView);
        up7 up7Var2 = this.i;
        new on7().a(up7Var2.e(), new ip7(up7Var2, up7Var2.e(), CountryData.class));
        getActionBar().setTitle(getString(R.string.xn_forget_pwd_title));
        getActionBar().setDisplayHomeAsUpEnabled(true);
        a aVar = new a();
        findViewById(R.id.notExistSuffix).setOnClickListener(aVar);
        findViewById(R.id.next).setOnClickListener(aVar);
        ((OverBoundNestedScrollView) findViewById(R.id.scrollView)).setUpOverScroll();
        this.f = (PhoneInput) findViewById(R.id.phoneInput);
        this.g = (CaptchaCodeInput) findViewById(R.id.captchaCodeInput);
        this.h = (SmsCodeInput) findViewById(R.id.smsCodeInput);
        this.f.setInputListener(new cq7(this));
        this.g.setCaptchaListener(new iq7(this));
        this.h.setSmsCodeListener(new oq7(this));
        b bVar = new b();
        this.g.OppO00p.addTextChangedListener(bVar);
        this.f.setCc(this.i.f());
        this.f.OppO00p.addTextChangedListener(bVar);
        this.h.OppO0OO.addTextChangedListener(bVar);
        long j = getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_captcha_limit_reset_pwd", 0L);
        if (j > 0) {
            this.i.b(j);
        }
        this.h.OppO00p(getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_verify_phone", 0L));
        this.i.c();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        up7 up7Var = this.i;
        if (up7Var != null) {
            ml7 ml7Var = up7Var.g;
            if (ml7Var != null) {
                ml7Var.a();
            }
            this.i.a = null;
        }
        this.h.OppO00p();
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
        this.f.setText(bundle.getString("phone"));
        this.g.setText(bundle.getString("imageCaptcha"));
        this.h.setText(bundle.getString("verification"));
    }

    @Override
    public void onResume() {
        super.onResume();
        View viewFindViewById = findViewById(R.id.placeholder);
        ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
        layoutParams.height = z0();
        viewFindViewById.setLayoutParams(layoutParams);
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("phone", k());
        bundle.putString("imageCaptcha", f());
        bundle.putString("verification", this.h.getText());
    }

    @Subscribe
    public void onSmsCodeReceived(SmsCodeEvent smsCodeEvent) {
        Log.d("com.palm.id.log", "onSmsCodeReceived VerifyPhoneActivity");
        SmsCodeInput smsCodeInput = this.h;
        if (smsCodeInput == null || !smsCodeInput.OppO0pO) {
            return;
        }
        smsCodeInput.setText(smsCodeEvent.code);
        xj.U(this).q("VerifyPhoneActivity");
    }

    @Override
    public void onStart() {
        super.onStart();
        EventBus.getDefault().register(this);
    }

    @Override
    public void onStop() {
        super.onStop();
        EventBus.getDefault().unregister(this);
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
        return (t0(this.f.getEdit(), motionEvent) || t0(this.g.getEdit(), motionEvent) || t0(this.h.getEdit(), motionEvent)) ? false : true;
    }

    @Override
    public void z() {
        this.j.setErrorText(getString(R.string.xn_not_exist));
        this.j.setVisibility(0);
        this.j.setTag(R.id.accountInput, k());
    }
}
