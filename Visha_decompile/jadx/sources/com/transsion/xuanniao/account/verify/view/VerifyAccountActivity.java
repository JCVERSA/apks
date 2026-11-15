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
import android.widget.PopupWindow;
import android.widget.TextView;
import com.transsion.widgetslib.dialog.d;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.comm.widget.AccountInput;
import com.transsion.xuanniao.account.comm.widget.CaptchaCodeInput;
import com.transsion.xuanniao.account.comm.widget.ErrorView;
import com.transsion.xuanniao.account.comm.widget.SmsCodeInput;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.model.data.CountryData;
import com.transsion.xuanniao.account.model.data.SmsCodeEvent;
import defpackage.al7;
import defpackage.ao7;
import defpackage.bl7;
import defpackage.em7;
import defpackage.fq7;
import defpackage.io7;
import defpackage.ml7;
import defpackage.mq7;
import defpackage.on7;
import defpackage.rm7;
import defpackage.rn7;
import defpackage.xj;
import defpackage.ym7;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

public class VerifyAccountActivity extends BaseActivity implements al7 {
    public AccountInput f;
    public CaptchaCodeInput g;
    public SmsCodeInput h;
    public io7 i;
    public ErrorView j;
    public int e = 1001;
    public boolean k = false;

    public class a extends rm7 {
        public a() {
        }

        @Override
        public void a(View view) {
            if (view.getId() == R.id.verifyPwd) {
                VerifyAccountActivity.this.finish();
            }
        }

        @Override
        public void b(View view) {
            if (view.getId() == R.id.next) {
                if ("CD".equals(VerifyAccountActivity.this.getIntent().getStringExtra("source"))) {
                    VerifyAccountActivity verifyAccountActivity = VerifyAccountActivity.this;
                    verifyAccountActivity.getClass();
                    xj.U(verifyAccountActivity).O1();
                }
                if (VerifyAccountActivity.B0(VerifyAccountActivity.this)) {
                    VerifyAccountActivity.this.i.h();
                }
            }
        }
    }

