package com.transsion.xuanniao.account.center.view;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.BidiFormatter;
import android.text.TextDirectionHeuristics;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.google.gson.Gson;
import com.transsion.palmsdk.PalmAuthParam;
import com.transsion.palmsdk.PalmID;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.bind.contact.view.ManageEmergencyContactActivity;
import com.transsion.xuanniao.account.bind.email.view.ManageEmailActivity;
import com.transsion.xuanniao.account.bind.phone.view.ManagePhoneActivity;
import com.transsion.xuanniao.account.bind.third.view.TripartiteListActivity;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.model.data.EmergencyListRes;
import com.transsion.xuanniao.account.pwd.view.SetPwdActivity;
import com.transsion.xuanniao.account.pwd.view.VerifyPwdActivity;
import defpackage.am7;
import defpackage.ao7;
import defpackage.ck7;
import defpackage.fq7;
import defpackage.go7;
import defpackage.kq7;
import defpackage.rm7;
import defpackage.sm7;
import defpackage.wk7;
import defpackage.xj;
import defpackage.yr7;
import java.io.Serializable;
import java.util.HashMap;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

public class SafeCenterActivity extends BaseActivity implements kq7 {
    public static final int l = 0;
    public yr7 i;
    public BidiFormatter k;
    public int e = 1002;
    public int f = 1004;
    public int g = 1006;
    public int h = 1008;
    public boolean j = true;

    public class a extends rm7 {
        public a() {
        }

        @Override
        public void b(View view) {
            if (view.getId() == R.id.phoneL) {
                SafeCenterActivity safeCenterActivity = SafeCenterActivity.this;
                int i = SafeCenterActivity.l;
                safeCenterActivity.getClass();
                xj.U(safeCenterActivity).y();
                if (!safeCenterActivity.i.e()) {
                    ck7.a(safeCenterActivity, safeCenterActivity.getString(R.string.xn_safe_set_pwd_tips), "security");
                    return;
                }
                Intent intent = new Intent(safeCenterActivity, (Class<?>) VerifyPwdActivity.class);
                intent.putExtra("source", "BP");
                intent.putExtra("havePhoneOrEmail", safeCenterActivity.i.f());
                intent.putExtra("operation", R.string.xn_bind_phone);
                intent.putExtra("accountId", safeCenterActivity.i.c());
                safeCenterActivity.startActivityForResult(intent, 1001);
                return;
            }
            if (view.getId() == R.id.emailL) {
                SafeCenterActivity safeCenterActivity2 = SafeCenterActivity.this;
                int i2 = SafeCenterActivity.l;
                safeCenterActivity2.getClass();
                xj.U(safeCenterActivity2).v();
                if (!safeCenterActivity2.i.e()) {
                    ck7.a(safeCenterActivity2, safeCenterActivity2.getString(R.string.xn_safe_set_pwd_tips), "security");
                    return;
                }
                Intent intent2 = new Intent(safeCenterActivity2, (Class<?>) VerifyPwdActivity.class);
                intent2.putExtra("source", "BE");
                intent2.putExtra("havePhoneOrEmail", safeCenterActivity2.i.f());
                intent2.putExtra("operation", R.string.xn_bind_email);
                intent2.putExtra("accountId", safeCenterActivity2.i.c());
                safeCenterActivity2.startActivityForResult(intent2, 1003);
                return;
            }
            if (view.getId() == R.id.emergencyContactL) {
                SafeCenterActivity safeCenterActivity3 = SafeCenterActivity.this;
                int i3 = SafeCenterActivity.l;
                safeCenterActivity3.getClass();
                xj.U(safeCenterActivity3).L();
                if (!safeCenterActivity3.i.e()) {
                    ck7.a(safeCenterActivity3, safeCenterActivity3.getString(R.string.xn_safe_set_pwd_tips), "security");
                    return;
                }
                Intent intent3 = new Intent(safeCenterActivity3, (Class<?>) VerifyPwdActivity.class);
                intent3.putExtra("source", BouncyCastleProvider.PROVIDER_NAME);
                intent3.putExtra("havePhoneOrEmail", safeCenterActivity3.i.f());
                intent3.putExtra("operation", R.string.xn_add_to_account);
                intent3.putExtra("accountId", safeCenterActivity3.i.c());
                safeCenterActivity3.startActivityForResult(intent3, 1005);
                return;
            }
            if (view.getId() == R.id.pwdL) {
                SafeCenterActivity safeCenterActivity4 = SafeCenterActivity.this;
                int i4 = SafeCenterActivity.l;
                safeCenterActivity4.getClass();
                xj.U(safeCenterActivity4).F0();
                if (!safeCenterActivity4.i.e()) {
                    ck7.a(safeCenterActivity4, safeCenterActivity4.getString(R.string.xn_safe_set_pwd_tips), "security");
                    return;
                }
                Intent intent4 = new Intent(safeCenterActivity4, (Class<?>) SetPwdActivity.class);
                intent4.putExtra("setPwdType", 2);
                safeCenterActivity4.startActivity(intent4);
                return;
            }
            if (view.getId() == R.id.thirdL) {
                SafeCenterActivity safeCenterActivity5 = SafeCenterActivity.this;
                int i5 = SafeCenterActivity.l;
                safeCenterActivity5.getClass();
                xj.U(safeCenterActivity5).c();
                if (!safeCenterActivity5.i.e()) {
                    ck7.a(safeCenterActivity5, safeCenterActivity5.getString(R.string.xn_safe_set_pwd_tips), "security");
                    return;
                }
                Intent intent5 = new Intent(safeCenterActivity5, (Class<?>) VerifyPwdActivity.class);
                intent5.putExtra("source", "BT");
                intent5.putExtra("havePhoneOrEmail", safeCenterActivity5.i.f());
                intent5.putExtra("operation", R.string.xn_bind_third);
                intent5.putExtra("accountId", safeCenterActivity5.i.c());
                safeCenterActivity5.startActivityForResult(intent5, 1007);
            }
        }
    }

