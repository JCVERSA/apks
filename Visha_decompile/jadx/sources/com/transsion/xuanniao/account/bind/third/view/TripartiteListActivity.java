package com.transsion.xuanniao.account.bind.third.view;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.transsion.audiotagger.tag.id3.ID3v22Frames;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import com.transsion.widgetslib.dialog.d;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.model.data.LoginThird;
import com.transsion.xuanniao.account.pwd.view.VerifyPwdActivity;
import defpackage.ao7;
import defpackage.ek7;
import defpackage.en7;
import defpackage.fk7;
import defpackage.go7;
import defpackage.jl7;
import defpackage.jr7;
import defpackage.pa1;
import defpackage.ql7;
import defpackage.rm7;
import defpackage.so7;
import defpackage.vl7;
import defpackage.xj;
import defpackage.xn7;
import defpackage.yib;

public class TripartiteListActivity extends BaseActivity implements ek7 {
    public jl7 e;
    public String f;
    public int g;

    public class a extends rm7 {
        public a() {
        }

        @Override
        public void b(View view) {
            if (view.getId() == R.id.facebookL) {
                if (!TripartiteListActivity.this.e.f()) {
                    TripartiteListActivity tripartiteListActivity = TripartiteListActivity.this;
                    tripartiteListActivity.getClass();
                    xj.U(tripartiteListActivity).s(0);
                    TripartiteListActivity.C0(TripartiteListActivity.this, 1);
                    return;
                }
                TripartiteListActivity tripartiteListActivity2 = TripartiteListActivity.this;
                tripartiteListActivity2.getClass();
                xj.U(tripartiteListActivity2).s(1);
                TripartiteListActivity tripartiteListActivity3 = TripartiteListActivity.this;
                TripartiteListActivity.D0(tripartiteListActivity3, 1, tripartiteListActivity3.getString(R.string.xn_facebook_title));
                return;
            }
            if (view.getId() == R.id.googleL) {
                if (!TripartiteListActivity.this.e.h()) {
                    TripartiteListActivity tripartiteListActivity4 = TripartiteListActivity.this;
                    tripartiteListActivity4.getClass();
                    xj.U(tripartiteListActivity4).t(0);
                    TripartiteListActivity.C0(TripartiteListActivity.this, 2);
                    return;
                }
                TripartiteListActivity tripartiteListActivity5 = TripartiteListActivity.this;
                tripartiteListActivity5.getClass();
                xj.U(tripartiteListActivity5).t(1);
                TripartiteListActivity tripartiteListActivity6 = TripartiteListActivity.this;
                TripartiteListActivity.D0(tripartiteListActivity6, 2, tripartiteListActivity6.getString(R.string.xn_google_title));
                return;
            }
            if (view.getId() == R.id.vkL) {
                if (!TripartiteListActivity.this.e.i()) {
                    TripartiteListActivity tripartiteListActivity7 = TripartiteListActivity.this;
                    tripartiteListActivity7.getClass();
                    xj.U(tripartiteListActivity7).B(0);
                    TripartiteListActivity.C0(TripartiteListActivity.this, 8);
                    return;
                }
                TripartiteListActivity tripartiteListActivity8 = TripartiteListActivity.this;
                tripartiteListActivity8.getClass();
                xj.U(tripartiteListActivity8).B(1);
                TripartiteListActivity tripartiteListActivity9 = TripartiteListActivity.this;
                TripartiteListActivity.D0(tripartiteListActivity9, 8, tripartiteListActivity9.getString(R.string.xn_vk_app_title));
                return;
            }
            if (view.getId() == R.id.lineL) {
                if (!TripartiteListActivity.this.e.g()) {
                    TripartiteListActivity tripartiteListActivity10 = TripartiteListActivity.this;
                    tripartiteListActivity10.getClass();
                    xj.U(tripartiteListActivity10).u(0);
                    TripartiteListActivity.C0(TripartiteListActivity.this, 7);
                    return;
                }
                TripartiteListActivity tripartiteListActivity11 = TripartiteListActivity.this;
                tripartiteListActivity11.getClass();
                xj.U(tripartiteListActivity11).u(1);
                TripartiteListActivity tripartiteListActivity12 = TripartiteListActivity.this;
                TripartiteListActivity.D0(tripartiteListActivity12, 7, tripartiteListActivity12.getString(R.string.xn_line_app_title));
            }
        }
    }