    public class b implements TextWatcher {
        public b() {
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0043  */
        @Override
        public void afterTextChanged(Editable editable) {
            boolean z;
            VerifyAccountActivity verifyAccountActivity = VerifyAccountActivity.this;
            if (VerifyAccountActivity.C0(verifyAccountActivity, R.id.captchaInput, verifyAccountActivity.g.getText())) {
                z = true;
            } else {
                VerifyAccountActivity verifyAccountActivity2 = VerifyAccountActivity.this;
                if (VerifyAccountActivity.C0(verifyAccountActivity2, R.id.accountInput, verifyAccountActivity2.f.getText())) {
                    z = true;
                } else {
                    VerifyAccountActivity verifyAccountActivity3 = VerifyAccountActivity.this;
                    if (VerifyAccountActivity.C0(verifyAccountActivity3, R.id.smsCodeInput, verifyAccountActivity3.h.getText())) {
                        z = true;
                    } else {
                        ml7 ml7Var = VerifyAccountActivity.this.i.f;
                        if (ml7Var != null ? ml7Var.c : false) {
                            z = true;
                        } else {
                            z = false;
                        }
                    }
                }
            }
            VerifyAccountActivity.this.j.setVisibility(z ? 0 : 8);
            VerifyAccountActivity.D0(VerifyAccountActivity.this);
            VerifyAccountActivity verifyAccountActivity4 = VerifyAccountActivity.this;
            verifyAccountActivity4.findViewById(R.id.next).setEnabled(verifyAccountActivity4.f.getText().trim().length() > 0 && verifyAccountActivity4.h.getText().trim().length() >= 4);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public static boolean B0(VerifyAccountActivity verifyAccountActivity) {
        verifyAccountActivity.getClass();
        AccountRes accountResJ = ao7.a.a.j(verifyAccountActivity);
        if (accountResJ != null) {
            if (verifyAccountActivity.f.getType() == 3) {
                if (!TextUtils.equals(accountResJ.phone, verifyAccountActivity.i.g() + "-" + verifyAccountActivity.f.getText())) {
                    verifyAccountActivity.b0();
                    return false;
                }
            } else if (!TextUtils.equals(accountResJ.email, verifyAccountActivity.f.getText())) {
                verifyAccountActivity.b0();
                return false;
            }
        }
        return true;
    }

    public static boolean C0(VerifyAccountActivity verifyAccountActivity, int i, String str) {
        return str.equals(verifyAccountActivity.j.getTag(i));
    }

    public static void D0(VerifyAccountActivity verifyAccountActivity) {
        SmsCodeInput smsCodeInput = verifyAccountActivity.h;
        boolean z = false;
        if (smsCodeInput.OppO0pO) {
            smsCodeInput.setGetCodeEnable(false);
            return;
        }
        boolean zA = verifyAccountActivity.f.getType() == 3 ? mq7.a(verifyAccountActivity.f.getText()) : verifyAccountActivity.f.getText().matches("^([A-Za-z0-9_\\-.])+@([A-Za-z0-9_\\-])+\\.(([A-Za-z])+\\.)?([A-Za-z]{2,6})$");
        SmsCodeInput smsCodeInput2 = verifyAccountActivity.h;
        if (zA && verifyAccountActivity.g.getText().length() >= 4) {
            z = true;
        }
        smsCodeInput2.setGetCodeEnable(z);
    }

    @Override
    public Context J() {
        return this;
    }

    @Override
    public void a() {
        y0(getString(R.string.xn_sent));
        this.h.OppO00p();
        this.h.OppO0OO();
        this.h.setGetCodeEnable(false);
        SharedPreferences sharedPreferences = getApplicationContext().getSharedPreferences("AccountPrefs", 0);
        long jCurrentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putLong("key_verify_account", jCurrentTimeMillis);
        editorEdit.apply();
    }

    @Override
    public void b() {
        new d.a(this, R.style.dialog_soft_input).B(getString(R.string.xn_frequent_operation)).k(getString(R.string.xn_limit_month)).w(getString(R.string.xn_confirm), null).F();
    }

    @Override
    public void b0() {
        this.j.setErrorText(getString(R.string.xn_not_exist));
        this.j.setVisibility(0);
        this.j.setTag(R.id.accountInput, this.f.getText());
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
        this.j.setTag(R.id.smsCodeInput, this.h.getText());
    }

    @Override
    public void e() {
        new d.a(this, R.style.dialog_soft_input).B(getString(R.string.xn_frequent_operation)).k(getString(R.string.xn_limit_day)).w(getString(R.string.xn_confirm), null).F();
    }

    @Override
    public String f() {
        return this.g.getText();
    }

    @Override
    public void g() {
        this.g.setImageResource(R.drawable.xn_reduction);
    }

    @Override
    public void h() {
        this.j.setErrorText(getString(R.string.xn_captcha_error));
        this.j.setVisibility(0);
        this.j.setTag(R.id.captchaInput, this.g.getText());
    }

    @Override
    public void i(Bitmap bitmap) {
        this.g.setImageBitmap(bitmap);
    }

    @Override
    public void j() {
        setResult(-1);
        finish();
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
        if (i == this.e && i2 == -1 && intent != null) {
            this.i.c = intent.getStringExtra("key_cc");
            this.f.setCc(this.i.f());
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.xn_activity_verify_account);
        io7 io7Var = new io7();
        this.i = io7Var;
        io7Var.a = this;
        io7Var.c();
        io7 io7Var2 = this.i;
        new on7().a(io7Var2.e(), new rn7(io7Var2, io7Var2.e(), CountryData.class));
        getActionBar().setTitle(getString(R.string.xn_verify_account));
        getActionBar().setDisplayHomeAsUpEnabled(true);
        TextView textView = (TextView) findViewById(R.id.note);
        int intExtra = getIntent().getIntExtra("operation", -1);
        if (intExtra != -1) {
            getString(intExtra);
        }
        textView.setText(r0(R.string.xn_verify_account_note, getIntent().getStringExtra("accountId")));
        this.f = (AccountInput) findViewById(R.id.accountInput);
        this.g = (CaptchaCodeInput) findViewById(R.id.captchaCodeInput);
        this.h = (SmsCodeInput) findViewById(R.id.smsCodeInput);
        this.j = (ErrorView) findViewById(R.id.errorView);
        this.f.setCc(this.i.f());
        this.f.setInputListener(new bl7(this));
        this.g.setCaptchaListener(new em7(this));
        this.h.setSmsCodeListener(new ym7(this));
        b bVar = new b();
        this.f.OppO00p.addTextChangedListener(bVar);
        this.g.OppO00p.addTextChangedListener(bVar);
        this.h.OppO0OO.addTextChangedListener(bVar);
        findViewById(R.id.next).setOnClickListener(new a());
        int i = R.id.verifyPwd;
        findViewById(i).setOnClickListener(new a());
        long j = getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_captcha_limit_verify", 0L);
        if (j > 0) {
            this.i.b(j);
        }
        findViewById(i).setVisibility(getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("is_logged_in", false) ? ao7.a.a.j(this).existPassword : false ? 0 : 4);
        this.h.OppO00p(getApplicationContext().getSharedPreferences("AccountPrefs", 0).getLong("key_verify_account", 0L));
        ((OverBoundNestedScrollView) findViewById(R.id.scrollView)).setUpOverScroll();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        io7 io7Var = this.i;
        if (io7Var != null) {
            ml7 ml7Var = io7Var.f;
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
        this.f.setText(bundle.getString("account"));
        this.i.c = bundle.getString("countryCode");
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
        AccountInput accountInput = this.f;
        if (accountInput != null && accountInput.getEdit().hasFocus() && this.f.getType() == 2 && this.k) {
            this.k = false;
            this.f.OppO0OO();
        }
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("account", this.f.getText());
        bundle.putString("countryCode", this.i.g());
        bundle.putString("imageCaptcha", this.g.getText());
        bundle.putString("verification", this.h.getText());
    }

    @Subscribe
    public void onSmsCodeReceived(SmsCodeEvent smsCodeEvent) {
        Log.d("com.palm.id.log", "onSmsCodeReceived VerifyAccountActivity");
        SmsCodeInput smsCodeInput = this.h;
        if (smsCodeInput == null || !smsCodeInput.OppO0pO) {
            return;
        }
        smsCodeInput.setText(smsCodeEvent.code);
        xj.U(this).q("VerifyAccountActivity");
    }

    @Override
    public void onStart() {
        super.onStart();
        EventBus.getDefault().register(this);
    }

    @Override
    public void onStop() {
        super.onStop();
        AccountInput accountInput = this.f;
        if (accountInput != null) {
            PopupWindow popupWindow = accountInput.OppO0pO;
            if (popupWindow != null ? popupWindow.isShowing() : false) {
                this.k = true;
                this.f.OppO00p();
            }
        }
        EventBus.getDefault().unregister(this);
    }

    @Override
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        AccountInput accountInput = this.f;
        if (accountInput != null) {
            accountInput.setCanShowPopView(z);
        }
    }

    @Override
    public int t() {
        return this.f.getType();
    }

    @Override
    public String w() {
        return this.f.getText();
    }

    @Override
    public boolean w0(View view, MotionEvent motionEvent) {
        return (t0(this.f.getEdit(), motionEvent) || t0(this.g.getEdit(), motionEvent) || t0(this.h.getEdit(), motionEvent)) ? false : true;
    }
}