    @Override
    public Context J() {
        return this;
    }

    @Override
    public void T(EmergencyListRes.Emergency emergency) {
        String json;
        TextView textView = (TextView) findViewById(R.id.emergencyContact);
        if (emergency == null) {
            textView.setText(getString(R.string.xn_unbind));
        } else if (!TextUtils.isEmpty(emergency.phone)) {
            textView.setText(this.k.unicodeWrap(fq7.d(emergency.phone), TextDirectionHeuristics.LTR));
            return;
        } else if (!TextUtils.isEmpty(emergency.email)) {
            textView.setText(this.k.unicodeWrap(fq7.c(emergency.email), TextDirectionHeuristics.LTR));
        }
        if (this.j) {
            xj xjVarU = xj.U(this);
            AccountRes accountRes = this.i.b;
            int i = emergency != null ? 1 : 0;
            if (accountRes != null) {
                HashMap map = new HashMap();
                Gson gson = new Gson();
                map.put("PN", Integer.valueOf(!TextUtils.isEmpty(accountRes.phone) ? 1 : 0));
                map.put("EM", Integer.valueOf(1 ^ (TextUtils.isEmpty(accountRes.email) ? 1 : 0)));
                map.put("EC", Integer.valueOf(i));
                map.put("PW", Integer.valueOf(accountRes.existPassword ? 1 : 0));
                json = gson.toJson(map);
            } else {
                json = "";
            }
            xjVarU.b(json);
            this.j = false;
        }
    }

