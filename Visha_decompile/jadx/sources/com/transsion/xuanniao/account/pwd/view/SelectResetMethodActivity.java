package com.transsion.xuanniao.account.pwd.view;

import android.app.ActionBar;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.help.view.PrivacyCenterActivity;
import com.transsion.xuanniao.account.verify.view.VerifyEmailActivity;
import com.transsion.xuanniao.account.verify.view.VerifyPhoneActivity;
import defpackage.rm7;
import defpackage.xj;

public class SelectResetMethodActivity extends BaseActivity {
    public int e = 2001;
    public int f = 2002;
    public int g = 2003;
    public String h;
    public String i;

    public class a extends rm7 {
        public a() {
        }

        @Override
        public void b(View view) {
            if (view.getId() == R.id.phoneButton) {
                xj.U(SelectResetMethodActivity.this).r1();
                Intent intent = new Intent(SelectResetMethodActivity.this, (Class<?>) VerifyPhoneActivity.class);
                SelectResetMethodActivity selectResetMethodActivity = SelectResetMethodActivity.this;
                selectResetMethodActivity.startActivityForResult(intent, selectResetMethodActivity.e);
                return;
            }
            if (view.getId() == R.id.emailButton) {
                xj.U(SelectResetMethodActivity.this).n1();
                Intent intent2 = new Intent(SelectResetMethodActivity.this, (Class<?>) VerifyEmailActivity.class);
                SelectResetMethodActivity selectResetMethodActivity2 = SelectResetMethodActivity.this;
                selectResetMethodActivity2.startActivityForResult(intent2, selectResetMethodActivity2.f);
            }
        }
    }

    public void C0(View view) {
        startActivity(new Intent(this, (Class<?>) PrivacyCenterActivity.class));
    }

    public final void D0() {
        ActionBar actionBar = getActionBar();
        actionBar.setDisplayOptions(16, 26);
        actionBar.setDisplayHomeAsUpEnabled(true);
        actionBar.setCustomView(R.layout.xn_action_bar);
        ((TextView) actionBar.getCustomView().findViewById(R.id.title)).setText(getString(R.string.xn_forget_pwd_title));
        actionBar.getCustomView().findViewById(R.id.questionImage).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.C0(view);
            }
        });
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != this.f && i != this.e) {
            if (i == this.g && i2 == -1) {
                Intent intent2 = new Intent();
                if (!TextUtils.isEmpty(this.h)) {
                    if (this.h.contains("-")) {
                        String[] strArrSplit = this.h.split("-");
                        if (strArrSplit.length > 1) {
                            this.h = strArrSplit[1];
                        }
                    }
                    intent2.putExtra("phone", this.h);
                }
                if (!TextUtils.isEmpty(this.i)) {
                    intent2.putExtra(NotificationCompat.CATEGORY_EMAIL, this.i);
                }
                setResult(i2, intent2);
                finish();
                return;
            }
            return;
        }
        if (i2 != -1 || intent == null) {
            if (i2 == 1001) {
                finish();
                return;
            }
            return;
        }
        this.h = intent.getStringExtra("phone");
        this.i = intent.getStringExtra(NotificationCompat.CATEGORY_EMAIL);
        Intent intent3 = new Intent(this, (Class<?>) SetPwdActivity.class);
        intent3.putExtra("setPwdType", 1);
        intent3.putExtra(NotificationCompat.CATEGORY_EMAIL, this.i);
        intent3.putExtra("phone", this.h);
        intent3.putExtra("ticket", intent.getStringExtra("ticket"));
        intent3.putExtra("verification_code", intent.getStringExtra("verification_code"));
        startActivityForResult(intent3, this.g);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.xn_activity_select_reset_method);
        xj.U(this).R();
        D0();
        a aVar = new a();
        findViewById(R.id.phoneButton).setOnClickListener(aVar);
        findViewById(R.id.emailButton).setOnClickListener(aVar);
        ((OverBoundNestedScrollView) findViewById(R.id.scrollView)).setUpOverScroll();
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