    public static void C0(TripartiteListActivity tripartiteListActivity, int i) {
        int i2 = R.string.xn_facebook_title;
        String string = tripartiteListActivity.getString(i2);
        if (i == 1) {
            string = tripartiteListActivity.getString(i2);
        } else if (i == 2) {
            string = tripartiteListActivity.getString(R.string.xn_google_title);
        } else if (i == 7) {
            string = tripartiteListActivity.getString(R.string.xn_line_app_title);
        } else if (i == 8) {
            string = tripartiteListActivity.getString(R.string.xn_vk_app_title);
        }
        new d.a(tripartiteListActivity, R.style.dialog_soft_input).B(tripartiteListActivity.getString(R.string.xn_binding_authorization)).k(jr7.d(tripartiteListActivity.r0(R.string.xn_binding_third_tips, string, string))).w(tripartiteListActivity.getString(R.string.xn_open), new ql7(tripartiteListActivity, i)).n(tripartiteListActivity.getString(R.string.xn_cancel), null).F();
    }

    public static void D0(TripartiteListActivity tripartiteListActivity, int i, String str) {
        if (tripartiteListActivity.e.b) {
            new d.a(tripartiteListActivity, R.style.dialog_soft_input).B(tripartiteListActivity.r0(R.string.xn_unbound_title, str)).k(tripartiteListActivity.r0(R.string.xn_unbound_msg, str)).w(tripartiteListActivity.getString(R.string.xn_unbound_go), new fk7(tripartiteListActivity, i)).n(tripartiteListActivity.getString(R.string.xn_unbound_not_now), null).F();
            return;
        }
        xj.U(tripartiteListActivity).x(ID3v22Frames.FRAME_ID_V2_UNSYNC_LYRICS);
        d dVarF = new d.a(tripartiteListActivity, R.style.dialog_soft_input).B(tripartiteListActivity.getString(R.string.xn_safe_note)).D(R.layout.xn_unbundling_dialog).F();
        dVarF.findViewById(R.id.bindingPhone).setOnClickListener(new en7(tripartiteListActivity, dVarF));
        dVarF.findViewById(R.id.bindingEmail).setOnClickListener(new xn7(tripartiteListActivity, dVarF));
        dVarF.findViewById(R.id.unboundNow).setOnClickListener(new so7(tripartiteListActivity, dVarF));
    }

