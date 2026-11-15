package com.transsion.xuanniao.account.bind.phone.view;

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
import android.widget.TextView;
import com.transsion.widgetslib.dialog.d;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.comm.widget.CaptchaCodeInput;
import com.transsion.xuanniao.account.comm.widget.ErrorView;
import com.transsion.xuanniao.account.comm.widget.PhoneInput;
import com.transsion.xuanniao.account.comm.widget.SmsCodeInput;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.model.data.CountryData;
import com.transsion.xuanniao.account.model.data.SmsCodeEvent;
import defpackage.ao7;
import defpackage.dn7;
import defpackage.fq7;
import defpackage.gl7;
import defpackage.gn7;
import defpackage.hl7;
import defpackage.lm7;
import defpackage.ml7;
import defpackage.mq7;
import defpackage.on7;
import defpackage.pl7;
import defpackage.rm7;
import defpackage.xj;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

public class BindingPhoneActivity extends BaseActivity implements gn7 {
    public static final int k = 0;
    public int e = 1001;
    public pl7 f;
    public PhoneInput g;
    public CaptchaCodeInput h;
    public SmsCodeInput i;
    public ErrorView j;

    public class a extends rm7 {
        public a() {
        }

        @Override
        public void b(View view) {
            if (view.getId() == R.id.bindBtn) {
                BindingPhoneActivity.this.f.g();
            }
        }
    }