    public void f0(AccountRes accountRes) {
        if (accountRes != null) {
            TextView textView = (TextView) findViewById(R.id.phone);
            if (TextUtils.isEmpty(accountRes.phone)) {
                textView.setText(getString(R.string.xn_unbind));
            } else {
                textView.setText(this.k.unicodeWrap(fq7.d(accountRes.phone), TextDirectionHeuristics.LTR));
            }
            TextView textView2 = (TextView) findViewById(R.id.email);
            if (TextUtils.isEmpty(accountRes.email)) {
                textView2.setText(getString(R.string.xn_unbind));
            } else {
                textView2.setText(this.k.unicodeWrap(fq7.c(accountRes.email), TextDirectionHeuristics.LTR));
            }
            ((TextView) findViewById(R.id.pwdLabel)).setText(getString(accountRes.existPassword ? R.string.xn_pwd_change : R.string.xn_set_pwd));
        }
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1001) {
            if (i2 == -1) {
                xj xjVarU = xj.U(this);
                AccountRes accountRes = this.i.b;
                xjVarU.z("SC", "phone", sm7.b(accountRes != null ? accountRes.phone : ""));
                Intent intent2 = new Intent(this, (Class<?>) ManagePhoneActivity.class);
                AccountRes accountRes2 = this.i.b;
                intent2.putExtra("phone", accountRes2 != null ? accountRes2.phone : "");
                intent2.putExtra("accountId", this.i.c());
                startActivityForResult(intent2, this.e);
                return;
            }
            return;
        }
        if (i == this.e) {
            if (i2 == -1) {
                am7.a(this, wk7.a(), null);
                this.i.b = ao7.a.a.j(this);
                f0(this.i.b);
                return;
            }
            return;
        }
        if (i == this.f) {
            if (i2 == -1) {
                am7.a(this, wk7.a(), null);
                this.i.b = ao7.a.a.j(this);
                f0(this.i.b);
                return;
            }
            return;
        }
        if (i == 1003) {
            if (i2 == -1) {
                xj xjVarU2 = xj.U(this);
                AccountRes accountRes3 = this.i.b;
                xjVarU2.z("SC", NotificationCompat.CATEGORY_EMAIL, sm7.b(accountRes3 != null ? accountRes3.email : ""));
                Intent intent3 = new Intent(this, (Class<?>) ManageEmailActivity.class);
                AccountRes accountRes4 = this.i.b;
                intent3.putExtra(NotificationCompat.CATEGORY_EMAIL, accountRes4 != null ? accountRes4.email : "");
                intent3.putExtra("accountId", this.i.c());
                startActivityForResult(intent3, this.f);
                return;
            }
            return;
        }
        if (i == 1005) {
            if (i2 == -1) {
                Intent intent4 = new Intent(this, (Class<?>) ManageEmergencyContactActivity.class);
                intent4.putExtra("emergency", this.i.d);
                intent4.putExtra("accountId", this.i.c());
                startActivityForResult(intent4, this.g);
                return;
            }
            return;
        }
        if (i == this.g) {
            if (i2 != -1 || intent == null) {
                return;
            }
            Serializable serializableExtra = intent.getSerializableExtra("emergency");
            if (serializableExtra instanceof EmergencyListRes.Emergency) {
                EmergencyListRes.Emergency emergency = (EmergencyListRes.Emergency) serializableExtra;
                this.i.d = emergency;
                T(emergency);
                return;
            }
            return;
        }
        if (i == 1007) {
            if (i2 == -1) {
                Intent intent5 = new Intent(this, (Class<?>) TripartiteListActivity.class);
                intent5.putExtra("havePhoneOrEmail", this.i.f());
                intent5.putExtra("accountId", this.i.c());
                startActivityForResult(intent5, this.h);
                return;
            }
            return;
        }
        if (i == 1009) {
            return;
        }
        if (i != 9001) {
            if (i == this.h) {
                this.i.b = ao7.a.a.j(this);
                f0(this.i.b);
                return;
            }
            return;
        }
        if (i2 == -1) {
            AccountRes accountRes5 = this.i.b;
            if (accountRes5 != null) {
                accountRes5.existPassword = true;
            }
            ao7.a.a.c(this, accountRes5);
            f0(this.i.b);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.xn_activity_safe_center);
        yr7 yr7Var = new yr7();
        this.i = yr7Var;
        yr7Var.a = this;
        yr7Var.b = ao7.a.a.j(this);
        getActionBar().setTitle(getString(R.string.xn_safe_center));
        getActionBar().setDisplayHomeAsUpEnabled(true);
        a aVar = new a();
        findViewById(R.id.phoneL).setOnClickListener(aVar);
        findViewById(R.id.emailL).setOnClickListener(aVar);
        findViewById(R.id.emergencyContactL).setOnClickListener(aVar);
        findViewById(R.id.pwdL).setOnClickListener(aVar);
        int i = R.id.thirdL;
        findViewById(i).setOnClickListener(aVar);
        go7.a.a.getClass();
        PalmAuthParam palmAuthParamG = PalmID.l(this).g();
        if (palmAuthParamG != null && !palmAuthParamG.isShowTPLogin()) {
            findViewById(R.id.loginML).setVisibility(8);
            findViewById(i).setVisibility(8);
        }
        ((OverBoundNestedScrollView) findViewById(R.id.scrollView)).setUpOverScroll();
        this.k = BidiFormatter.getInstance();
        f0(this.i.b);
        this.i.d();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        yr7 yr7Var = this.i;
        if (yr7Var != null) {
            yr7Var.a = null;
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
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (this.i != null) {
            if (bundle.containsKey("account")) {
                this.i.b = (AccountRes) bundle.getSerializable("account");
            }
            if (bundle.containsKey("emergency")) {
                this.i.d = (EmergencyListRes.Emergency) bundle.getSerializable("emergency");
            }
        }
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        AccountRes accountRes;
        super.onSaveInstanceState(bundle);
        yr7 yr7Var = this.i;
        if (yr7Var == null || (accountRes = yr7Var.b) == null) {
            return;
        }
        bundle.putSerializable("account", accountRes);
        bundle.putSerializable("emergency", this.i.d);
    }
}