    public final void B0(Intent intent) {
        Uri data = intent.getData();
        if ("android.intent.action.VIEW".equals(intent.getAction()) && data != null && TextUtils.equals("palmid", data.getScheme())) {
            if (this.f == null) {
                if (TextUtils.isEmpty(this.e.f)) {
                    finish();
                    return;
                }
                Intent intent2 = new Intent(this, (Class<?>) VerifyPwdActivity.class);
                intent2.putExtra("source", "BT");
                intent2.putExtra("havePhoneOrEmail", this.e.b);
                intent2.putExtra("operation", R.string.xn_bind_third);
                intent2.putExtra("accountId", this.e.f);
                startActivityForResult(intent2, 1007);
                return;
            }
            try {
                if (Integer.parseInt(data.getQueryParameter("status")) == 1) {
                    this.e.e();
                } else {
                    String queryParameter = data.getQueryParameter("errCode");
                    String queryParameter2 = data.getQueryParameter("errMessage");
                    Log.d("com.palm.id.log", "handleThirdH5Bind errCode = " + queryParameter);
                    if (TextUtils.isEmpty(queryParameter2)) {
                        y0(getString(R.string.xn_net_unavailable));
                    } else if ("400010".equals(queryParameter)) {
                        String str = "";
                        int i = this.g;
                        if (i == 1) {
                            str = "Facebook";
                        } else if (i == 2) {
                            str = "Google";
                        } else if (i == 7) {
                            str = "LINE";
                        } else if (i == 8) {
                            str = VkConstant.VK;
                        }
                        E0(str);
                    } else {
                        y0(queryParameter2);
                    }
                }
            } catch (Exception e) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e));
                y0(getString(R.string.xn_net_unavailable));
            }
        }
    }

    @Override
    public void D(int i, String str) {
        this.g = i;
        this.f = str;
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            if (vl7.d(this, "com.android.chrome")) {
                intent.setPackage("com.android.chrome");
            }
            intent.setData(Uri.parse(yib.b() + "/auth-page/authBind?actionType=1&authType=" + i + "&authToken=" + str + "&clientId=" + go7.a.a.a + "&pkgName=" + getPackageName()));
            startActivity(intent);
        } catch (Exception e) {
            y0(getString(R.string.xn_browser_unavailable));
            Log.d("com.palm.id.log", Log.getStackTraceString(e));
        }
    }

    public void E0(String str) {
        new d.a(this, R.style.dialog_soft_input).B(getString(R.string.xn_cannot_bind)).k(jr7.d(r0(R.string.xn_bound_note, str))).w(getString(R.string.xn_got_it), null).F();
    }

    @Override
    public Context J() {
        return this;
    }

    @Override
    public void U() {
        TextView textView = (TextView) findViewById(R.id.facebookStatus);
        if (this.e.f()) {
            textView.setText(r0(R.string.xn_bound_to, this.e.f));
        } else {
            textView.setText(getString(R.string.xn_unbind));
        }
        TextView textView2 = (TextView) findViewById(R.id.googleStatus);
        if (this.e.h()) {
            textView2.setText(r0(R.string.xn_bound_to, this.e.f));
        } else {
            textView2.setText(getString(R.string.xn_unbind));
        }
        TextView textView3 = (TextView) findViewById(R.id.vkStatus);
        if (this.e.i()) {
            textView3.setText(r0(R.string.xn_bound_to, this.e.f));
        } else {
            textView3.setText(getString(R.string.xn_unbind));
        }
        TextView textView4 = (TextView) findViewById(R.id.lineStatus);
        if (this.e.g()) {
            textView4.setText(r0(R.string.xn_bound_to, this.e.f));
        } else {
            textView4.setText(getString(R.string.xn_unbind));
        }
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 9001) {
            return;
        }
        if (i == 1001) {
            if (i2 == -1) {
                jl7 jl7Var = this.e;
                jl7Var.b = true;
                jl7Var.g = true;
                return;
            }
            return;
        }
        if (i != 1002) {
            if (i != 1007 || i2 == -1) {
                return;
            }
            finish();
            return;
        }
        if (i2 == -1) {
            jl7 jl7Var2 = this.e;
            jl7Var2.b = true;
            jl7Var2.g = true;
        }
    }

    @Override
    public void onBackPressed() {
        if (this.e.g) {
            setResult(-1);
        }
        super.onBackPressed();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.xn_activity_tripartite_list);
        jl7 jl7Var = new jl7();
        this.e = jl7Var;
        jl7Var.a = this;
        Intent intent = getIntent();
        if (intent.hasExtra("accountId")) {
            this.e.f = intent.getStringExtra("accountId");
            this.e.b = intent.getBooleanExtra("havePhoneOrEmail", false);
        } else {
            AccountRes accountResJ = ao7.a.a.j(this);
            if (accountResJ != null) {
                jl7 jl7Var2 = this.e;
                jl7Var2.f = accountResJ.username;
                jl7Var2.b = (TextUtils.isEmpty(accountResJ.email) && TextUtils.isEmpty(accountResJ.phone)) ? false : true;
            }
        }
        this.e.e();
        getActionBar().setTitle(getString(R.string.xn_bind_third));
        getActionBar().setDisplayHomeAsUpEnabled(true);
        if (LoginThird.isFbSupport(this) || !pa1.g(getApplicationContext())) {
            findViewById(R.id.facebookL).setOnClickListener(new a());
        } else {
            findViewById(R.id.facebookL).setVisibility(8);
        }
        findViewById(R.id.googleL).setOnClickListener(new a());
        findViewById(R.id.vkL).setOnClickListener(new a());
        findViewById(R.id.lineL).setOnClickListener(new a());
        ((OverBoundNestedScrollView) findViewById(R.id.scrollView)).setUpOverScroll();
        xj.U(this).F1();
        B0(intent);
    }

    @Override
    public void onNewIntent(Intent intent) {
        B0(intent);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            if (this.e.g) {
                setResult(-1);
            }
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.g = bundle.getInt("tpThirdType");
        this.f = bundle.getString("tpThirdToken");
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("tpThirdType", this.g);
        bundle.putString("tpThirdToken", this.f);
    }
}