    public class b implements TextWatcher {
        public b() {
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0053  */
        @Override
        public void afterTextChanged(Editable editable) {
            boolean z;
            BindingPhoneActivity bindingPhoneActivity = BindingPhoneActivity.this;
            if (bindingPhoneActivity.h.getText().equals(bindingPhoneActivity.j.getTag(R.id.captchaInput))) {
                z = true;
            } else {
                BindingPhoneActivity bindingPhoneActivity2 = BindingPhoneActivity.this;
                if (bindingPhoneActivity2.k().equals(bindingPhoneActivity2.j.getTag(R.id.phoneInput))) {
                    z = true;
                } else {
                    BindingPhoneActivity bindingPhoneActivity3 = BindingPhoneActivity.this;
                    if (bindingPhoneActivity3.i.getText().equals(bindingPhoneActivity3.j.getTag(R.id.smsCodeInput))) {
                        z = true;
                    } else {
                        ml7 ml7Var = BindingPhoneActivity.this.f.h;
                        if (ml7Var != null ? ml7Var.c : false) {
                            z = true;
                        } else {
                            z = false;
                        }
                    }
                }
            }
            BindingPhoneActivity.this.j.setVisibility(z ? 0 : 8);
            BindingPhoneActivity.B0(BindingPhoneActivity.this);
            BindingPhoneActivity bindingPhoneActivity4 = BindingPhoneActivity.this;
            bindingPhoneActivity4.findViewById(R.id.bindBtn).setEnabled(mq7.a(bindingPhoneActivity4.g.getText()) && bindingPhoneActivity4.i.getText().trim().length() >= 4);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public static void B0(BindingPhoneActivity bindingPhoneActivity) {
        SmsCodeInput smsCodeInput = bindingPhoneActivity.i;
        boolean z = false;
        if (!smsCodeInput.OppO0pO) {
            ml7 ml7Var = bindingPhoneActivity.f.h;
            if (!(ml7Var != null ? ml7Var.c : false)) {
                if (mq7.a(bindingPhoneActivity.g.getText()) && bindingPhoneActivity.h.getText().length() >= 4) {
                    z = true;
                }
                smsCodeInput.setGetCodeEnable(z);
                return;
            }
        }
        smsCodeInput.setGetCodeEnable(false);
    }

    @Override
    public Context J() {
        return this;
    }

    @Override
    public void a() {
        y0(getString(R.string.xn_sent));
        this.i.OppO00p();
        this.i.OppO0OO();
        this.i.setGetCodeEnable(false);
        SharedPreferences sharedPreferences = getApplicationContext().getSharedPreferences("AccountPrefs", 0);
        long jCurrentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putLong("key_binding_phone_count", jCurrentTimeMillis);
        editorEdit.apply();
    }

    @Override
    public void b() {
        new d.a(this, R.style.dialog_soft_input).B(getString(R.string.xn_limit_month)).k(getString(R.string.xn_frequent_operation_note)).w(getString(R.string.xn_confirm), null).F();
    }

    @Override
    public void c(boolean z, long j) {
        if (!z) {
            this.j.setVisibility(8);
        } else {
            this.j.setErrorText(r0(R.string.xn_frequent_count, fq7.b(j)));
            this.j.setVisibility(0);
        }
    }

    @Override
    public void d() {
        this.j.setErrorText(getString(R.string.xn_code_error));
        this.j.setVisibility(0);
        this.j.setTag(R.id.smsCodeInput, this.i.getText());
    }

    @Override
    public void e() {
        new d.a(this, R.style.dialog_soft_input).B(getString(R.string.xn_limit_day)).k(getString(R.string.xn_frequent_operation_note)).w(getString(R.string.xn_confirm), null).F();
    }

    @Override
    public String f() {
        return this.h.getText();
    }

    @Override
    public void g() {
        this.h.setImageResource(R.drawable.xn_reduction);
    }

    @Override
    public void h() {
        this.j.setErrorText(getString(R.string.xn_captcha_error));
        this.j.setVisibility(0);
        this.j.setTag(R.id.captchaInput, this.h.getText());
    }

    @Override
    public void i(Bitmap bitmap) {
        this.h.setImageBitmap(bitmap);
    }

    @Override
    public String k() {
        return this.f.f() + "-" + this.g.getText();
    }

    @Override
    public void l() {
        this.g.setCc(this.f.h());
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == this.e && i2 == -1 && intent != null) {
            this.f.d = intent.getStringExtra("key_cc");
            this.g.setCc(this.f.h());
            this.f.e = intent.getStringExtra("key_name_en");
        }
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        AccountRes accountResJ = ao7.a.a.j(this);
        if (accountResJ != null) {
            xj.U(this).r("phone", 0, !TextUtils.isEmpty(accountResJ.email) ? 1 : 0);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        AccountRes accountResJ;
        super.onCreate(bundle);
        setContentView(R.layout.xn_activity_binding_phone);
        pl7 pl7Var = new pl7();
        this.f = pl7Var;
        pl7Var.a = this;
        String stringExtra = getIntent().getStringExtra("accountId");
        if (TextUtils.isEmpty(stringExtra) && (accountResJ = ao7.a.a.j(this)) != null) {
            stringExtra = accountResJ.username;
        }
        pl7 pl7Var2 = this.f;
        pl7Var2.f = stringExtra;
        pl7Var2.c();
        pl7 pl7Var3 = this.f;
        new on7().a(pl7Var3.e(), new hl7(pl7Var3, pl7Var3.e(), CountryData.class));
        getActionBar().setTitle(getString(R.string.xn_bind_phone));
        getActionBar().setDisplayHomeAsUpEnabled(true);
        ((TextView) findViewById(R.id.tips)).setText(r0(R.string.xn_binding_for, getString(R.string.xn_phone_middle), this.f.f));
        this.g = (PhoneInput) findViewById(R.id.phoneInput);
        this.h = (CaptchaCodeInput) findViewById(R.id.captchaCodeInput);
        this.i = (SmsCodeInput) findViewById(R.id.smsCodeInput);
        this.j = (ErrorView) findViewById(R.id.errorView);
        findViewById(R.id.bindBtn).setOnClickListener(new a());
        b bVar = new b();
        this.g.OppO00p.addTextChangedListener(bVar);
        this.g.setCc(this.f.h());
        this.h.OppO00p.addTextChangedListener(bVar);
        this.i.OppO0OO.addTextChangedListener(bVar);
        this.g.setInputListener(new gl7(this));
        this.h.setCaptchaListener(new lm7(this));
        this.i.setSmsCodeListener(new dn7(this));
        long j = getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_captcha_limit_bind", 0L);
        if (j > 0) {
            this.f.b(j);
        }
        this.i.OppO00p(getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_binding_phone_count", 0L));
        ((OverBoundNestedScrollView) findViewById(R.id.scrollView)).setUpOverScroll();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        pl7 pl7Var = this.f;
        if (pl7Var != null) {
            pl7Var.a = null;
            ml7 ml7Var = pl7Var.h;
            if (ml7Var != null) {
                ml7Var.a();
            }
        }
        this.i.OppO00p();
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
        if (bundle.containsKey("phone")) {
            this.g.setText(bundle.getString("phone"));
        }
        if (bundle.containsKey("smsCode")) {
            this.i.setText(bundle.getString("smsCode"));
        }
        if (bundle.containsKey("countryCode")) {
            this.f.d = bundle.getString("countryCode");
            this.g.setCc(this.f.h());
        }
        if (bundle.containsKey("captchaCode")) {
            this.h.setText(bundle.getString("captchaCode"));
        }
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
        bundle.putString("phone", this.g.getText());
        bundle.putString("smsCode", this.i.getText());
        bundle.putString("countryCode", this.f.f());
        bundle.putString("captchaCode", this.h.getText());
    }

    @Subscribe
    public void onSmsCodeReceived(SmsCodeEvent smsCodeEvent) {
        Log.d("com.palm.id.log", "onSmsCodeReceived BindingPhoneActivity");
        SmsCodeInput smsCodeInput = this.i;
        if (smsCodeInput == null || !smsCodeInput.OppO0pO) {
            return;
        }
        smsCodeInput.setText(smsCodeEvent.code);
        xj.U(this).q("BindingPhoneActivity");
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
    public void onSuccess() {
        xj.U(this).r("phone", 1, 1);
        ao7 ao7Var = ao7.a.a;
        AccountRes accountResJ = ao7Var.j(this);
        if (accountResJ != null) {
            accountResJ.phone = k();
            ao7Var.c(this, accountResJ);
        }
        Intent intent = new Intent();
        intent.putExtra("phone", k());
        setResult(-1, intent);
        finish();
    }

    @Override
    public void r() {
        new d.a(this, R.style.dialog_soft_input).B(getString(R.string.xn_cannot_bind)).k(r0(R.string.xn_cannot_bind_note, getString(R.string.xn_phone_middle))).w(getString(R.string.xn_got_it), null).F();
    }

    @Override
    public String s() {
        return this.i.getText();
    }

    @Override
    public boolean w0(View view, MotionEvent motionEvent) {
        return (t0(this.g.getEdit(), motionEvent) || t0(this.i.getEdit(), motionEvent) || t0(this.h.getEdit(), motionEvent)) ? false : true;
    }
}
